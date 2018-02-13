set C_TypeInfoList {{ 
"numadd" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"a": [[], {"scalar": "int"}] }, {"b": [[], {"scalar": "int"}] }, {"y": [[],{ "pointer":  {"scalar": "int"}}] }],[],""]
}}
set moduleName numadd
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {numadd}
set C_modelType { void 0 }
set C_modelArgList {
	{ a int 32 regular {axi_slave 0}  }
	{ b int 32 regular {axi_slave 0}  }
	{ y int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "axi_slave", "bundle":"add_io","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "b", "interface" : "axi_slave", "bundle":"add_io","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "y", "interface" : "axi_slave", "bundle":"add_io","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":32}, "offset_end" : {"out":39}} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_axi_add_io_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_add_io_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_add_io_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_add_io_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_add_io_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_add_io_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_add_io_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_add_io_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_add_io_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_add_io_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_add_io_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_add_io_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_add_io_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_add_io_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_add_io_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_add_io_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_add_io_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
}
set NewPortList {[ 
	{ "name": "s_axi_add_io_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "add_io", "role": "AWADDR" },"address":[{"name":"a","role":"data","value":"16"},{"name":"b","role":"data","value":"24"}] },
	{ "name": "s_axi_add_io_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "AWVALID" } },
	{ "name": "s_axi_add_io_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "AWREADY" } },
	{ "name": "s_axi_add_io_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "WVALID" } },
	{ "name": "s_axi_add_io_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "WREADY" } },
	{ "name": "s_axi_add_io_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_io", "role": "WDATA" } },
	{ "name": "s_axi_add_io_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "add_io", "role": "WSTRB" } },
	{ "name": "s_axi_add_io_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "add_io", "role": "ARADDR" },"address":[{"name":"y","role":"data","value":"32"}, {"name":"y","role":"valid","value":"36","valid_bit":"0"}] },
	{ "name": "s_axi_add_io_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "ARVALID" } },
	{ "name": "s_axi_add_io_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "ARREADY" } },
	{ "name": "s_axi_add_io_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "RVALID" } },
	{ "name": "s_axi_add_io_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "RREADY" } },
	{ "name": "s_axi_add_io_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_io", "role": "RDATA" } },
	{ "name": "s_axi_add_io_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "add_io", "role": "RRESP" } },
	{ "name": "s_axi_add_io_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "BVALID" } },
	{ "name": "s_axi_add_io_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_io", "role": "BREADY" } },
	{ "name": "s_axi_add_io_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "add_io", "role": "BRESP" } }, 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"], "CDFG" : "numadd", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "y", "Type" : "Vld", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.numadd_add_io_s_axi_U", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
