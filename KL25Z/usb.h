#ifndef _USB_H_
#define _USB_H_


#include "BDT.h"
#include "usb_descriptor.h"

#define TOK_OUT                         0x1
#define TOK_IN                          0x9
#define TOK_SOF                         0x5
#define TOK_SETUP                       0xd


#define ENDPOINTS               				2
#define ENDPOINT_BUF_SIZE               64

struct tSetup{
    union {
        struct {
            uint8_t bmRequestType;
            uint8_t bRequest;
        }Fields;
        uint16_t wRequestAndType;
    }Request;
    uint16_t wValue;
    uint16_t wIndex;
    uint16_t wLength;
};


void USB_Init(void);
void USB_SetEndpoint(uint8_t ep, struct tEndpoint * endpoint);


#endif

