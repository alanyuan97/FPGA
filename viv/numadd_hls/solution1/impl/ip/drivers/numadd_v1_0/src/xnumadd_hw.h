// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// add_io
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of a
//        bit 31~0 - a[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of b
//        bit 31~0 - b[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of y
//        bit 31~0 - y[31:0] (Read)
// 0x24 : Control signal of y
//        bit 0  - y_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XNUMADD_ADD_IO_ADDR_A_DATA 0x10
#define XNUMADD_ADD_IO_BITS_A_DATA 32
#define XNUMADD_ADD_IO_ADDR_B_DATA 0x18
#define XNUMADD_ADD_IO_BITS_B_DATA 32
#define XNUMADD_ADD_IO_ADDR_Y_DATA 0x20
#define XNUMADD_ADD_IO_BITS_Y_DATA 32
#define XNUMADD_ADD_IO_ADDR_Y_CTRL 0x24

