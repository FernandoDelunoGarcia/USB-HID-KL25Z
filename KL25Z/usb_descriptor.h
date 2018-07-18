/* generated code, do not edit! */

#ifndef USB_DESCRIPTORS_H
#define USB_DESCRIPTORS_H

#include <stdint.h>

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

#define STRING_DESCRIPTORS 6
#define REPORT_SIZE 19

extern const struct tDeviceDescriptor DeviceDescriptor;
extern const struct tConfiguration Configuration;
extern const struct tDescriptorEntry StringDescriptorTable[STRING_DESCRIPTORS];
extern const uint8_t ReportDescriptor[REPORT_SIZE];

#endif