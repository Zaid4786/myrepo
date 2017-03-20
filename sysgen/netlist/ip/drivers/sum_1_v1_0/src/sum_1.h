#ifndef SUM_1__H
#define SUM_1__H
#ifdef __cplusplus
extern "C" {
#endif
/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "sum_1_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 sum_1_BaseAddress;
} sum_1_Config;
#endif
/**
* The sum_1 driver instance data. The user is required to
* allocate a variable of this type for every sum_1 device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 sum_1_BaseAddress;
    u32 IsReady;
} sum_1;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define sum_1_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define sum_1_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define sum_1_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define sum_1_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif
/************************** Function Prototypes *****************************/
#ifndef __linux__
int sum_1_Initialize(sum_1 *InstancePtr, u16 DeviceId);
sum_1_Config* sum_1_LookupConfig(u16 DeviceId);
int sum_1_CfgInitialize(sum_1 *InstancePtr, sum_1_Config *ConfigPtr);
#else
int sum_1_Initialize(sum_1 *InstancePtr, const char* InstanceName);
int sum_1_Release(sum_1 *InstancePtr);
#endif
/**
* Write to gateway_in2 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in2 instance to operate on.
* @param	Data is value to be written to gateway gateway_in2.
*
* @return	None.
*
* @note    .
*
*/
void sum_1_gateway_in2_write(sum_1 *InstancePtr, u32 Data);
/**
* Read from gateway_in2 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in2 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 sum_1_gateway_in2_read(sum_1 *InstancePtr);
/**
* Write to gateway_in1 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in1 instance to operate on.
* @param	Data is value to be written to gateway gateway_in1.
*
* @return	None.
*
* @note    .
*
*/
void sum_1_gateway_in1_write(sum_1 *InstancePtr, int Data);
/**
* Read from gateway_in1 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in1 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int sum_1_gateway_in1_read(sum_1 *InstancePtr);
/**
* Write to gateway_in gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in instance to operate on.
* @param	Data is value to be written to gateway gateway_in.
*
* @return	None.
*
* @note    .
*
*/
void sum_1_gateway_in_write(sum_1 *InstancePtr, int Data);
/**
* Read from gateway_in gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int sum_1_gateway_in_read(sum_1 *InstancePtr);
/**
* Read from gateway_out gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 sum_1_gateway_out_read(sum_1 *InstancePtr);
/**
* Read from gateway_out2 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out2 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 sum_1_gateway_out2_read(sum_1 *InstancePtr);
/**
* Read from gateway_out3 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out3 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 sum_1_gateway_out3_read(sum_1 *InstancePtr);
/**
* Read from gateway_out1 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out1 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 sum_1_gateway_out1_read(sum_1 *InstancePtr);
/**
* Read from gateway_out16 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out16 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 sum_1_gateway_out16_read(sum_1 *InstancePtr);
/**
* Read from gateway_out17 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out17 instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 sum_1_gateway_out17_read(sum_1 *InstancePtr);
/**
* Read from gateway_out4 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out4 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 sum_1_gateway_out4_read(sum_1 *InstancePtr);
/**
* Read from gateway_out5 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out5 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 sum_1_gateway_out5_read(sum_1 *InstancePtr);
/**
* Read from gateway_out6 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out6 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 sum_1_gateway_out6_read(sum_1 *InstancePtr);
/**
* Read from gateway_out7 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out7 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 sum_1_gateway_out7_read(sum_1 *InstancePtr);
/**
* Read from gateway_out18 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out18 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 sum_1_gateway_out18_read(sum_1 *InstancePtr);
/**
* Read from gateway_out8 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out8 instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 sum_1_gateway_out8_read(sum_1 *InstancePtr);
/**
* Read from gateway_out9 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out9 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 sum_1_gateway_out9_read(sum_1 *InstancePtr);
/**
* Read from gateway_out10 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out10 instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 sum_1_gateway_out10_read(sum_1 *InstancePtr);
/**
* Read from gateway_out13 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out13 instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 sum_1_gateway_out13_read(sum_1 *InstancePtr);
/**
* Read from gateway_out14 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out14 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 sum_1_gateway_out14_read(sum_1 *InstancePtr);
/**
* Read from gateway_out15 gateway of sum_1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_out15 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 sum_1_gateway_out15_read(sum_1 *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif
