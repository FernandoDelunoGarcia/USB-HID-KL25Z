#ifndef BDT_H
#define BDT_H

#include <stdint.h>
#include "Endpoint.h"

struct tBufferDescriptor{
    uint32_t Fields;
    void * BufferAddress;
};


#define BD_BC_SHIFT                     16
#define BD_OWN_MASK                     (1 << 7)
#define BD_DATA1_MASK                   (1 << 6)
#define BD_KEEP_MASK                    (1 << 5)
#define BD_NINC_MASK                    (1 << 4)
#define BD_DTS_MASK                     (1 << 3)
#define BD_STALL_MASK                   (1 << 2)

#define BD_GET_TOK(desc)                ((desc >> 2) & 0xF)
#define BD_OWNED_BY_USB(count, data1)   ((count << BD_BC_SHIFT) | BD_OWN_MASK | (data1 ? BD_DATA1_MASK : 0x00) | BD_DTS_MASK)


static inline uint16_t BDT_GetEntry(uint8_t endpoint, enum EpBufferDir dir, enum EpBufferDst dst)
{
		return (uint16_t)((endpoint << 2) | ((uint8_t)dir << 1) | (uint8_t)dst);
}

#endif BDT_H