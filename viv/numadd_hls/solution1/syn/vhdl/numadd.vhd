-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity numadd is
generic (
    C_S_AXI_ADD_IO_ADDR_WIDTH : INTEGER := 6;
    C_S_AXI_ADD_IO_DATA_WIDTH : INTEGER := 32 );
port (
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    s_axi_add_io_AWVALID : IN STD_LOGIC;
    s_axi_add_io_AWREADY : OUT STD_LOGIC;
    s_axi_add_io_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADD_IO_ADDR_WIDTH-1 downto 0);
    s_axi_add_io_WVALID : IN STD_LOGIC;
    s_axi_add_io_WREADY : OUT STD_LOGIC;
    s_axi_add_io_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_ADD_IO_DATA_WIDTH-1 downto 0);
    s_axi_add_io_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_ADD_IO_DATA_WIDTH/8-1 downto 0);
    s_axi_add_io_ARVALID : IN STD_LOGIC;
    s_axi_add_io_ARREADY : OUT STD_LOGIC;
    s_axi_add_io_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADD_IO_ADDR_WIDTH-1 downto 0);
    s_axi_add_io_RVALID : OUT STD_LOGIC;
    s_axi_add_io_RREADY : IN STD_LOGIC;
    s_axi_add_io_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_ADD_IO_DATA_WIDTH-1 downto 0);
    s_axi_add_io_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_add_io_BVALID : OUT STD_LOGIC;
    s_axi_add_io_BREADY : IN STD_LOGIC;
    s_axi_add_io_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC );
end;


architecture behav of numadd is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "numadd,hls_ip_2016_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.440000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=144,HLS_SYN_LUT=264}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal a : STD_LOGIC_VECTOR (31 downto 0);
    signal b : STD_LOGIC_VECTOR (31 downto 0);
    signal y : STD_LOGIC_VECTOR (31 downto 0);
    signal y_ap_vld : STD_LOGIC;
    signal ap_rst_n_inv : STD_LOGIC;

    component numadd_add_io_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        a : OUT STD_LOGIC_VECTOR (31 downto 0);
        b : OUT STD_LOGIC_VECTOR (31 downto 0);
        y : IN STD_LOGIC_VECTOR (31 downto 0);
        y_ap_vld : IN STD_LOGIC );
    end component;



begin
    numadd_add_io_s_axi_U : component numadd_add_io_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_ADD_IO_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_ADD_IO_DATA_WIDTH)
    port map (
        AWVALID => s_axi_add_io_AWVALID,
        AWREADY => s_axi_add_io_AWREADY,
        AWADDR => s_axi_add_io_AWADDR,
        WVALID => s_axi_add_io_WVALID,
        WREADY => s_axi_add_io_WREADY,
        WDATA => s_axi_add_io_WDATA,
        WSTRB => s_axi_add_io_WSTRB,
        ARVALID => s_axi_add_io_ARVALID,
        ARREADY => s_axi_add_io_ARREADY,
        ARADDR => s_axi_add_io_ARADDR,
        RVALID => s_axi_add_io_RVALID,
        RREADY => s_axi_add_io_RREADY,
        RDATA => s_axi_add_io_RDATA,
        RRESP => s_axi_add_io_RRESP,
        BVALID => s_axi_add_io_BVALID,
        BREADY => s_axi_add_io_BREADY,
        BRESP => s_axi_add_io_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        a => a,
        b => b,
        y => y,
        y_ap_vld => y_ap_vld);




    ap_done <= ap_start;
    ap_idle <= ap_const_logic_1;
    ap_ready <= ap_start;

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    y <= std_logic_vector(unsigned(b) + unsigned(a));

    y_ap_vld_assign_proc : process(ap_start)
    begin
        if (not((ap_start = ap_const_logic_0))) then 
            y_ap_vld <= ap_const_logic_1;
        else 
            y_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;