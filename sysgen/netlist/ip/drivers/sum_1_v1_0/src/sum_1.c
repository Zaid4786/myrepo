#include "sum_1.h"
#ifndef __linux__
int sum_1_CfgInitialize(sum_1 *InstancePtr, sum_1_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->sum_1_BaseAddress = ConfigPtr->sum_1_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void sum_1_gateway_in2_write(sum_1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    sum_1_WriteReg(InstancePtr->sum_1_BaseAddress, 0, Data);
}
u32 sum_1_gateway_in2_read(sum_1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 0);
    return Data;
}
void sum_1_gateway_in1_write(sum_1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    sum_1_WriteReg(InstancePtr->sum_1_BaseAddress, 4, Data);
}
int sum_1_gateway_in1_read(sum_1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 4);
    return Data;
}
void sum_1_gateway_in_write(sum_1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    sum_1_WriteReg(InstancePtr->sum_1_BaseAddress, 8, Data);
}
int sum_1_gateway_in_read(sum_1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 8);
    return Data;
}
u32 sum_1_gateway_out_read(sum_1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 12);
    return Data;
}
u32 sum_1_gateway_out2_read(sum_1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 16);
    return Data;
}
u32 sum_1_gateway_out3_read(sum_1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 20);
    return Data;
}
u32 sum_1_gateway_out1_read(sum_1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 24);
    return Data;
}
u32 sum_1_gateway_out16_read(sum_1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 28);
    return Data;
}
u8 sum_1_gateway_out17_read(sum_1 *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 32);
    return Data;
}
u32 sum_1_gateway_out4_read(sum_1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 36);
    return Data;
}
u32 sum_1_gateway_out5_read(sum_1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 40);
    return Data;
}
u32 sum_1_gateway_out6_read(sum_1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 44);
    return Data;
}
u32 sum_1_gateway_out7_read(sum_1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 48);
    return Data;
}
u32 sum_1_gateway_out18_read(sum_1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 52);
    return Data;
}
u8 sum_1_gateway_out8_read(sum_1 *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 56);
    return Data;
}
u32 sum_1_gateway_out9_read(sum_1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 60);
    return Data;
}
u8 sum_1_gateway_out10_read(sum_1 *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 64);
    return Data;
}
u8 sum_1_gateway_out13_read(sum_1 *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 100);
    return Data;
}
u32 sum_1_gateway_out14_read(sum_1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 104);
    return Data;
}
u32 sum_1_gateway_out15_read(sum_1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = sum_1_ReadReg(InstancePtr->sum_1_BaseAddress, 108);
    return Data;
}
