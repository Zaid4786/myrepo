/**
* @file sum_1_sinit.c
*
* The implementation of the sum_1 driver's static initialzation
* functionality.
*
* @note
*
* None
*
*/
#ifndef __linux__
#include "xstatus.h"
#include "xparameters.h"
#include "sum_1.h"
extern sum_1_Config sum_1_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type sum_1_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
sum_1_Config *sum_1_LookupConfig(u16 DeviceId) {
    sum_1_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_SUM_1_NUM_INSTANCES; Index++) {
        if (sum_1_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &sum_1_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int sum_1_Initialize(sum_1 *InstancePtr, u16 DeviceId) {
    sum_1_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = sum_1_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return sum_1_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif
