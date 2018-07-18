#include "MKL25Z4.h"
#include "usb.h"
#include <stdint.h>
#include <stdlib.h>

static void endpoint_1_handler(uint8_t ep, uint8_t token, struct tEndpoint * endpoint);

//volatile unsigned millitime = 0;

int main(void) {

    unsigned start_time = 0;
    uint8_t count = 0;
    uint8_t c;

		static uint8_t endpoint_1_rx_buf0[ENDPOINT_BUF_SIZE];
		static uint8_t endpoint_1_rx_buf1[ENDPOINT_BUF_SIZE];
		static uint8_t endpoint_1_tx_buf0[ENDPOINT_BUF_SIZE];
		static uint8_t endpoint_1_tx_buf1[ENDPOINT_BUF_SIZE];
	
		static struct tEndpoint endpoint1 =
		{
				.rx_even = endpoint_1_rx_buf0, 
				.rx_odd = endpoint_1_rx_buf1, 
				.tx_even = endpoint_1_tx_buf0, 
				.tx_odd = endpoint_1_tx_buf1, 
				.tx_buffer = EVEN, 
				.tx_data1 = DATA0,
				.data = NULL,
				.Handler = endpoint_1_handler
		};
		
	  SystemCoreClockUpdate();
	
	  if(SystemCoreClock == 48000000){
			//SysTick_Config(48000000/1000);
			USB_Init();
			USB_SetEndpoint(1, &endpoint1);
		}
		
		SIM_SCGC5 |= (SIM_SCGC5_PORTB_MASK);
		PORTB->PCR[19] = PORT_PCR_MUX(1);
		FPTB->PDDR |= (1UL << 19);
    
    while(1) {

    }
}

//void SysTick_Handler(void) {
//    ++millitime;
//}

static void endpoint_1_handler(uint8_t ep, uint8_t token, struct tEndpoint * endpoint) {
	
		struct tBufferDescriptor * buf_desc = (struct tBufferDescriptor *)endpoint->data;
    uint8_t size;

    switch (token) {
			case TOK_IN:
					
					break;

			case TOK_OUT:
					size = buf_desc->Fields >> 16;
					
					if (size == 64) {
							if(((uint8_t*)buf_desc->BufferAddress)[0] == 0x00)
							{
									if(((uint8_t*)buf_desc->BufferAddress)[1] == 0x01)
									{
										FPTB->PCOR = (1UL << 19);
									}
									else
									{
										FPTB->PSOR = (1UL << 19);
									}
							}
					}
			break;
    }
}