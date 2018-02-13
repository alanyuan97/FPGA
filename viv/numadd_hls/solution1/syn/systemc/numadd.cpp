// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "numadd.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic numadd::ap_const_logic_1 = sc_dt::Log_1;
const int numadd::C_S_AXI_DATA_WIDTH = "100000";
const sc_logic numadd::ap_const_logic_0 = sc_dt::Log_0;

numadd::numadd(sc_module_name name) : sc_module(name), mVcdFile(0) {
    numadd_add_io_s_axi_U = new numadd_add_io_s_axi<C_S_AXI_ADD_IO_ADDR_WIDTH,C_S_AXI_ADD_IO_DATA_WIDTH>("numadd_add_io_s_axi_U");
    numadd_add_io_s_axi_U->AWVALID(s_axi_add_io_AWVALID);
    numadd_add_io_s_axi_U->AWREADY(s_axi_add_io_AWREADY);
    numadd_add_io_s_axi_U->AWADDR(s_axi_add_io_AWADDR);
    numadd_add_io_s_axi_U->WVALID(s_axi_add_io_WVALID);
    numadd_add_io_s_axi_U->WREADY(s_axi_add_io_WREADY);
    numadd_add_io_s_axi_U->WDATA(s_axi_add_io_WDATA);
    numadd_add_io_s_axi_U->WSTRB(s_axi_add_io_WSTRB);
    numadd_add_io_s_axi_U->ARVALID(s_axi_add_io_ARVALID);
    numadd_add_io_s_axi_U->ARREADY(s_axi_add_io_ARREADY);
    numadd_add_io_s_axi_U->ARADDR(s_axi_add_io_ARADDR);
    numadd_add_io_s_axi_U->RVALID(s_axi_add_io_RVALID);
    numadd_add_io_s_axi_U->RREADY(s_axi_add_io_RREADY);
    numadd_add_io_s_axi_U->RDATA(s_axi_add_io_RDATA);
    numadd_add_io_s_axi_U->RRESP(s_axi_add_io_RRESP);
    numadd_add_io_s_axi_U->BVALID(s_axi_add_io_BVALID);
    numadd_add_io_s_axi_U->BREADY(s_axi_add_io_BREADY);
    numadd_add_io_s_axi_U->BRESP(s_axi_add_io_BRESP);
    numadd_add_io_s_axi_U->ACLK(ap_clk);
    numadd_add_io_s_axi_U->ARESET(ap_rst_n_inv);
    numadd_add_io_s_axi_U->ACLK_EN(ap_var_for_const0);
    numadd_add_io_s_axi_U->a(a);
    numadd_add_io_s_axi_U->b(b);
    numadd_add_io_s_axi_U->y(y);
    numadd_add_io_s_axi_U->y_ap_vld(y_ap_vld);

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_idle);

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_y);
    sensitive << ( ap_start );
    sensitive << ( a );
    sensitive << ( b );

    SC_METHOD(thread_y_ap_vld);
    sensitive << ( ap_start );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_virtual_clock.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "numadd_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, s_axi_add_io_AWVALID, "(port)s_axi_add_io_AWVALID");
    sc_trace(mVcdFile, s_axi_add_io_AWREADY, "(port)s_axi_add_io_AWREADY");
    sc_trace(mVcdFile, s_axi_add_io_AWADDR, "(port)s_axi_add_io_AWADDR");
    sc_trace(mVcdFile, s_axi_add_io_WVALID, "(port)s_axi_add_io_WVALID");
    sc_trace(mVcdFile, s_axi_add_io_WREADY, "(port)s_axi_add_io_WREADY");
    sc_trace(mVcdFile, s_axi_add_io_WDATA, "(port)s_axi_add_io_WDATA");
    sc_trace(mVcdFile, s_axi_add_io_WSTRB, "(port)s_axi_add_io_WSTRB");
    sc_trace(mVcdFile, s_axi_add_io_ARVALID, "(port)s_axi_add_io_ARVALID");
    sc_trace(mVcdFile, s_axi_add_io_ARREADY, "(port)s_axi_add_io_ARREADY");
    sc_trace(mVcdFile, s_axi_add_io_ARADDR, "(port)s_axi_add_io_ARADDR");
    sc_trace(mVcdFile, s_axi_add_io_RVALID, "(port)s_axi_add_io_RVALID");
    sc_trace(mVcdFile, s_axi_add_io_RREADY, "(port)s_axi_add_io_RREADY");
    sc_trace(mVcdFile, s_axi_add_io_RDATA, "(port)s_axi_add_io_RDATA");
    sc_trace(mVcdFile, s_axi_add_io_RRESP, "(port)s_axi_add_io_RRESP");
    sc_trace(mVcdFile, s_axi_add_io_BVALID, "(port)s_axi_add_io_BVALID");
    sc_trace(mVcdFile, s_axi_add_io_BREADY, "(port)s_axi_add_io_BREADY");
    sc_trace(mVcdFile, s_axi_add_io_BRESP, "(port)s_axi_add_io_BRESP");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, a, "a");
    sc_trace(mVcdFile, b, "b");
    sc_trace(mVcdFile, y, "y");
    sc_trace(mVcdFile, y_ap_vld, "y_ap_vld");
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
#endif

    }
    mHdltvinHandle.open("numadd.hdltvin.dat");
    mHdltvoutHandle.open("numadd.hdltvout.dat");
}

numadd::~numadd() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete numadd_add_io_s_axi_U;
}

void numadd::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void numadd::thread_ap_done() {
    ap_done = ap_start.read();
}

void numadd::thread_ap_idle() {
    ap_idle = ap_const_logic_1;
}

void numadd::thread_ap_ready() {
    ap_ready = ap_start.read();
}

void numadd::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void numadd::thread_y() {
    y = (!b.read().is_01() || !a.read().is_01())? sc_lv<32>(): (sc_biguint<32>(b.read()) + sc_biguint<32>(a.read()));
}

void numadd::thread_y_ap_vld() {
    if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
        y_ap_vld = ap_const_logic_1;
    } else {
        y_ap_vld = ap_const_logic_0;
    }
}

void numadd::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_add_io_AWVALID\" :  \"" << s_axi_add_io_AWVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_add_io_AWREADY\" :  \"" << s_axi_add_io_AWREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_add_io_AWADDR\" :  \"" << s_axi_add_io_AWADDR.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_add_io_WVALID\" :  \"" << s_axi_add_io_WVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_add_io_WREADY\" :  \"" << s_axi_add_io_WREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_add_io_WDATA\" :  \"" << s_axi_add_io_WDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_add_io_WSTRB\" :  \"" << s_axi_add_io_WSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_add_io_ARVALID\" :  \"" << s_axi_add_io_ARVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_add_io_ARREADY\" :  \"" << s_axi_add_io_ARREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_add_io_ARADDR\" :  \"" << s_axi_add_io_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_add_io_RVALID\" :  \"" << s_axi_add_io_RVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_add_io_RREADY\" :  \"" << s_axi_add_io_RREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_add_io_RDATA\" :  \"" << s_axi_add_io_RDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_add_io_RRESP\" :  \"" << s_axi_add_io_RRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_add_io_BVALID\" :  \"" << s_axi_add_io_BVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_add_io_BREADY\" :  \"" << s_axi_add_io_BREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_add_io_BRESP\" :  \"" << s_axi_add_io_BRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

