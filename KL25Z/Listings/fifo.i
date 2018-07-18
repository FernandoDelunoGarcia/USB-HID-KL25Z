#line 1 "fifo.c"





 

#line 1 "fifo.h"





 




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






 
#line 12 "fifo.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 13 "fifo.h"

typedef struct {
    volatile unsigned read_index;
    volatile unsigned write_index;
    volatile unsigned capacity;
    volatile uint8_t* buffer;
} fifo_t;


void fifo_init(fifo_t* self, uint8_t* buffer, unsigned capacity);
unsigned fifo_get_size(fifo_t* self);
_Bool fifo_push(fifo_t* self, uint8_t byte);
_Bool fifo_pop(fifo_t* self, uint8_t* byte);




#line 9 "fifo.c"

void fifo_init(fifo_t* self, uint8_t* buffer, unsigned capacity) {
    self->capacity = capacity;
    self->buffer = buffer;
    self->write_index = 0;
    self->read_index = 0;
}

unsigned fifo_get_size(fifo_t* self) {
    int s = self->write_index - self->read_index;
    if (s < 0) {
        s += self->capacity;
    }
    return s;
}

_Bool fifo_push(fifo_t* self, uint8_t byte) {
    if (fifo_get_size(self) < self->capacity) {
        unsigned i = self->write_index;
        self->buffer[i++] = byte;
        if (i == self->capacity) {
            i = 0;
        }
        self->write_index = i;
        return 1;
    }
    return 0;
}

_Bool fifo_pop(fifo_t* self, uint8_t* byte) {
    if (fifo_get_size(self)) {
        unsigned i = self->read_index;
        *byte = self->buffer[i++];
        if (i == self->capacity) {
            i = 0;
        }
        self->read_index = i;
        return 1;
    }
    return 0;
}
