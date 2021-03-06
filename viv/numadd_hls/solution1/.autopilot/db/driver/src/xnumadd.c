// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xnumadd.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XNumadd_CfgInitialize(XNumadd *InstancePtr, XNumadd_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Add_io_BaseAddress = ConfigPtr->Add_io_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XNumadd_Set_a(XNumadd *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNumadd_WriteReg(InstancePtr->Add_io_BaseAddress, XNUMADD_ADD_IO_ADDR_A_DATA, Data);
}

u32 XNumadd_Get_a(XNumadd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNumadd_ReadReg(InstancePtr->Add_io_BaseAddress, XNUMADD_ADD_IO_ADDR_A_DATA);
    return Data;
}

void XNumadd_Set_b(XNumadd *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNumadd_WriteReg(InstancePtr->Add_io_BaseAddress, XNUMADD_ADD_IO_ADDR_B_DATA, Data);
}

u32 XNumadd_Get_b(XNumadd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNumadd_ReadReg(InstancePtr->Add_io_BaseAddress, XNUMADD_ADD_IO_ADDR_B_DATA);
    return Data;
}

u32 XNumadd_Get_y(XNumadd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNumadd_ReadReg(InstancePtr->Add_io_BaseAddress, XNUMADD_ADD_IO_ADDR_Y_DATA);
    return Data;
}

u32 XNumadd_Get_y_vld(XNumadd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNumadd_ReadReg(InstancePtr->Add_io_BaseAddress, XNUMADD_ADD_IO_ADDR_Y_CTRL);
    return Data & 0x1;
}

