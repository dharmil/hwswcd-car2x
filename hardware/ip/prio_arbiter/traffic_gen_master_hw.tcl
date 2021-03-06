# TCL File Generated by Component Editor 12.1sp1
# Mon Apr 07 10:19:17 CEST 2014
# DO NOT MODIFY


# 
# traffic_gen_simple_hw "traffic_gen_simple_hw" v1.3
# null 2014.04.07.10:19:17
# 
# 

# 
# request TCL package from ACDS 11.0
# 
package require -exact sopc 11.0


# 
# module traffic_gen_simple_hw
# 
set_module_property NAME traffic_gen_simple_hw
set_module_property VERSION 1.3
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property DISPLAY_NAME traffic_gen_simple_hw
set_module_property TOP_LEVEL_HDL_FILE traffic_gen_master.vhd
set_module_property TOP_LEVEL_HDL_MODULE traffic_gen_master
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property STATIC_TOP_LEVEL_MODULE_NAME traffic_gen_master
set_module_property FIX_110_VIP_PATH false
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# files
# 
add_file traffic_gen_master.vhd {SYNTHESIS SIMULATION}


# 
# file sets
# 

# 
# parameters
# 
add_parameter SLAVE_ADDR_WIDTH INTEGER 26
set_parameter_property SLAVE_ADDR_WIDTH DEFAULT_VALUE 26
set_parameter_property SLAVE_ADDR_WIDTH DISPLAY_NAME SLAVE_ADDR_WIDTH
set_parameter_property SLAVE_ADDR_WIDTH TYPE INTEGER
set_parameter_property SLAVE_ADDR_WIDTH ENABLED false
set_parameter_property SLAVE_ADDR_WIDTH UNITS None
set_parameter_property SLAVE_ADDR_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property SLAVE_ADDR_WIDTH AFFECTS_GENERATION false
set_parameter_property SLAVE_ADDR_WIDTH HDL_PARAMETER true
add_parameter DATA_WIDTH INTEGER 32
set_parameter_property DATA_WIDTH DEFAULT_VALUE 32
set_parameter_property DATA_WIDTH DISPLAY_NAME DATA_WIDTH
set_parameter_property DATA_WIDTH TYPE INTEGER
set_parameter_property DATA_WIDTH ENABLED false
set_parameter_property DATA_WIDTH UNITS None
set_parameter_property DATA_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property DATA_WIDTH AFFECTS_GENERATION false
set_parameter_property DATA_WIDTH HDL_PARAMETER true
add_parameter MASTER_ADDR_WIDTH INTEGER 28
set_parameter_property MASTER_ADDR_WIDTH DEFAULT_VALUE 28
set_parameter_property MASTER_ADDR_WIDTH DISPLAY_NAME MASTER_ADDR_WIDTH
set_parameter_property MASTER_ADDR_WIDTH TYPE INTEGER
set_parameter_property MASTER_ADDR_WIDTH ENABLED false
set_parameter_property MASTER_ADDR_WIDTH UNITS None
set_parameter_property MASTER_ADDR_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property MASTER_ADDR_WIDTH AFFECTS_GENERATION false
set_parameter_property MASTER_ADDR_WIDTH HDL_PARAMETER true
add_parameter BYTE_ENABLE_BITS INTEGER 4
set_parameter_property BYTE_ENABLE_BITS DEFAULT_VALUE 4
set_parameter_property BYTE_ENABLE_BITS DISPLAY_NAME BYTE_ENABLE_BITS
set_parameter_property BYTE_ENABLE_BITS TYPE INTEGER
set_parameter_property BYTE_ENABLE_BITS ENABLED false
set_parameter_property BYTE_ENABLE_BITS UNITS None
set_parameter_property BYTE_ENABLE_BITS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property BYTE_ENABLE_BITS AFFECTS_GENERATION false
set_parameter_property BYTE_ENABLE_BITS HDL_PARAMETER true
add_parameter MAX_WORD_NUMBER INTEGER 1024
set_parameter_property MAX_WORD_NUMBER DEFAULT_VALUE 1024
set_parameter_property MAX_WORD_NUMBER DISPLAY_NAME MAX_WORD_NUMBER
set_parameter_property MAX_WORD_NUMBER TYPE INTEGER
set_parameter_property MAX_WORD_NUMBER UNITS None
set_parameter_property MAX_WORD_NUMBER ALLOWED_RANGES -2147483648:2147483647
set_parameter_property MAX_WORD_NUMBER AFFECTS_GENERATION false
set_parameter_property MAX_WORD_NUMBER HDL_PARAMETER true
add_parameter START_ADDRESS INTEGER 0
set_parameter_property START_ADDRESS DEFAULT_VALUE 0
set_parameter_property START_ADDRESS DISPLAY_NAME START_ADDRESS
set_parameter_property START_ADDRESS TYPE INTEGER
set_parameter_property START_ADDRESS UNITS None
set_parameter_property START_ADDRESS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property START_ADDRESS AFFECTS_GENERATION false
set_parameter_property START_ADDRESS HDL_PARAMETER true
add_parameter START_DATA INTEGER 0
set_parameter_property START_DATA DEFAULT_VALUE 0
set_parameter_property START_DATA DISPLAY_NAME START_DATA
set_parameter_property START_DATA TYPE INTEGER
set_parameter_property START_DATA UNITS None
set_parameter_property START_DATA ALLOWED_RANGES -2147483648:2147483647
set_parameter_property START_DATA AFFECTS_GENERATION false
set_parameter_property START_DATA HDL_PARAMETER true
add_parameter BLOCK_WIDTH INTEGER 8
set_parameter_property BLOCK_WIDTH DEFAULT_VALUE 8
set_parameter_property BLOCK_WIDTH DISPLAY_NAME BLOCK_WIDTH
set_parameter_property BLOCK_WIDTH TYPE INTEGER
set_parameter_property BLOCK_WIDTH UNITS None
set_parameter_property BLOCK_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property BLOCK_WIDTH AFFECTS_GENERATION false
set_parameter_property BLOCK_WIDTH HDL_PARAMETER true


# 
# display items
# 


# 
# connection point m1
# 
add_interface m1 avalon start
set_interface_property m1 addressUnits SYMBOLS
set_interface_property m1 associatedClock clock_sink
set_interface_property m1 associatedReset clockreset_reset
set_interface_property m1 burstOnBurstBoundariesOnly false
set_interface_property m1 doStreamReads false
set_interface_property m1 doStreamWrites false
set_interface_property m1 linewrapBursts false
set_interface_property m1 readLatency 0
set_interface_property m1 ENABLED true

add_interface_port m1 AVM_M1_ADDRESS address Output master_addr_width
add_interface_port m1 AVM_M1_READ read Output 1
add_interface_port m1 AVM_M1_WRITE write Output 1
add_interface_port m1 AVM_M1_WRITEDATA writedata Output data_width
add_interface_port m1 AVM_M1_BYTEENABLE byteenable Output byte_enable_bits
add_interface_port m1 AVM_M1_READDATA readdata Input data_width
add_interface_port m1 AVM_M1_WAITREQUEST waitrequest Input 1
add_interface_port m1 AVM_M1_READDATAVALID readdatavalid Input 1


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true

add_interface_port clock_sink csi_clockreset_CLK clk Input 1


# 
# connection point clockreset_reset
# 
add_interface clockreset_reset reset end
set_interface_property clockreset_reset associatedClock clock_sink
set_interface_property clockreset_reset synchronousEdges DEASSERT
set_interface_property clockreset_reset ENABLED true

add_interface_port clockreset_reset csi_clockreset_RESET_n reset_n Input 1


# 
# connection point error
# 
add_interface error conduit end
set_interface_property error associatedClock clock_sink
set_interface_property error associatedReset clockreset_reset
set_interface_property error ENABLED true

add_interface_port error coe_export_error export Output 1

