#include "usb_descriptor.h"

#define ALIGN1                        __attribute((aligned(1)))

#define CHAR_UTF16(CHAR) (CHAR),0x00

static const uint8_t language_descriptor[4] = {
    0x04, // bLength
    0x03, // bDescriptorType
    0x09, // English
    0x04, // US
};

static const uint8_t StringManufacturer[12] = {
    12, // bLength
    0x03, // bDescriptorType
    CHAR_UTF16('T'),
		CHAR_UTF16('E'),
		CHAR_UTF16('S'),
		CHAR_UTF16('T'),
		CHAR_UTF16('E')
};

static const uint8_t StringProduct[20] = {
    20, // bLength
    0x03, // bDescriptorType
		CHAR_UTF16('K'),
		CHAR_UTF16('L'),
		CHAR_UTF16('2'),
		CHAR_UTF16('5'),
		CHAR_UTF16('Z'),
		CHAR_UTF16(' '),
		CHAR_UTF16('L'),
		CHAR_UTF16('E'),
		CHAR_UTF16('D')
};

static const uint8_t StringSerialNumber[18] = {
    18, // bLength
    0x03, // bDescriptorType
		CHAR_UTF16('0'),
		CHAR_UTF16('0'),
		CHAR_UTF16('0'),
		CHAR_UTF16('0'),
		CHAR_UTF16('0'),
		CHAR_UTF16('0'),
		CHAR_UTF16('0')
};

static const uint8_t StringInterface[16] = {
    16, // bLength
    0x03, // bDescriptorType
    CHAR_UTF16('H'),
		CHAR_UTF16('I'),
		CHAR_UTF16('D'),
		CHAR_UTF16(' '),
		CHAR_UTF16('L'),
		CHAR_UTF16('E'),
		CHAR_UTF16('D')
};

static const uint8_t StringConfiguration[16] = {
    16, // bLength
    0x03, // bDescriptorType
		CHAR_UTF16('D'),
		CHAR_UTF16('E'),
		CHAR_UTF16('F'),
		CHAR_UTF16('A'),
		CHAR_UTF16('U'),
		CHAR_UTF16('L'),
		CHAR_UTF16('T')
};

const uint8_t ReportDescriptor[REPORT_SIZE] = {
    0x05, 0x08,                    
	  0x09, 0x00,
    0xA1, 0x01,                    
    0x75, 0x08,                    
    0x95, 0x40,                    
    0x25, 0x01,                    
    0x15, 0x00,                    
    0x09, 0x00,                    
    0x91, 0x02,                    
    0xc0                           
};
	
const struct tDeviceDescriptor DeviceDescriptor =
{
	.bLength = 18,
	.bDescriptorType = 1,
	.bcdUSB = 0x0101,
	.bDeviceClass = 0,
	.bDeviceSubClass = 0,
	.bDeviceProtocol = 0,
	.bMaxPacketSize0 = 64,
	.idVendor = 0xabcd,
	.idProduct = 0x1234,
	.bcdDevice = 0,
	.iManufacturer = 1,
	.iProduct = 2,
	.iSerialNumber = 3,
	.bNumConfigurations = 1
};


const struct tConfiguration Configuration = {
	.ConfigurationDescriptor =
	{
			.bLength = 9,
			.bDescriptorType = 2, //Configuration
			.wTotalLength = sizeof(struct tConfiguration), //
			.bNumInterfaces = 1,
			.bConfigurationValues = 1,
			.iConfiguration = 5, //StringDescriptor: Default Configuration
			.bmAttributes = 0x80,
			.bMaxPower = 0xfa,
	},
	.InterfaceDescriptor = 
	{
			.bLength = 9,
			.bDescriptorType = 4, //Interface
			.bInterfaceNumber = 0,
			.bAlternateSetting = 0,
			.bNumEndpoints = 1,
			.bInterfaceClass = 3, //HID
			.bInterfaceSubClass = 0,
			.bInterfaceProtocol = 0,
		.iInterface = 4	//String Descriptor: Interface
	},
	.HIDDescriptor = {
	  .bLength = 9,
    .bDescriptorType = 33, //HID
    .bcdHid = 0x0110,			 //HID class spec version
	  .bCountryCode = 0,
    .bNumDescriptors = 1,
    .bDescriptorType1 = 34,//REPORT
    .wDescriptorLength1 = sizeof(ReportDescriptor)
	},
	.EndpointDescriptor1_OUT = {
		.bLength = 7,
    .bDescriptorType = 5,
	  .bEndpointAddress = 0x01, //Endpoint 1 - OUT
		.bmAttributes = 3, //Interrupt. Data endpoint.
    .wMaxPacketSize = 64, //64
	  .bInterval = 0x01
	}
};

const struct tDescriptorEntry StringDescriptorTable[STRING_DESCRIPTORS] ={
	{0x0300, 0x0000, (void*)&language_descriptor, sizeof(language_descriptor)},
	{0x0301, 0x0409, (void*)&StringManufacturer, sizeof(StringManufacturer)},
	{0x0302, 0x0409, (void*)&StringProduct, sizeof(StringProduct)},
	{0x0303, 0x0409, (void*)&StringSerialNumber, sizeof(StringSerialNumber)},
  {0x0304, 0x0409, (void*)&StringInterface, sizeof(StringInterface)},
  {0x0305, 0x0409, (void*)&StringConfiguration, sizeof(StringConfiguration)}
};