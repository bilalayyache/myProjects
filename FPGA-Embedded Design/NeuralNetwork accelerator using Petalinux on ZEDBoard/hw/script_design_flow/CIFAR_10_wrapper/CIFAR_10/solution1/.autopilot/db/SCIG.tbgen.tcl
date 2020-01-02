set moduleName SCIG
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {SCIG}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_V_V int 32 regular {fifo 0 volatile }  }
	{ out_V_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ in_V_V_dout sc_in sc_lv 32 signal 0 } 
	{ in_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_V_V_read sc_out sc_logic 1 signal 0 } 
	{ out_V_V_din sc_out sc_lv 32 signal 1 } 
	{ out_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ out_V_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_V_V", "role": "dout" }} , 
 	{ "name": "in_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "empty_n" }} , 
 	{ "name": "in_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "read" }} , 
 	{ "name": "out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_V_V", "role": "din" }} , 
 	{ "name": "out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "full_n" }} , 
 	{ "name": "out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "SCIG",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state17_pp1_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_189", "FromInitialSV" : "11", "FromFinalState" : "ap_enable_state17_pp1_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_189", "FromFinalSV" : "11", "FromAddress" : "inputBuf_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp1_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_194", "ToInitialSV" : "11", "ToFinalState" : "ap_enable_state17_pp1_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_194", "ToFinalSV" : "11", "ToAddress" : "inputBuf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp1_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_189", "FromInitialSV" : "11", "FromFinalState" : "ap_enable_state17_pp1_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_189", "FromFinalSV" : "11", "FromAddress" : "inputBuf_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp1_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_199", "ToInitialSV" : "12", "ToFinalState" : "ap_enable_state18_pp1_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_199", "ToFinalSV" : "12", "ToAddress" : "inputBuf_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp1_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_189", "FromInitialSV" : "11", "FromFinalState" : "ap_enable_state17_pp1_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_189", "FromFinalSV" : "11", "FromAddress" : "inputBuf_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp1_iter1_stage2", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_205", "ToInitialSV" : "13", "ToFinalState" : "ap_enable_state20_pp1_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter2", "ToFinalOperation" : "ap_enable_operation_210", "ToFinalSV" : "14", "ToAddress" : "inputBuf_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state17_pp1_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_189", "FromInitialSV" : "11", "FromFinalState" : "ap_enable_state17_pp1_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_189", "FromFinalSV" : "11", "FromAddress" : "inputBuf_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp1_iter1_stage2", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_209", "ToInitialSV" : "13", "ToFinalState" : "ap_enable_state20_pp1_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter2", "ToFinalOperation" : "ap_enable_operation_213", "ToFinalSV" : "14", "ToAddress" : "inputBuf_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state17_pp1_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_189", "FromInitialSV" : "11", "FromFinalState" : "ap_enable_state17_pp1_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_189", "FromFinalSV" : "11", "FromAddress" : "inputBuf_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state21_pp1_iter2_stage1", "ToInitialIteration" : "ap_enable_reg_pp1_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_219", "ToInitialSV" : "15", "ToFinalState" : "ap_enable_state22_pp1_iter2_stage2", "ToFinalIteration" : "ap_enable_reg_pp1_iter2", "ToFinalOperation" : "ap_enable_operation_220", "ToFinalSV" : "16", "ToAddress" : "inputBuf_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state17_pp1_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_194", "FromInitialSV" : "11", "FromFinalState" : "ap_enable_state17_pp1_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_194", "FromFinalSV" : "11", "FromAddress" : "inputBuf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp1_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_189", "ToInitialSV" : "11", "ToFinalState" : "ap_enable_state17_pp1_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_189", "ToFinalSV" : "11", "ToAddress" : "inputBuf_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp1_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_194", "FromInitialSV" : "11", "FromFinalState" : "ap_enable_state17_pp1_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_194", "FromFinalSV" : "11", "FromAddress" : "inputBuf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp1_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_199", "ToInitialSV" : "12", "ToFinalState" : "ap_enable_state18_pp1_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_199", "ToFinalSV" : "12", "ToAddress" : "inputBuf_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp1_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_194", "FromInitialSV" : "11", "FromFinalState" : "ap_enable_state17_pp1_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_194", "FromFinalSV" : "11", "FromAddress" : "inputBuf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp1_iter1_stage2", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_205", "ToInitialSV" : "13", "ToFinalState" : "ap_enable_state20_pp1_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter2", "ToFinalOperation" : "ap_enable_operation_210", "ToFinalSV" : "14", "ToAddress" : "inputBuf_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state17_pp1_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_194", "FromInitialSV" : "11", "FromFinalState" : "ap_enable_state17_pp1_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_194", "FromFinalSV" : "11", "FromAddress" : "inputBuf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp1_iter1_stage2", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_209", "ToInitialSV" : "13", "ToFinalState" : "ap_enable_state20_pp1_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter2", "ToFinalOperation" : "ap_enable_operation_213", "ToFinalSV" : "14", "ToAddress" : "inputBuf_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state17_pp1_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_194", "FromInitialSV" : "11", "FromFinalState" : "ap_enable_state17_pp1_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_194", "FromFinalSV" : "11", "FromAddress" : "inputBuf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state21_pp1_iter2_stage1", "ToInitialIteration" : "ap_enable_reg_pp1_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_219", "ToInitialSV" : "15", "ToFinalState" : "ap_enable_state22_pp1_iter2_stage2", "ToFinalIteration" : "ap_enable_reg_pp1_iter2", "ToFinalOperation" : "ap_enable_operation_220", "ToFinalSV" : "16", "ToAddress" : "inputBuf_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state18_pp1_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_199", "FromInitialSV" : "12", "FromFinalState" : "ap_enable_state18_pp1_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_199", "FromFinalSV" : "12", "FromAddress" : "inputBuf_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp1_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_189", "ToInitialSV" : "11", "ToFinalState" : "ap_enable_state17_pp1_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_189", "ToFinalSV" : "11", "ToAddress" : "inputBuf_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp1_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp1_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_199", "FromInitialSV" : "12", "FromFinalState" : "ap_enable_state18_pp1_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_199", "FromFinalSV" : "12", "FromAddress" : "inputBuf_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp1_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_194", "ToInitialSV" : "11", "ToFinalState" : "ap_enable_state17_pp1_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_194", "ToFinalSV" : "11", "ToAddress" : "inputBuf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp1_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state18_pp1_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_199", "FromInitialSV" : "12", "FromFinalState" : "ap_enable_state18_pp1_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_199", "FromFinalSV" : "12", "FromAddress" : "inputBuf_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp1_iter1_stage2", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_205", "ToInitialSV" : "13", "ToFinalState" : "ap_enable_state20_pp1_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter2", "ToFinalOperation" : "ap_enable_operation_210", "ToFinalSV" : "14", "ToAddress" : "inputBuf_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state18_pp1_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_199", "FromInitialSV" : "12", "FromFinalState" : "ap_enable_state18_pp1_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_199", "FromFinalSV" : "12", "FromAddress" : "inputBuf_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp1_iter1_stage2", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_209", "ToInitialSV" : "13", "ToFinalState" : "ap_enable_state20_pp1_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter2", "ToFinalOperation" : "ap_enable_operation_213", "ToFinalSV" : "14", "ToAddress" : "inputBuf_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state18_pp1_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_199", "FromInitialSV" : "12", "FromFinalState" : "ap_enable_state18_pp1_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp1_iter1", "FromFinalOperation" : "ap_enable_operation_199", "FromFinalSV" : "12", "FromAddress" : "inputBuf_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state21_pp1_iter2_stage1", "ToInitialIteration" : "ap_enable_reg_pp1_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_219", "ToInitialSV" : "15", "ToFinalState" : "ap_enable_state22_pp1_iter2_stage2", "ToFinalIteration" : "ap_enable_reg_pp1_iter2", "ToFinalOperation" : "ap_enable_operation_220", "ToFinalSV" : "16", "ToAddress" : "inputBuf_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state19_pp1_iter1_stage2", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_205", "FromInitialSV" : "13", "FromFinalState" : "ap_enable_state20_pp1_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter2", "FromFinalOperation" : "ap_enable_operation_210", "FromFinalSV" : "14", "FromAddress" : "inputBuf_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state17_pp1_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_189", "ToInitialSV" : "11", "ToFinalState" : "ap_enable_state17_pp1_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_189", "ToFinalSV" : "11", "ToAddress" : "inputBuf_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp1_iter1_stage0", "ap_enable_state20_pp1_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state19_pp1_iter1_stage2", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_205", "FromInitialSV" : "13", "FromFinalState" : "ap_enable_state20_pp1_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter2", "FromFinalOperation" : "ap_enable_operation_210", "FromFinalSV" : "14", "FromAddress" : "inputBuf_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state17_pp1_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_194", "ToInitialSV" : "11", "ToFinalState" : "ap_enable_state17_pp1_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_194", "ToFinalSV" : "11", "ToAddress" : "inputBuf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp1_iter1_stage0", "ap_enable_state20_pp1_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state19_pp1_iter1_stage2", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_205", "FromInitialSV" : "13", "FromFinalState" : "ap_enable_state20_pp1_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter2", "FromFinalOperation" : "ap_enable_operation_210", "FromFinalSV" : "14", "FromAddress" : "inputBuf_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state18_pp1_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_199", "ToInitialSV" : "12", "ToFinalState" : "ap_enable_state18_pp1_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_199", "ToFinalSV" : "12", "ToAddress" : "inputBuf_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state18_pp1_iter1_stage1", "ap_enable_state21_pp1_iter2_stage1"]},
			{"FromInitialState" : "ap_enable_state19_pp1_iter1_stage2", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_209", "FromInitialSV" : "13", "FromFinalState" : "ap_enable_state20_pp1_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter2", "FromFinalOperation" : "ap_enable_operation_213", "FromFinalSV" : "14", "FromAddress" : "inputBuf_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state17_pp1_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_189", "ToInitialSV" : "11", "ToFinalState" : "ap_enable_state17_pp1_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_189", "ToFinalSV" : "11", "ToAddress" : "inputBuf_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp1_iter1_stage0", "ap_enable_state20_pp1_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state19_pp1_iter1_stage2", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_209", "FromInitialSV" : "13", "FromFinalState" : "ap_enable_state20_pp1_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter2", "FromFinalOperation" : "ap_enable_operation_213", "FromFinalSV" : "14", "FromAddress" : "inputBuf_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state17_pp1_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_194", "ToInitialSV" : "11", "ToFinalState" : "ap_enable_state17_pp1_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_194", "ToFinalSV" : "11", "ToAddress" : "inputBuf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp1_iter1_stage0", "ap_enable_state20_pp1_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state19_pp1_iter1_stage2", "FromInitialIteration" : "ap_enable_reg_pp1_iter1", "FromInitialOperation" : "ap_enable_operation_209", "FromInitialSV" : "13", "FromFinalState" : "ap_enable_state20_pp1_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter2", "FromFinalOperation" : "ap_enable_operation_213", "FromFinalSV" : "14", "FromAddress" : "inputBuf_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state18_pp1_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_199", "ToInitialSV" : "12", "ToFinalState" : "ap_enable_state18_pp1_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_199", "ToFinalSV" : "12", "ToAddress" : "inputBuf_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state18_pp1_iter1_stage1", "ap_enable_state21_pp1_iter2_stage1"]},
			{"FromInitialState" : "ap_enable_state21_pp1_iter2_stage1", "FromInitialIteration" : "ap_enable_reg_pp1_iter2", "FromInitialOperation" : "ap_enable_operation_219", "FromInitialSV" : "15", "FromFinalState" : "ap_enable_state22_pp1_iter2_stage2", "FromFinalIteration" : "ap_enable_reg_pp1_iter2", "FromFinalOperation" : "ap_enable_operation_220", "FromFinalSV" : "16", "FromAddress" : "inputBuf_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state17_pp1_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_189", "ToInitialSV" : "11", "ToFinalState" : "ap_enable_state17_pp1_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_189", "ToFinalSV" : "11", "ToAddress" : "inputBuf_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp1_iter1_stage0", "ap_enable_state20_pp1_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state21_pp1_iter2_stage1", "FromInitialIteration" : "ap_enable_reg_pp1_iter2", "FromInitialOperation" : "ap_enable_operation_219", "FromInitialSV" : "15", "FromFinalState" : "ap_enable_state22_pp1_iter2_stage2", "FromFinalIteration" : "ap_enable_reg_pp1_iter2", "FromFinalOperation" : "ap_enable_operation_220", "FromFinalSV" : "16", "FromAddress" : "inputBuf_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state17_pp1_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_194", "ToInitialSV" : "11", "ToFinalState" : "ap_enable_state17_pp1_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_194", "ToFinalSV" : "11", "ToAddress" : "inputBuf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state17_pp1_iter1_stage0", "ap_enable_state20_pp1_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state21_pp1_iter2_stage1", "FromInitialIteration" : "ap_enable_reg_pp1_iter2", "FromInitialOperation" : "ap_enable_operation_219", "FromInitialSV" : "15", "FromFinalState" : "ap_enable_state22_pp1_iter2_stage2", "FromFinalIteration" : "ap_enable_reg_pp1_iter2", "FromFinalOperation" : "ap_enable_operation_220", "FromFinalSV" : "16", "FromAddress" : "inputBuf_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state18_pp1_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp1_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter2", "ToInitialOperation" : "ap_enable_operation_199", "ToInitialSV" : "12", "ToFinalState" : "ap_enable_state18_pp1_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp1_iter1", "ToFinalOperation" : "ap_enable_operation_199", "ToFinalSV" : "12", "ToAddress" : "inputBuf_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "14", "II" : "3", "Pragma" : "(./../hw_library/stream_convolution_slideWindow.h:125:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state18_pp1_iter1_stage1", "ap_enable_state21_pp1_iter2_stage1"]}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inputBuf_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inElem_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cifar_10_mul_32s_bkb_U11", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cifar_10_mul_32s_cud_U12", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cifar_10_mul_32s_bkb_U13", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cifar_10_mul_32s_bkb_U14", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	SCIG {
		in_V_V {Type I LastRead 11 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	in_V_V { ap_fifo {  { in_V_V_dout fifo_data 0 32 }  { in_V_V_empty_n fifo_status 0 1 }  { in_V_V_read fifo_update 1 1 } } }
	out_V_V { ap_fifo {  { out_V_V_din fifo_data 1 32 }  { out_V_V_full_n fifo_status 0 1 }  { out_V_V_write fifo_update 1 1 } } }
}
