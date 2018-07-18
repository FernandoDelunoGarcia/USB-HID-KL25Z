#ifndef ENDPOINT_H
#define ENDPOINT_H

#include <stdint.h>

enum EpBufferDir{
	RX,
  TX
};

enum EpBufferDst{
	EVEN,
	ODD
};

enum EpBufferData{
	DATA0,
	DATA1
};

struct tEndpoint{
	
		uint8_t * rx_even;
		uint8_t * rx_odd;
		uint8_t * tx_even;
		uint8_t * tx_odd;
	
    enum EpBufferDst tx_buffer;
    enum EpBufferData tx_data1;
	
    uint8_t * remaining_tx_data_ptr;
    uint16_t remaining_tx_data_length;
	
	  void * data;
		void (*Handler)(uint8_t ep, uint8_t token, struct tEndpoint * context);
};

#endif ENDPOINT_H
