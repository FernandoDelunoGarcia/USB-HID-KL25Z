#line 1 "usb_descriptors.c"
#line 1 "usb_descriptor.h"
 




#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 7 "usb_descriptor.h"

__packed struct tConfigurationDescriptor{
	uint8_t bLength;
	uint8_t bDescriptorType;
	uint16_t wTotalLength;
	uint8_t bNumInterfaces;
	uint8_t bConfigurationValues;
	uint8_t iConfiguration;
	uint8_t bmAttributes;
	uint8_t bMaxPower;
};

__packed struct tInterfaceDescriptor{
	uint8_t bLength;
	uint8_t bDescriptorType;
	uint8_t bInterfaceNumber;
	uint8_t bAlternateSetting;
	uint8_t bNumEndpoints;
	uint8_t bInterfaceClass;
	uint8_t bInterfaceSubClass;
	uint8_t bInterfaceProtocol;
	uint8_t iInterface;
};

__packed struct tHIDDescriptor{
		uint8_t bLength;
    uint8_t bDescriptorType;
    uint16_t bcdHid;
    uint8_t bCountryCode;
    uint8_t bNumDescriptors;
    uint8_t bDescriptorType1;
    uint16_t wDescriptorLength1;
};

__packed struct tEndpointDescriptor{
		uint8_t bLength;
    uint8_t bDescriptorType;
    uint8_t bEndpointAddress;
    uint8_t bmAttributes;
    uint16_t wMaxPacketSize;
    uint8_t bInterval;
};

__packed struct tDeviceDescriptor{
	uint8_t bLength;
	uint8_t bDescriptorType;
	uint16_t bcdUSB;
	uint8_t bDeviceClass;
	uint8_t bDeviceSubClass;
	uint8_t bDeviceProtocol;
	uint8_t bMaxPacketSize0;
	uint16_t idVendor;
	uint16_t idProduct;
	uint16_t bcdDevice;
	uint8_t iManufacturer;
	uint8_t iProduct;
	uint8_t iSerialNumber;
	uint8_t bNumConfigurations;
};

__packed struct tConfiguration{
	__packed struct tConfigurationDescriptor ConfigurationDescriptor;
	__packed struct tInterfaceDescriptor InterfaceDescriptor;
	__packed struct tHIDDescriptor HIDDescriptor;
	__packed struct tEndpointDescriptor EndpointDescriptor1_OUT;
};
	
struct tDescriptorEntry{
    uint16_t wValue;
    uint16_t wIndex;
    void * descriptor;
    uint16_t size;
};




extern const struct tDeviceDescriptor DeviceDescriptor;
extern const struct tConfiguration Configuration;
extern const struct tDescriptorEntry StringDescriptorTable[6];
extern const uint8_t ReportDescriptor[19];

#line 2 "usb_descriptors.c"





static const uint8_t language_descriptor[4] = {
    0x04, 
    0x03, 
    0x09, 
    0x04, 
};

static const uint8_t StringManufacturer[12] = {
    12, 
    0x03, 
    ('T'),0x00,
		('E'),0x00,
		('S'),0x00,
		('T'),0x00,
		('E'),0x00
};

static const uint8_t StringProduct[20] = {
    20, 
    0x03, 
		('K'),0x00,
		('L'),0x00,
		('2'),0x00,
		('5'),0x00,
		('Z'),0x00,
		(' '),0x00,
		('L'),0x00,
		('E'),0x00,
		('D'),0x00
};

static const uint8_t StringSerialNumber[18] = {
    18, 
    0x03, 
		('0'),0x00,
		('0'),0x00,
		('0'),0x00,
		('0'),0x00,
		('0'),0x00,
		('0'),0x00,
		('0'),0x00
};

static const uint8_t StringInterface[16] = {
    16, 
    0x03, 
    ('H'),0x00,
		('I'),0x00,
		('D'),0x00,
		(' '),0x00,
		('L'),0x00,
		('E'),0x00,
		('D'),0x00
};

static const uint8_t StringConfiguration[16] = {
    16, 
    0x03, 
		('D'),0x00,
		('E'),0x00,
		('F'),0x00,
		('A'),0x00,
		('U'),0x00,
		('L'),0x00,
		('T'),0x00
};

const uint8_t ReportDescriptor[19] = {
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
			.bDescriptorType = 2, 
			.wTotalLength = sizeof(struct tConfiguration), 
			.bNumInterfaces = 1,
			.bConfigurationValues = 1,
			.iConfiguration = 5, 
			.bmAttributes = 0x80,
			.bMaxPower = 0xfa,
	},
	.InterfaceDescriptor = 
	{
			.bLength = 9,
			.bDescriptorType = 4, 
			.bInterfaceNumber = 0,
			.bAlternateSetting = 0,
			.bNumEndpoints = 1,
			.bInterfaceClass = 3, 
			.bInterfaceSubClass = 0,
			.bInterfaceProtocol = 0,
		.iInterface = 4	
	},
	.HIDDescriptor = {
	  .bLength = 9,
    .bDescriptorType = 33, 
    .bcdHid = 0x0110,			 
	  .bCountryCode = 0,
    .bNumDescriptors = 1,
    .bDescriptorType1 = 34,
    .wDescriptorLength1 = sizeof(ReportDescriptor)
	},
	.EndpointDescriptor1_OUT = {
		.bLength = 7,
    .bDescriptorType = 5,
	  .bEndpointAddress = 0x01, 
		.bmAttributes = 3, 
    .wMaxPacketSize = 64, 
	  .bInterval = 0x01
	}
};

const struct tDescriptorEntry StringDescriptorTable[6] ={
	{0x0300, 0x0000, (void*)&language_descriptor, sizeof(language_descriptor)},
	{0x0301, 0x0409, (void*)&StringManufacturer, sizeof(StringManufacturer)},
	{0x0302, 0x0409, (void*)&StringProduct, sizeof(StringProduct)},
	{0x0303, 0x0409, (void*)&StringSerialNumber, sizeof(StringSerialNumber)},
  {0x0304, 0x0409, (void*)&StringInterface, sizeof(StringInterface)},
  {0x0305, 0x0409, (void*)&StringConfiguration, sizeof(StringConfiguration)}
};
