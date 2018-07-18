/**
 * @file
 * Implementation of an USB HID device on the KL25
 *
 * This implements a full duplex stream over HID protocol,
 * it is intended to work on Windows without the user needing
 * to interact with any driver installation, it should load
 * and use the existing generic HID driver.
 *
 * The IN and OUT streams are tunneled over two 63 byte sized
 * HID reports, each consisting of 1 byte length and up to 62
 * byte data. The application interface is just two FIFO pipes
 * for RX and TX.
 *
 * Additionally a special message packet of 62 byte can be
 * transmitted outside the stream and with higher priority,
 * this can be used for arbitrary control and status purposes.
 *
 * Created on: 02.11.2016
 *     Author: Bernd Kreuss
 *
 * Largely inspired by the initial work of Kevin Cuzner:
 *     http://kevincuzner.com/2014/12/12/teensy-3-1-bare-metal-writing-a-usb-driver/
 *     https://github.com/kcuzner/teensy-oscilloscope
 */

#include <stddef.h>
#include <stdbool.h>
#include <MKL25Z4.h>
#include <string.h>
#include "usb.h"
#include "BDT.h"

#define ENDPOINT_BUF_SIZE               64
#define ENDPOINT_DESCRIPTORS(NUM)				((NUM)*4)

#define BD_NUM													ENDPOINT_DESCRIPTORS(ENDPOINTS)

#define WEAK                            __attribute((weak))
#define ALIGN512                        __attribute((aligned(512)))



static uint8_t endpoint_0_rx_buf0[ENDPOINT_BUF_SIZE];
static uint8_t endpoint_0_rx_buf1[ENDPOINT_BUF_SIZE];



static void endpoint_0_handler(uint8_t ep, uint8_t token, struct tEndpoint * endpoint);

static struct tEndpoint endpoint0 =
{
		.rx_even = endpoint_0_rx_buf0, 
		.rx_odd = endpoint_0_rx_buf1, 
		.tx_even = NULL, 
		.tx_odd = NULL, 
		.tx_buffer = EVEN, 
		.tx_data1 = DATA0,
		.data = NULL,
		.Handler = endpoint_0_handler
};
	
static struct tEndpoint * endpoints[ENDPOINTS] =
{
	&endpoint0,
	NULL
};

/**
 * Buffer descriptor table, aligned to a 512-byte boundary
 */
ALIGN512 static struct tBufferDescriptor BufferDescriptorTable[BD_NUM];

	
static void init_buffer_descriptor(uint8_t ep, uint8_t buffer_size);
	
void USB_SetEndpoint(uint8_t ep, struct tEndpoint * endpoint)
{
	if((ep > 0) && (ep < ENDPOINTS)){
		endpoints[ep] = endpoint;
		init_buffer_descriptor(ep, ENDPOINT_BUF_SIZE);
	}
}


static void init_buffer_descriptor(uint8_t ep, uint8_t buffer_size) {
    
		struct tEndpoint * endpoint = endpoints[ep];
	
		endpoint->tx_buffer = EVEN;
    endpoint->tx_data1 = DATA0;
	
    BufferDescriptorTable[BDT_GetEntry(ep, RX, EVEN)].Fields = BD_OWNED_BY_USB(buffer_size, DATA0);
    BufferDescriptorTable[BDT_GetEntry(ep, RX, EVEN)].BufferAddress = (void *)endpoint->rx_even;
    BufferDescriptorTable[BDT_GetEntry(ep, RX, ODD)].Fields = BD_OWNED_BY_USB(buffer_size, DATA1);
    BufferDescriptorTable[BDT_GetEntry(ep, RX, ODD)].BufferAddress = (void *)endpoint->rx_odd;
    BufferDescriptorTable[BDT_GetEntry(ep, TX, EVEN)].Fields = 0;
    BufferDescriptorTable[BDT_GetEntry(ep, TX, ODD)].Fields = 0;
    
	
		USB0->ENDPOINT[ep].ENDPT = USB_ENDPT_EPRXEN_MASK | USB_ENDPT_EPTXEN_MASK | USB_ENDPT_EPHSHK_MASK;
}

void USB_Init(void) {
    uint32_t i;

    //reset the buffer descriptors
    for (i = 0; i < BD_NUM; i++) {
        BufferDescriptorTable[i].Fields = 0;
        BufferDescriptorTable[i].BufferAddress = 0;
    }

    //1: Select clock source
    SIM->SOPT2 |= SIM_SOPT2_USBSRC_MASK | SIM_SOPT2_PLLFLLSEL_MASK;

    //2: Gate USB clock
    SIM->SCGC4 |= SIM_SCGC4_USBOTG_MASK;

    //3: Software USB module reset
    USB0->USBTRC0 |= USB_USBTRC0_USBRESET_MASK;
    while (USB0->USBTRC0 & USB_USBTRC0_USBRESET_MASK);

    /*BDTPAGEx provides the base address where the current Buffer Descriptor Table (BDT) resides in system memory*/
    USB0->BDTPAGE1 = ((uint32_t) BufferDescriptorTable) >> 8;  //bits 15-9
    USB0->BDTPAGE2 = ((uint32_t) BufferDescriptorTable) >> 16; //bits 23-16
    USB0->BDTPAGE3 = ((uint32_t) BufferDescriptorTable) >> 24; //bits 31-24

    //5: Clear all ISR flags and enable weak pull downs
    USB0->ISTAT = 0xFF;
    USB0->ERRSTAT = 0xFF;
    USB0->OTGISTAT = 0xFF;
    USB0->USBTRC0 |= 0x40; //a hint was given that this is an undocumented interrupt bit

    
		/*Setting this bit causes the SIE to reset all of its ODD bits to the BDTs. Therefore, setting this bit
		 *resets much of the logic in the SIE.
		 */
    USB0->CTL = USB_CTL_USBENSOFEN_MASK;
    USB0->USBCTRL = 0;

		//6: Enable USB reset interrupt
    USB0->INTEN |= USB_INTEN_USBRSTEN_MASK;
    NVIC_EnableIRQ(USB0_IRQn);

    //7: Enable pull-up resistor on D+ (Full speed, 12Mbit/s)
    USB0->CONTROL = USB_CONTROL_DPPULLUPNONOTG_MASK;
}

void endpoint_prepare_next_tx(uint8_t endpoint) {
    
	  uint32_t tx_size = 0;
		struct tEndpoint * state = endpoints[endpoint];
		struct tBufferDescriptor * bd = &BufferDescriptorTable[BDT_GetEntry(endpoint, TX, state->tx_buffer)];
    
		
		// transmit 1st chunk
		tx_size = state->remaining_tx_data_length;
		if (tx_size > ENDPOINT_BUF_SIZE)
				tx_size = ENDPOINT_BUF_SIZE;
		
		/**/
		bd->BufferAddress = state->remaining_tx_data_ptr;
		bd->Fields = BD_OWNED_BY_USB(tx_size, state->tx_data1);
		
		state->remaining_tx_data_ptr += tx_size; //move the pointer down
		state->remaining_tx_data_length -= tx_size; //move the size down
		
    /**/
		if(state->tx_buffer == EVEN){
			state->tx_buffer = ODD;
		}
		else{
			state->tx_buffer = EVEN;
		}
    
		if(state->tx_data1 == DATA0){
			state->tx_data1 = DATA1;
		}
		else{
			state->tx_data1 = DATA0;
		}
}

void bd_rx_release(struct tBufferDescriptor * buf_desc) {
    uint8_t data1 = buf_desc->Fields & BD_DATA1_MASK ? 1 : 0;
    buf_desc->Fields = BD_OWNED_BY_USB(ENDPOINT_BUF_SIZE, data1);
}

static bool endpoint_have_free_tx_descriptor(uint8_t endpoint) {
		struct tEndpoint * state = endpoints[endpoint];
	
    uint32_t desc = BufferDescriptorTable[BDT_GetEntry(endpoint, TX, state->tx_buffer)].Fields;
    return (desc & BD_OWN_MASK) == 0;
}


static void endpoint_0_handler(uint8_t ep, uint8_t token, struct tEndpoint * endpoint) {
    static struct tSetup setup;
	  struct tBufferDescriptor * buf_desc = (struct tBufferDescriptor *)endpoint->data;
    bool must_stall = false;

    switch (token) {
				case TOK_SETUP:

						memcpy((void *)&setup, buf_desc->BufferAddress, sizeof(struct tSetup));  

						BufferDescriptorTable[BDT_GetEntry(ep, TX, EVEN)].Fields = 0;
						BufferDescriptorTable[BDT_GetEntry(ep, TX, ODD)].Fields = 0;
						endpoint->tx_data1 = DATA1;

						switch (setup.Request.wRequestAndType) {

							case 0x0500: //set address (wait for IN packet)
									break;

							case 0x0900: //set configuration
									//we only have one configuration at this time
									break;

							case 0x0680: //get descriptor
							case 0x0681:
									
									if((setup.wValue & 0x0300) == 0x0300){ //StringDescriptor
										uint8_t idx = setup.wValue & 0x00FF;
										if(idx < STRING_DESCRIPTORS){
													endpoint->remaining_tx_data_ptr = (uint8_t*)StringDescriptorTable[idx].descriptor;
													endpoint->remaining_tx_data_length = StringDescriptorTable[idx].size;
													must_stall = false;
										}
									}
									else if (setup.wValue == 0x0100){ //DeviceDescriptor
										endpoint->remaining_tx_data_ptr = (uint8_t*)&DeviceDescriptor;
										endpoint->remaining_tx_data_length = sizeof(DeviceDescriptor);
										must_stall = false;
									}
									else if (setup.wValue == 0x0200){ //Configuration
										endpoint->remaining_tx_data_ptr = (uint8_t*)&Configuration;
										endpoint->remaining_tx_data_length = sizeof(Configuration);
										must_stall = false;
									}
									else if (setup.wValue == 0x2200){ //Report
										endpoint->remaining_tx_data_ptr = (uint8_t*)ReportDescriptor;
										endpoint->remaining_tx_data_length = sizeof(ReportDescriptor);
										must_stall = false;
									}
									else{
										must_stall = true;
									}

									break;

							default:
									must_stall = true;
						}

						if (must_stall) {
								USB0->ENDPOINT[0].ENDPT = USB_ENDPT_EPSTALL_MASK | USB_ENDPT_EPRXEN_MASK | USB_ENDPT_EPTXEN_MASK | USB_ENDPT_EPHSHK_MASK;

						} else {
								/* truncate the data length*/
								if (endpoint->remaining_tx_data_length > setup.wLength) {
										endpoint->remaining_tx_data_length = setup.wLength;
								}

								/*prepare two buffers with the answer*/
								endpoint_prepare_next_tx(0);
								
								if(endpoint->remaining_tx_data_length > 0){
									endpoint_prepare_next_tx(0);
								}
						}

						// must unfreeze after every setup packet
						USB0->CTL = USB_CTL_USBENSOFEN_MASK;
						break;

				case TOK_IN:
						// continue sending any pending transmit data
						if (endpoint->remaining_tx_data_length > 0) {
								endpoint_prepare_next_tx(0);
						}

						// delayed setting of address can happen here
						if (setup.Request.wRequestAndType == 0x0500) {
								USB0->ADDR = setup.wValue;
						}
						break;

				case TOK_OUT:
						break;

				case TOK_SOF:
						break;
    }
}

void USB0_IRQHandler(void) {
    uint8_t status;
    uint8_t stat, endpoint;
    uint8_t tx, odd;

		/*After an interrupt bit has been set it may only be cleared by writing a one to the respective interrupt bit.*/
    status = USB0->ISTAT;

    /*
     *  This bit is set when the USB Module has decoded a valid USB reset. This informs the processor that it
		 *	should write 0x00 into the address register and enable endpoint 0. USBRST is set after a USB reset has
		 *	been detected for 2.5 microseconds. It is not asserted again until the USB reset condition has been
		 *	removed and then reasserted.
     */
    if (status & USB_ISTAT_USBRST_MASK) {

        /*Setting this bit to 1 resets all the BDT ODD ping/pong fields to 0, which then specifies the EVEN BDT bank.*/
        USB0->CTL |= USB_CTL_ODDRST_MASK;
			
			  /*enable endpoint 0*/
        init_buffer_descriptor(0, ENDPOINT_BUF_SIZE);

			  /*write 0x00 into the address register*/
			  /*Holds the unique USB address that the USB module decodes when in Peripheral mode (HOSTMODEEN=0).*/
        USB0->ADDR = 0;
			
        //clear all interrupts...this is a reset
        USB0->ERRSTAT = 0xff;
        USB0->ISTAT = 0xff;

        
        //all necessary interrupts are now active
        USB0->ERREN = 0xFF;
        USB0->INTEN = USB_INTEN_USBRSTEN_MASK | USB_INTEN_ERROREN_MASK
            | USB_INTEN_SOFTOKEN_MASK | USB_INTEN_TOKDNEEN_MASK
            | USB_INTEN_SLEEPEN_MASK | USB_INTEN_STALLEN_MASK;
        return;
    }

    /*
     * This bit is set when any of the error conditions within Error Interrupt Status (ERRSTAT) register occur. The
		 * processor must then read the ERRSTAT register to determine the source of the error.
     */
    if (status & USB_ISTAT_ERROR_MASK) {
        uint8_t src = USB0->ERRSTAT;
        USB0->ERRSTAT = src;
        USB0->ISTAT = USB_ISTAT_ERROR_MASK;
    }

    /*
     * This bit is set when the USB Module receives a Start Of Frame (SOF) token.
     */
    if (status & USB_ISTAT_SOFTOK_MASK) {
        USB0->ISTAT = USB_ISTAT_SOFTOK_MASK;
    }

    /*This bit is set when the current token being processed has completed.*/
    if (status & USB_ISTAT_TOKDNE_MASK) {
        /*The processor must immediately read the STATUS (STAT) register to determine the EndPoint and BD used for this token*/
        stat = USB0->STAT;
        endpoint = stat >> 4;
        tx = (stat & USB_STAT_TX_MASK) >> USB_STAT_TX_SHIFT;
        odd = (stat & USB_STAT_ODD_MASK) >> USB_STAT_ODD_SHIFT;

        //determine which buffer descriptor we are looking at here
        struct tBufferDescriptor * BD = &BufferDescriptorTable[BDT_GetEntry(endpoint, tx, odd)];

        // determine which token has been processed
        uint8_t token = BD_GET_TOK(BD->Fields);

				struct tEndpoint * ep = endpoints[endpoint];
			
				if(ep->Handler != NULL){
					ep->data = BD;
					ep->Handler(endpoint, token, ep);
				}
				
        if (!tx) {
            bd_rx_release(BD);
        }

				/*Clearing this bit (by writing a one) causes STAT to be cleared or the STAT holding register to be loaded into the STAT register*/
        USB0->ISTAT = USB_ISTAT_TOKDNE_MASK;
    }

    /* This bit is set when the USB Module detects a constant idle on the USB bus for 3 ms. 
		   The sleep timer is reset by activity on the USB bus.*/
    if (status & USB_ISTAT_SLEEP_MASK) {
        USB0->ISTAT = USB_ISTAT_SLEEP_MASK;
    }

    /*This bit is set when the USB Module detects a constant idle on the USB bus for 3 ms. The sleep timer is reset by activity on the USB bus.*/
    if (status & USB_ISTAT_STALL_MASK) {
        USB0->ISTAT = USB_ISTAT_STALL_MASK;
    }
}