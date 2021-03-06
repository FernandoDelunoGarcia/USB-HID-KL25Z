#line 1 "RTE\\Device\\MKL25Z128xxx4\\system_MKL25Z4.c"





















































































 










 

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






 
#line 100 "RTE\\Device\\MKL25Z128xxx4\\system_MKL25Z4.c"
#line 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



















































































 








 




 

 




 





#line 112 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"


 

 





 




 

 


typedef enum IRQn {
   
  NotAvail_IRQn                = -128,              

   
  NonMaskableInt_IRQn          = -14,               
  HardFault_IRQn               = -13,               
  SVCall_IRQn                  = -5,                
  PendSV_IRQn                  = -2,                
  SysTick_IRQn                 = -1,                

   
  DMA0_IRQn                    = 0,                 
  DMA1_IRQn                    = 1,                 
  DMA2_IRQn                    = 2,                 
  DMA3_IRQn                    = 3,                 
  Reserved20_IRQn              = 4,                 
  FTFA_IRQn                    = 5,                 
  LVD_LVW_IRQn                 = 6,                 
  LLWU_IRQn                    = 7,                 
  I2C0_IRQn                    = 8,                 
  I2C1_IRQn                    = 9,                 
  SPI0_IRQn                    = 10,                
  SPI1_IRQn                    = 11,                
  UART0_IRQn                   = 12,                
  UART1_IRQn                   = 13,                
  UART2_IRQn                   = 14,                
  ADC0_IRQn                    = 15,                
  CMP0_IRQn                    = 16,                
  TPM0_IRQn                    = 17,                
  TPM1_IRQn                    = 18,                
  TPM2_IRQn                    = 19,                
  RTC_IRQn                     = 20,                
  RTC_Seconds_IRQn             = 21,                
  PIT_IRQn                     = 22,                
  Reserved39_IRQn              = 23,                
  USB0_IRQn                    = 24,                
  DAC0_IRQn                    = 25,                
  TSI0_IRQn                    = 26,                
  MCG_IRQn                     = 27,                
  LPTMR0_IRQn                  = 28,                
  Reserved45_IRQn              = 29,                
  PORTA_IRQn                   = 30,                
  PORTD_IRQn                   = 31                 
} IRQn_Type;



   




 




 







#line 1 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm0plus.h"
 




 
















 










#line 35 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm0plus.h"

















 




 



 

 









 







#line 112 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm0plus.h"

#line 1 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_compiler.h"
 




 
















 




#line 29 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_compiler.h"



 
#line 1 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_armcc.h"
 




 
















 









 













   
   


 
#line 82 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_armcc.h"


 



 





 
 






 
 





 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}






 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}






 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}






 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}






 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}






 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}






 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}






 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}






 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}






 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}






 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}


#line 318 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_armcc.h"


#line 356 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_armcc.h"



 


 



 




 






 







 






 








 










 










 











 








 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}









 









 








 




__attribute__((always_inline)) static __inline uint32_t __RBIT(uint32_t value)
{
  uint32_t result;
  int32_t s = (4   * 8) - 1;  

  result = value;                       
  for (value >>= 1U; value; value >>= 1U)
  {
    result <<= 1U;
    result |= value & 1U;
    s--;
  }
  result <<= s;                         
  return(result);
}








 



#line 712 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_armcc.h"

   


 



 

#line 794 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_armcc.h"
 


#line 35 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_compiler.h"




 
#line 220 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\cmsis_compiler.h"




#line 114 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm0plus.h"

















 
#line 158 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm0plus.h"

 






 
#line 174 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm0plus.h"

 




 











 



 






 



 
typedef union
{
  struct
  {
    uint32_t _reserved0:28;               
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;

 















 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;

 






 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:15;               
    uint32_t T:1;                         
    uint32_t _reserved1:3;                
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;

 





















 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t _reserved1:30;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 







 



 
typedef struct
{
  volatile uint32_t ISER[1U];                
        uint32_t RESERVED0[31U];
  volatile uint32_t ICER[1U];                
        uint32_t RSERVED1[31U];
  volatile uint32_t ISPR[1U];                
        uint32_t RESERVED2[31U];
  volatile uint32_t ICPR[1U];                
        uint32_t RESERVED3[31U];
        uint32_t RESERVED4[64U];
  volatile uint32_t IP[8U];                  
}  NVIC_Type;

 







 



 
typedef struct
{
  volatile const  uint32_t CPUID;                   
  volatile uint32_t ICSR;                    

  volatile uint32_t VTOR;                    



  volatile uint32_t AIRCR;                   
  volatile uint32_t SCR;                     
  volatile uint32_t CCR;                     
        uint32_t RESERVED1;
  volatile uint32_t SHP[2U];                 
  volatile uint32_t SHCSR;                   
} SCB_Type;

 















 




























 




 















 









 






 



 







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t LOAD;                    
  volatile uint32_t VAL;                     
  volatile const  uint32_t CALIB;                   
} SysTick_Type;

 












 



 



 









 

#line 598 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm0plus.h"








 
 







 






 







 


 







 

 














 









 


 



 





 


 
 
#line 692 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.0.1\\CMSIS\\Include\\core_cm0plus.h"
 












 
 










 
static __inline void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0U] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
  }
}









 
static __inline uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0U] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static __inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0U] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
    do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);
    do { __schedule_barrier(); __isb(0xF); __schedule_barrier(); } while (0U);
  }
}









 
static __inline uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0U] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static __inline void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0U] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
  }
}







 
static __inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[0U] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
  }
}










 
static __inline void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( (((uint32_t)(int32_t)(IRQn)) >> 2UL) )]  = ((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( (((uint32_t)(int32_t)(IRQn)) >> 2UL) )]  & ~(0xFFUL << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL))) |
       (((priority << (8U - 2)) & (uint32_t)0xFFUL) << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL)));
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( (((((uint32_t)(int32_t)(IRQn)) & 0x0FUL)-8UL) >> 2UL) )] = ((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( (((((uint32_t)(int32_t)(IRQn)) & 0x0FUL)-8UL) >> 2UL) )] & ~(0xFFUL << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL))) |
       (((priority << (8U - 2)) & (uint32_t)0xFFUL) << ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL)));
  }
}










 
static __inline uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[ ( (((uint32_t)(int32_t)(IRQn)) >> 2UL) )] >> ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL) ) & (uint32_t)0xFFUL) >> (8U - 2)));
  }
  else
  {
    return((uint32_t)(((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( (((((uint32_t)(int32_t)(IRQn)) & 0x0FUL)-8UL) >> 2UL) )] >> ( ((((uint32_t)(int32_t)(IRQn)) ) & 0x03UL) * 8UL) ) & (uint32_t)0xFFUL) >> (8U - 2)));
  }
}











 
static __inline void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
{

  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;



  vectors[(int32_t)IRQn + 16] = vector;
}









 
static __inline uint32_t __NVIC_GetVector(IRQn_Type IRQn)
{

  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;



  return vectors[(int32_t)IRQn + 16];

}





 
static __inline void NVIC_SystemReset(void)
{
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                          
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FAUL << 16U) |
                 (1UL << 2U));
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                           

  for(;;)                                                            
  {
    __nop();
  }
}

 


 





 








 
static __inline uint32_t SCB_GetFPUType(void)
{
    return 0U;            
}


 



 





 













 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);                                                    
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (uint32_t)(ticks - 1UL);                          
  __NVIC_SetPriority (SysTick_IRQn, (1UL << 2) - 1UL);  
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0UL;                                              
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2U) |
                   (1UL << 1U)   |
                   (1UL );                          
  return (0UL);                                                      
}



 










#line 199 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
#line 1 ".\\RTE\\Device\\MKL25Z128xxx4\\system_MKL25Z4.h"





















































































 










 








#line 107 ".\\RTE\\Device\\MKL25Z128xxx4\\system_MKL25Z4.h"









 

#line 126 ".\\RTE\\Device\\MKL25Z128xxx4\\system_MKL25Z4.h"



























 

 





 

 
 


 
                               
                          
                               
                          

#line 277 ".\\RTE\\Device\\MKL25Z128xxx4\\system_MKL25Z4.h"
   

   

   

   

 

 

 

 

 

 

 















 
extern uint32_t SystemCoreClock;







 
void SystemInit (void);







 
void SystemCoreClockUpdate (void);





#line 200 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 




 


  #pragma push
  #pragma anon_unions
#line 239 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



 




 

 
typedef struct {
  volatile uint32_t SC1[2];                             
  volatile uint32_t CFG1;                               
  volatile uint32_t CFG2;                               
  volatile const  uint32_t R[2];                               
  volatile uint32_t CV1;                                
  volatile uint32_t CV2;                                
  volatile uint32_t SC2;                                
  volatile uint32_t SC3;                                
  volatile uint32_t OFS;                                
  volatile uint32_t PG;                                 
  volatile uint32_t MG;                                 
  volatile uint32_t CLPD;                               
  volatile uint32_t CLPS;                               
  volatile uint32_t CLP4;                               
  volatile uint32_t CLP3;                               
  volatile uint32_t CLP2;                               
  volatile uint32_t CLP1;                               
  volatile uint32_t CLP0;                               
       uint8_t RESERVED_0[4];
  volatile uint32_t CLMD;                               
  volatile uint32_t CLMS;                               
  volatile uint32_t CLM4;                               
  volatile uint32_t CLM3;                               
  volatile uint32_t CLM2;                               
  volatile uint32_t CLM1;                               
  volatile uint32_t CLM0;                               
} ADC_Type, *ADC_MemMapPtr;



 




 


 
#line 317 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 
#line 349 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 370 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 387 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 




 




 
#line 431 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 452 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 




 




 




 




 




 




 




 




 




 




 




 




 




 




 




 







   


 
 

 


 

 

 




 




 


 
 
#line 595 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"

 





   




   




 




 

 
typedef struct {
  volatile uint8_t CR0;                                 
  volatile uint8_t CR1;                                 
  volatile uint8_t FPR;                                 
  volatile uint8_t SCR;                                 
  volatile uint8_t DACCR;                               
  volatile uint8_t MUXCR;                               
} CMP_Type, *CMP_MemMapPtr;



 




 


 
#line 646 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 
#line 670 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 703 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 
#line 733 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 746 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 759 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   


 
 

 


 

 

 




 




 


 
 
#line 796 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




   




 




 

 
typedef struct {
  struct {                                          
    volatile uint8_t DATL;                                
    volatile uint8_t DATH;                                
  } DAT[2];
       uint8_t RESERVED_0[28];
  volatile uint8_t SR;                                  
  volatile uint8_t C0;                                  
  volatile uint8_t C1;                                  
  volatile uint8_t C2;                                  
} DAC_Type, *DAC_MemMapPtr;



 




 


 
#line 848 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 




 




 
#line 882 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 911 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 924 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 933 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   


 
 

 


 

 

 




 




 


 
 
#line 972 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"

 





   




   




 




 

 
typedef struct {
       uint8_t RESERVED_0[256];
  struct {                                          
    volatile uint32_t SAR;                                
    volatile uint32_t DAR;                                
    union {                                           
      volatile uint32_t DSR_BCR;                            
      struct {                                          
             uint8_t RESERVED_0[3];
        volatile uint8_t DSR;                                 
      } DMA_DSR_ACCESS8BIT;
    };
    volatile uint32_t DCR;                                
  } DMA[4];
} DMA_Type, *DMA_MemMapPtr;



 




 


 
#line 1034 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 




 




 
#line 1088 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 1153 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   


 
 

 


 

 

 




 




 


 
 
#line 1204 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"

 








   




   




 




 

 
typedef struct {
  volatile uint8_t CHCFG[4];                            
} DMAMUX_Type, *DMAMUX_MemMapPtr;



 




 


 





   




 




 

 
#line 1277 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   


 
 

 


 

 




 




 


 
 





 




   




   




 




 

 
typedef struct {
  volatile uint32_t PDOR;                               
  volatile  uint32_t PSOR;                               
  volatile  uint32_t PCOR;                               
  volatile  uint32_t PTOR;                               
  volatile const  uint32_t PDIR;                               
  volatile uint32_t PDDR;                               
} FGPIO_Type, *FGPIO_MemMapPtr;



 




 


 
#line 1360 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 




 




 




 




 




 







   


 
 

 


 

 


 

 


 

 


 

 


 

 




 




 


 
 
#line 1460 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 1467 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 1474 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 1481 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 1488 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




   




 




 

 
typedef struct {
  volatile uint8_t FSTAT;                               
  volatile uint8_t FCNFG;                               
  volatile const  uint8_t FSEC;                                
  volatile const  uint8_t FOPT;                                
  volatile uint8_t FCCOB3;                              
  volatile uint8_t FCCOB2;                              
  volatile uint8_t FCCOB1;                              
  volatile uint8_t FCCOB0;                              
  volatile uint8_t FCCOB7;                              
  volatile uint8_t FCCOB6;                              
  volatile uint8_t FCCOB5;                              
  volatile uint8_t FCCOB4;                              
  volatile uint8_t FCCOBB;                              
  volatile uint8_t FCCOBA;                              
  volatile uint8_t FCCOB9;                              
  volatile uint8_t FCCOB8;                              
  volatile uint8_t FPROT3;                              
  volatile uint8_t FPROT2;                              
  volatile uint8_t FPROT1;                              
  volatile uint8_t FPROT0;                              
} FTFA_Type, *FTFA_MemMapPtr;



 




 


 
#line 1563 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 
#line 1599 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 1616 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 1633 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 




 




 




 




 




 




 




 




 




 




 




 




 




 




 




 







   


 
 

 


 

 

 




 




 


 
 
#line 1769 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




   




 




 

 
typedef struct {
  volatile uint32_t PDOR;                               
  volatile  uint32_t PSOR;                               
  volatile  uint32_t PCOR;                               
  volatile  uint32_t PTOR;                               
  volatile const  uint32_t PDIR;                               
  volatile uint32_t PDDR;                               
} GPIO_Type, *GPIO_MemMapPtr;



 




 


 
#line 1816 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 




 




 




 




 




 







   


 
 

 


 

 


 

 


 

 


 

 


 

 




 




 


 
 
#line 1916 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 1923 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 1930 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 1937 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 1944 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




   




 




 

 
typedef struct {
  volatile uint8_t A1;                                  
  volatile uint8_t F;                                   
  volatile uint8_t C1;                                  
  volatile uint8_t S;                                   
  volatile uint8_t D;                                   
  volatile uint8_t C2;                                  
  volatile uint8_t FLT;                                 
  volatile uint8_t RA;                                  
  volatile uint8_t SMB;                                 
  volatile uint8_t A2;                                  
  volatile uint8_t SLTH;                                
  volatile uint8_t SLTL;                                
} I2C_Type, *I2C_MemMapPtr;



 




 


 
#line 2003 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 




 
#line 2032 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2065 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2098 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 
#line 2128 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2145 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 
#line 2183 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 




 







   


 
 

 


 

 


 

 

 




 




 


 
 
#line 2246 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2259 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




   




 




 

 
typedef struct {
  volatile uint8_t PE1;                                 
  volatile uint8_t PE2;                                 
  volatile uint8_t PE3;                                 
  volatile uint8_t PE4;                                 
  volatile uint8_t ME;                                  
  volatile uint8_t F1;                                  
  volatile uint8_t F2;                                  
  volatile const  uint8_t F3;                                  
  volatile uint8_t FILT1;                               
  volatile uint8_t FILT2;                               
} LLWU_Type, *LLWU_MemMapPtr;



 




 


 
#line 2314 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 
#line 2346 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2363 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2380 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2397 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2430 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2463 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2496 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2529 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2542 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2555 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   


 
 

 


 

 

 




 




 


 
 
#line 2596 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




   




 




 

 
typedef struct {
  volatile uint32_t CSR;                                
  volatile uint32_t PSR;                                
  volatile uint32_t CMR;                                
  volatile uint32_t CNR;                                
} LPTMR_Type, *LPTMR_MemMapPtr;



 




 


 







   




 




 

 
#line 2683 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2696 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 







   


 
 

 


 

 

 




 




 


 
 







   




   




 




 

 
typedef struct {
  volatile uint8_t C1;                                  
  volatile uint8_t C2;                                  
  volatile uint8_t C3;                                  
  volatile uint8_t C4;                                  
  volatile uint8_t C5;                                  
  volatile uint8_t C6;                                  
  volatile uint8_t S;                                   
       uint8_t RESERVED_0[1];
  volatile uint8_t SC;                                  
       uint8_t RESERVED_1[1];
  volatile uint8_t ATCVH;                               
  volatile uint8_t ATCVL;                               
  volatile const  uint8_t C7;                                  
  volatile uint8_t C8;                                  
  volatile const  uint8_t C9;                                  
  volatile const  uint8_t C10;                                 
} MCG_Type, *MCG_MemMapPtr;



 




 


 
#line 2806 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 
#line 2842 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2867 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 
#line 2889 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2902 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2919 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2948 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 2973 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 




 







   


 
 

 


 

 

 




 




 


 
 
#line 3033 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   

 





 





 








   




 




 

 
typedef struct {
       uint8_t RESERVED_0[8];
  volatile const  uint16_t PLASC;                              
  volatile const  uint16_t PLAMC;                              
  volatile uint32_t PLACR;                              
       uint8_t RESERVED_1[48];
  volatile uint32_t CPO;                                
} MCM_Type, *MCM_MemMapPtr;



 




 


 







   




 




 

 




 




 
#line 3154 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 3167 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   


 
 

 


 

 




 




 


 
 







   




   




 




 

 
typedef struct {
  volatile uint32_t POSITION;                           
  volatile uint32_t MASTER;                             
  volatile uint32_t FLOW;                               
  volatile const  uint32_t BASE;                               
       uint8_t RESERVED_0[3824];
  volatile const  uint32_t MODECTRL;                           
       uint8_t RESERVED_1[156];
  volatile const  uint32_t TAGSET;                             
  volatile const  uint32_t TAGCLEAR;                           
       uint8_t RESERVED_2[8];
  volatile const  uint32_t LOCKACCESS;                         
  volatile const  uint32_t LOCKSTAT;                           
  volatile const  uint32_t AUTHSTAT;                           
  volatile const  uint32_t DEVICEARCH;                         
       uint8_t RESERVED_3[8];
  volatile const  uint32_t DEVICECFG;                          
  volatile const  uint32_t DEVICETYPID;                        
  volatile const  uint32_t PERIPHID[8];                        
  volatile const  uint32_t COMPID[4];                          
} MTB_Type, *MTB_MemMapPtr;



 




 


 
#line 3271 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 
#line 3295 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 3324 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 3337 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 




 




 




 




 




 
#line 3384 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 




 




 




 







   


 
 

 


 

 




 




 


 
 
#line 3463 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"

 





   




   




 




 

 
typedef struct {
  volatile const  uint32_t CTRL;                               
       uint8_t RESERVED_0[28];
  struct {                                          
    volatile uint32_t COMP;                               
    volatile uint32_t MASK;                               
    volatile uint32_t FCT;                                
         uint8_t RESERVED_0[4];
  } COMPARATOR[2];
       uint8_t RESERVED_1[448];
  volatile uint32_t TBCTRL;                             
       uint8_t RESERVED_2[3524];
  volatile const  uint32_t DEVICECFG;                          
  volatile const  uint32_t DEVICETYPID;                        
  volatile const  uint32_t PERIPHID[8];                        
  volatile const  uint32_t COMPID[4];                          
} MTBDWT_Type, *MTBDWT_MemMapPtr;



 




 


 
#line 3531 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 
#line 3555 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 




 
#line 3586 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 3599 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 




 




 







   


 
 

 


 

 




 




 


 
 
#line 3670 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"

 








   




   




 




 

 
typedef struct {
  volatile const  uint8_t BACKKEY3;                            
  volatile const  uint8_t BACKKEY2;                            
  volatile const  uint8_t BACKKEY1;                            
  volatile const  uint8_t BACKKEY0;                            
  volatile const  uint8_t BACKKEY7;                            
  volatile const  uint8_t BACKKEY6;                            
  volatile const  uint8_t BACKKEY5;                            
  volatile const  uint8_t BACKKEY4;                            
  volatile const  uint8_t FPROT3;                              
  volatile const  uint8_t FPROT2;                              
  volatile const  uint8_t FPROT1;                              
  volatile const  uint8_t FPROT0;                              
  volatile const  uint8_t FSEC;                                
  volatile const  uint8_t FOPT;                                
} NV_Type, *NV_MemMapPtr;



 




 


 
#line 3740 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 




 




 




 




 




 




 




 




 




 




 




 




 
#line 3832 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 3853 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   


 
 

 


 

 




 




 


 
 
#line 3896 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




   




 




 

 
typedef struct {
  volatile uint8_t CR;                                  
} OSC_Type, *OSC_MemMapPtr;



 




 


 




   




 




 

 
#line 3973 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   


 
 

 


 

 




 




 


 
 




   




   




 




 

 
typedef struct {
  volatile uint32_t MCR;                                
       uint8_t RESERVED_0[220];
  volatile const  uint32_t LTMR64H;                            
  volatile const  uint32_t LTMR64L;                            
       uint8_t RESERVED_1[24];
  struct {                                          
    volatile uint32_t LDVAL;                              
    volatile const  uint32_t CVAL;                               
    volatile uint32_t TCTRL;                              
    volatile uint32_t TFLG;                               
  } CHANNEL[2];
} PIT_Type, *PIT_MemMapPtr;



 




 


 
#line 4060 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 
#line 4084 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 




 




 




 
#line 4117 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 







   


 
 

 


 

 

 




 




 


 
 
#line 4164 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"

 







   




   




 




 

 
typedef struct {
  volatile uint8_t LVDSC1;                              
  volatile uint8_t LVDSC2;                              
  volatile uint8_t REGSC;                               
} PMC_Type, *PMC_MemMapPtr;



 




 


 






   




 




 

 
#line 4247 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 4264 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 4281 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   


 
 

 


 

 

 




 




 


 
 






   




   




 




 

 
typedef struct {
  volatile uint32_t PCR[32];                            
  volatile  uint32_t GPCLR;                              
  volatile  uint32_t GPCHR;                              
       uint8_t RESERVED_0[24];
  volatile uint32_t ISFR;                               
} PORT_Type, *PORT_MemMapPtr;



 




 


 








   




 




 

 
#line 4408 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 4417 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 4426 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 







   


 
 

 


 

 


 

 


 

 


 

 


 

 

 




 




 


 
 
#line 4517 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 4553 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 4589 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 4625 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 4661 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"

 








   




   




 




 

 
typedef struct {
  volatile const  uint8_t SRS0;                                
  volatile const  uint8_t SRS1;                                
       uint8_t RESERVED_0[2];
  volatile uint8_t RPFC;                                
  volatile uint8_t RPFW;                                
} RCM_Type, *RCM_MemMapPtr;



 




 


 







   




 




 

 
#line 4756 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 4773 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 4782 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 







   


 
 

 


 

 




 




 


 
 







   




   




 




 

 
typedef struct {
  volatile const  uint32_t ENTRY[3];                           
  volatile const  uint32_t TABLEMARK;                          
       uint8_t RESERVED_0[4028];
  volatile const  uint32_t SYSACCESS;                          
  volatile const  uint32_t PERIPHID4;                          
  volatile const  uint32_t PERIPHID5;                          
  volatile const  uint32_t PERIPHID6;                          
  volatile const  uint32_t PERIPHID7;                          
  volatile const  uint32_t PERIPHID0;                          
  volatile const  uint32_t PERIPHID1;                          
  volatile const  uint32_t PERIPHID2;                          
  volatile const  uint32_t PERIPHID3;                          
  volatile const  uint32_t COMPID[4];                          
} ROM_Type, *ROM_MemMapPtr;



 




 


 
#line 4882 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 




 




 




 




 




 




 




 




 




 




 




 







   


 
 

 


 

 




 




 


 
 
#line 5003 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"

 





   




   




 




 

 
typedef struct {
  volatile uint32_t TSR;                                
  volatile uint32_t TPR;                                
  volatile uint32_t TAR;                                
  volatile uint32_t TCR;                                
  volatile uint32_t CR;                                 
  volatile uint32_t SR;                                 
  volatile uint32_t LR;                                 
  volatile uint32_t IER;                                
} RTC_Type, *RTC_MemMapPtr;



 




 


 
#line 5058 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 




 




 




 
#line 5105 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5146 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5163 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5180 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5201 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   


 
 

 


 

 

 





 




 


 
 
#line 5241 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




   




 




 

 
typedef struct {
  volatile uint32_t SOPT1;                              
  volatile uint32_t SOPT1CFG;                           
       uint8_t RESERVED_0[4092];
  volatile uint32_t SOPT2;                              
       uint8_t RESERVED_1[4];
  volatile uint32_t SOPT4;                              
  volatile uint32_t SOPT5;                              
       uint8_t RESERVED_2[4];
  volatile uint32_t SOPT7;                              
       uint8_t RESERVED_3[8];
  volatile const  uint32_t SDID;                               
       uint8_t RESERVED_4[12];
  volatile uint32_t SCGC4;                              
  volatile uint32_t SCGC5;                              
  volatile uint32_t SCGC6;                              
  volatile uint32_t SCGC7;                              
  volatile uint32_t CLKDIV1;                            
       uint8_t RESERVED_5[4];
  volatile uint32_t FCFG1;                              
  volatile const  uint32_t FCFG2;                              
       uint8_t RESERVED_6[4];
  volatile const  uint32_t UIDMH;                              
  volatile const  uint32_t UIDML;                              
  volatile const  uint32_t UIDL;                               
       uint8_t RESERVED_7[156];
  volatile uint32_t COPC;                               
  volatile  uint32_t SRVCOP;                             
} SIM_Type, *SIM_MemMapPtr;



 




 


 
#line 5322 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 
#line 5354 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5367 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5392 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5413 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5442 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5455 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5484 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5521 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5550 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5587 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 
#line 5601 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5614 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 




 




 




 
#line 5647 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 







   


 
 

 


 

 




 




 


 
 
#line 5700 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




   




 




 

 
typedef struct {
  volatile uint8_t PMPROT;                              
  volatile uint8_t PMCTRL;                              
  volatile uint8_t STOPCTRL;                            
  volatile const  uint8_t PMSTAT;                              
} SMC_Type, *SMC_MemMapPtr;



 




 


 







   




 




 

 
#line 5771 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5784 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5797 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 







   


 
 

 


 

 




 




 


 
 







   




   




 




 

 
typedef struct {
  volatile uint8_t C1;                                  
  volatile uint8_t C2;                                  
  volatile uint8_t BR;                                  
  volatile uint8_t S;                                   
       uint8_t RESERVED_0[1];
  volatile uint8_t D;                                   
       uint8_t RESERVED_1[1];
  volatile uint8_t M;                                   
} SPI_Type, *SPI_MemMapPtr;



 




 


 
#line 5884 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 
#line 5932 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5961 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5970 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 5987 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 







   


 
 

 


 

 


 

 

 




 




 


 
 
#line 6039 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 6046 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




   




 




 

 
typedef struct {
  volatile uint32_t SC;                                 
  volatile uint32_t CNT;                                
  volatile uint32_t MOD;                                
  struct {                                          
    volatile uint32_t CnSC;                               
    volatile uint32_t CnV;                                
  } CONTROLS[6];
       uint8_t RESERVED_0[20];
  volatile uint32_t STATUS;                             
       uint8_t RESERVED_1[48];
  volatile uint32_t CONF;                               
} TPM_Type, *TPM_MemMapPtr;



 




 


 
#line 6101 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 
#line 6141 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 




 
#line 6180 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 
#line 6214 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 6243 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   


 
 

 


 

 


 

 


 

 

 




 




 


 
 
#line 6301 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 6311 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 6321 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"

 
#line 6329 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




   




 




 

 
typedef struct {
  volatile uint32_t GENCS;                              
  volatile uint32_t DATA;                               
  volatile uint32_t TSHD;                               
} TSI_Type, *TSI_MemMapPtr;



 




 


 






   




 




 

 
#line 6446 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 6463 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 6472 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   


 
 

 


 

 

 




 




 


 
 






   




   




 




 

 
typedef struct {
  volatile uint8_t BDH;                                 
  volatile uint8_t BDL;                                 
  volatile uint8_t C1;                                  
  volatile uint8_t C2;                                  
  volatile const  uint8_t S1;                                  
  volatile uint8_t S2;                                  
  volatile uint8_t C3;                                  
  volatile uint8_t D;                                   
  volatile uint8_t C4;                                  
} UART_Type, *UART_MemMapPtr;



 




 


 
#line 6559 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 
#line 6591 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 
#line 6629 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 6662 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 6695 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 6724 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 6757 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 6790 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 6799 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   


 
 

 


 

 


 

 

 





 




 


 
 
#line 6845 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 6855 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




   




 




 

 
typedef struct {
  volatile uint8_t BDH;                                 
  volatile uint8_t BDL;                                 
  volatile uint8_t C1;                                  
  volatile uint8_t C2;                                  
  volatile uint8_t S1;                                  
  volatile uint8_t S2;                                  
  volatile uint8_t C3;                                  
  volatile uint8_t D;                                   
  volatile uint8_t MA1;                                 
  volatile uint8_t MA2;                                 
  volatile uint8_t C4;                                  
  volatile uint8_t C5;                                  
} UART0_Type, *UART0_MemMapPtr;



 




 


 
#line 6914 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 
#line 6946 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 
#line 6984 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7017 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7050 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7083 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7116 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7149 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 




 
#line 7176 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7193 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   


 
 

 


 

 

 





 




 


 
 
#line 7237 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




   




 




 

 
typedef struct {
  volatile const  uint8_t PERID;                               
       uint8_t RESERVED_0[3];
  volatile const  uint8_t IDCOMP;                              
       uint8_t RESERVED_1[3];
  volatile const  uint8_t REV;                                 
       uint8_t RESERVED_2[3];
  volatile const  uint8_t ADDINFO;                             
       uint8_t RESERVED_3[3];
  volatile uint8_t OTGISTAT;                            
       uint8_t RESERVED_4[3];
  volatile uint8_t OTGICR;                              
       uint8_t RESERVED_5[3];
  volatile uint8_t OTGSTAT;                             
       uint8_t RESERVED_6[3];
  volatile uint8_t OTGCTL;                              
       uint8_t RESERVED_7[99];
  volatile uint8_t ISTAT;                               
       uint8_t RESERVED_8[3];
  volatile uint8_t INTEN;                               
       uint8_t RESERVED_9[3];
  volatile uint8_t ERRSTAT;                             
       uint8_t RESERVED_10[3];
  volatile uint8_t ERREN;                               
       uint8_t RESERVED_11[3];
  volatile const  uint8_t STAT;                                
       uint8_t RESERVED_12[3];
  volatile uint8_t CTL;                                 
       uint8_t RESERVED_13[3];
  volatile uint8_t ADDR;                                
       uint8_t RESERVED_14[3];
  volatile uint8_t BDTPAGE1;                            
       uint8_t RESERVED_15[3];
  volatile uint8_t FRMNUML;                             
       uint8_t RESERVED_16[3];
  volatile uint8_t FRMNUMH;                             
       uint8_t RESERVED_17[3];
  volatile uint8_t TOKEN;                               
       uint8_t RESERVED_18[3];
  volatile uint8_t SOFTHLD;                             
       uint8_t RESERVED_19[3];
  volatile uint8_t BDTPAGE2;                            
       uint8_t RESERVED_20[3];
  volatile uint8_t BDTPAGE3;                            
       uint8_t RESERVED_21[11];
  struct {                                          
    volatile uint8_t ENDPT;                               
         uint8_t RESERVED_0[3];
  } ENDPOINT[16];
  volatile uint8_t USBCTRL;                             
       uint8_t RESERVED_22[3];
  volatile const  uint8_t OBSERVE;                             
       uint8_t RESERVED_23[3];
  volatile uint8_t CONTROL;                             
       uint8_t RESERVED_24[3];
  volatile uint8_t USBTRC0;                             
       uint8_t RESERVED_25[7];
  volatile uint8_t USBFRMADJUST;                        
} USB_Type, *USB_MemMapPtr;



 




 


 
#line 7358 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

 




 




 




 
#line 7397 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7422 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7447 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7472 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7489 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7522 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7555 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7584 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7613 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7626 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7659 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7668 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 




 




 
#line 7692 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 




 




 
#line 7736 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7745 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 
#line 7758 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 




 
#line 7780 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"
 







   


 
 

 


 

 

 




 




 


 
 
#line 7859 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"

 




   




   




 


  #pragma pop
#line 7890 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   




 




 

#line 8139 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"



   


#line 8153 "C:\\Keil_v5\\ARM\\PACK\\Keil\\Kinetis_KLxx_DFP\\1.15.0\\Device\\Include\\MKL25Z4.h"

 
#line 101 "RTE\\Device\\MKL25Z128xxx4\\system_MKL25Z4.c"






 

uint32_t SystemCoreClock = 48000000u;



 

void SystemInit (void) {

   
  ((SIM_Type *)(0x40047000u))->COPC = (uint32_t)0x00u;


  if((((RCM_Type *)(0x4007F000u))->SRS0 & 0x1u) != 0x00U)
  {
    if((((PMC_Type *)(0x4007D000u))->REGSC & 0x8u) != 0x00U)
    {
       ((PMC_Type *)(0x4007D000u))->REGSC |= 0x8u;  
    }
  }

   

  ((SMC_Type *)(0x4007E000u))->PMPROT = 0x2AU;


   
   
#line 149 "RTE\\Device\\MKL25Z128xxx4\\system_MKL25Z4.c"

   
  ((SIM_Type *)(0x40047000u))->CLKDIV1 = 0x10010000U;  
  ((SIM_Type *)(0x40047000u))->SOPT1 = ((((SIM_Type *)(0x40047000u))->SOPT1) & (uint32_t)(~(0xC0000u))) | ((0x000C0000U) & (0xC0000u));  
  ((SIM_Type *)(0x40047000u))->SOPT2 = ((((SIM_Type *)(0x40047000u))->SOPT2) & (uint32_t)(~(0x10000u))) | ((0x01010000U) & (0x10000u));  
  ((SIM_Type *)(0x40047000u))->SOPT2 = ((((SIM_Type *)(0x40047000u))->SOPT2) & (uint32_t)(~(0x3000000u))) | ((0x01010000U) & (0x3000000u));  
#line 186 "RTE\\Device\\MKL25Z128xxx4\\system_MKL25Z4.c"
   
   
  ((((SIM_Type *)(0x40047000u)))->SCGC5) |= 0x200u;
   
  ((((PORT_Type *)(0x40049000u)))->PCR[18]) &= (uint32_t)~(uint32_t)((0x1000000u | (((uint32_t)(((uint32_t)(0x07))<<8))&0x700u)));
  if (((0x24U) & 0x4u) != 0x00U) {
   
  ((((PORT_Type *)(0x40049000u)))->PCR[19]) &= (uint32_t)~(uint32_t)((0x1000000u | (((uint32_t)(((uint32_t)(0x07))<<8))&0x700u)));
  }
  ((MCG_Type *)(0x40064000u))->SC = 0x00U;        
  ((MCG_Type *)(0x40064000u))->C2 = (0x24U) & (uint8_t)(~(0x2u));  
  ((OSC_Type *)(0x40065000u))->CR = 0x80U;      

  ((MCG_Type *)(0x40064000u))->C1 = (0x1AU) | (((uint8_t)(((uint8_t)(0x02))<<6))&0xC0u);  



  if (((0x24U) & 0x4u) != 0x00U) {
    while((((MCG_Type *)(0x40064000u))->S & 0x2u) == 0x00U) {  
    }
  }
   
  if (((0x1AU) & 0x4u) != 0x00U) {
    while((((MCG_Type *)(0x40064000u))->S & 0x10u) == 0x00U) {
    }
  } else {
    while((((MCG_Type *)(0x40064000u))->S & 0x10u) != 0x00U) {
    }
  }
  ((MCG_Type *)(0x40064000u))->C4 = ((0x00U)  & (uint8_t)(~(0x1Eu | 0x1u))) | (((MCG_Type *)(0x40064000u))->C4 & (0x1Eu | 0x1u));  


   

   
  ((MCG_Type *)(0x40064000u))->C5 = (0x01U) & (uint8_t)(~(0x40u));  
  ((MCG_Type *)(0x40064000u))->C6 = (0x40U) & (uint8_t)~(0x40u);  
  if ((0x01U) & 0x40u) {
    ((MCG_Type *)(0x40064000u))->C5 |= 0x40u;   
  }
   




  ((MCG_Type *)(0x40064000u))->C6 |= (0x40u);        
  while((((MCG_Type *)(0x40064000u))->S & 0x40u) == 0x00U) {  
  }

  ((MCG_Type *)(0x40064000u))->C1 &= (uint8_t)~(0xC0u);
#line 258 "RTE\\Device\\MKL25Z128xxx4\\system_MKL25Z4.c"
  while((((MCG_Type *)(0x40064000u))->S & 0xCu) != 0x0CU) {  
  }
#line 266 "RTE\\Device\\MKL25Z128xxx4\\system_MKL25Z4.c"

   
  if (((0x40U) & 0x80u) != 0U) {
    __NVIC_EnableIRQ(MCG_IRQn);           
  }

}



 

void SystemCoreClockUpdate (void) {
  uint32_t MCGOUTClock;                 
  uint16_t Divider;

  if ((((MCG_Type *)(0x40064000u))->C1 & 0xC0u) == 0x00U) {
     
    if ((((MCG_Type *)(0x40064000u))->C6 & 0x40u) == 0x00U) {
       
      if ((((MCG_Type *)(0x40064000u))->C1 & 0x4u) == 0x00U) {
         
        MCGOUTClock = 8000000u;  
        if ((((MCG_Type *)(0x40064000u))->C2 & 0x30u) != 0x00U) {
          switch (((MCG_Type *)(0x40064000u))->C1 & 0x38u) {
          case 0x38U:
            Divider = 1536U;
            break;
          case 0x30U:
            Divider = 1280U;
            break;
          default:
            Divider = (uint16_t)(32LU << ((((MCG_Type *)(0x40064000u))->C1 & 0x38u) >> 3));
            break;
          }
        } else { 
          Divider = (uint16_t)(1LU << ((((MCG_Type *)(0x40064000u))->C1 & 0x38u) >> 3));
        }
        MCGOUTClock = (MCGOUTClock / Divider);  
      } else {  
        MCGOUTClock = 32768u;  
      }  
       
      switch (((MCG_Type *)(0x40064000u))->C4 & (0x80u | 0x60u)) {
        case 0x00U:
          MCGOUTClock *= 640U;
          break;
        case 0x20U:
          MCGOUTClock *= 1280U;
          break;
        case 0x40U:
          MCGOUTClock *= 1920U;
          break;
        case 0x60U:
          MCGOUTClock *= 2560U;
          break;
        case 0x80U:
          MCGOUTClock *= 732U;
          break;
        case 0xA0U:
          MCGOUTClock *= 1464U;
          break;
        case 0xC0U:
          MCGOUTClock *= 2197U;
          break;
        case 0xE0U:
          MCGOUTClock *= 2929U;
          break;
        default:
          break;
      }
    } else {  
       
      Divider = (((uint16_t)((MCG_Type *)(0x40064000u))->C5 & 0x1Fu) + 0x01U);
      MCGOUTClock = (uint32_t)(8000000u / Divider);  
      Divider = (((uint16_t)((MCG_Type *)(0x40064000u))->C6 & 0x1Fu) + 24U);
      MCGOUTClock *= Divider;           
    }  
  } else if ((((MCG_Type *)(0x40064000u))->C1 & 0xC0u) == 0x40U) {
     
    if ((((MCG_Type *)(0x40064000u))->C2 & 0x1u) == 0x00U) {
      MCGOUTClock = 32768u;  
    } else {  
      Divider = (uint16_t)(0x01LU << ((((MCG_Type *)(0x40064000u))->SC & 0xEu) >> 1));
      MCGOUTClock = (uint32_t) (4000000u / Divider);  
    }  
  } else if ((((MCG_Type *)(0x40064000u))->C1 & 0xC0u) == 0x80U) {
     
    MCGOUTClock = 8000000u;      
  } else {  
     
    return;
  }  
  SystemCoreClock = (MCGOUTClock / (0x01U + ((((SIM_Type *)(0x40047000u))->CLKDIV1 & 0xF0000000u) >> 28)));
}
