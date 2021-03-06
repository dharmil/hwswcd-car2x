# TCL File Generated by Component Editor 12.1
# Tue Oct 14 18:22:15 CEST 2014
# DO NOT MODIFY


# 
# prio_arbiter "prio_arbiter" v1.2
# null 2014.10.14.18:22:15
# 
# 

# 
# request TCL package from ACDS 11.0
# 
package require -exact sopc 11.0


# 
# module prio_arbiter
# 
set_module_property NAME prio_arbiter
set_module_property VERSION 1.2
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP TUM
set_module_property DISPLAY_NAME prio_arbiter
set_module_property TOP_LEVEL_HDL_FILE prio_arbiter.vhd
set_module_property TOP_LEVEL_HDL_MODULE prio_arbiter
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property STATIC_TOP_LEVEL_MODULE_NAME prio_arbiter
set_module_property FIX_110_VIP_PATH false
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# files
# 
add_file prio_arbiter.vhd {SYNTHESIS SIMULATION}


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
set_parameter_property SLAVE_ADDR_WIDTH HDL_PARAMETER true
add_parameter DATA_WIDTH INTEGER 32
set_parameter_property DATA_WIDTH DEFAULT_VALUE 32
set_parameter_property DATA_WIDTH DISPLAY_NAME DATA_WIDTH
set_parameter_property DATA_WIDTH TYPE INTEGER
set_parameter_property DATA_WIDTH ENABLED false
set_parameter_property DATA_WIDTH UNITS None
set_parameter_property DATA_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property DATA_WIDTH HDL_PARAMETER true
add_parameter MASTER_ADDR_WIDTH INTEGER 28
set_parameter_property MASTER_ADDR_WIDTH DEFAULT_VALUE 28
set_parameter_property MASTER_ADDR_WIDTH DISPLAY_NAME MASTER_ADDR_WIDTH
set_parameter_property MASTER_ADDR_WIDTH TYPE INTEGER
set_parameter_property MASTER_ADDR_WIDTH ENABLED false
set_parameter_property MASTER_ADDR_WIDTH UNITS None
set_parameter_property MASTER_ADDR_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property MASTER_ADDR_WIDTH HDL_PARAMETER true
add_parameter BYTE_ENABLE_BITS INTEGER 4
set_parameter_property BYTE_ENABLE_BITS DEFAULT_VALUE 4
set_parameter_property BYTE_ENABLE_BITS DISPLAY_NAME BYTE_ENABLE_BITS
set_parameter_property BYTE_ENABLE_BITS TYPE INTEGER
set_parameter_property BYTE_ENABLE_BITS ENABLED false
set_parameter_property BYTE_ENABLE_BITS UNITS None
set_parameter_property BYTE_ENABLE_BITS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property BYTE_ENABLE_BITS HDL_PARAMETER true
add_parameter NUM_OF_MASTERS INTEGER 4
set_parameter_property NUM_OF_MASTERS DEFAULT_VALUE 4
set_parameter_property NUM_OF_MASTERS DISPLAY_NAME NUM_OF_MASTERS
set_parameter_property NUM_OF_MASTERS TYPE INTEGER
set_parameter_property NUM_OF_MASTERS ENABLED false
set_parameter_property NUM_OF_MASTERS UNITS None
set_parameter_property NUM_OF_MASTERS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property NUM_OF_MASTERS HDL_PARAMETER true
add_parameter REQUEST_QUEUE_LENGTH INTEGER 24
set_parameter_property REQUEST_QUEUE_LENGTH DEFAULT_VALUE 24
set_parameter_property REQUEST_QUEUE_LENGTH DISPLAY_NAME REQUEST_QUEUE_LENGTH
set_parameter_property REQUEST_QUEUE_LENGTH TYPE INTEGER
set_parameter_property REQUEST_QUEUE_LENGTH UNITS None
set_parameter_property REQUEST_QUEUE_LENGTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property REQUEST_QUEUE_LENGTH HDL_PARAMETER true
add_parameter SLOT_TIME INTEGER 8
set_parameter_property SLOT_TIME DEFAULT_VALUE 8
set_parameter_property SLOT_TIME DISPLAY_NAME SLOT_TIME
set_parameter_property SLOT_TIME TYPE INTEGER
set_parameter_property SLOT_TIME UNITS None
set_parameter_property SLOT_TIME ALLOWED_RANGES -2147483648:2147483647
set_parameter_property SLOT_TIME HDL_PARAMETER true


# 
# display items
# 


# 
# connection point s0
# 
add_interface s0 avalon end
set_interface_property s0 addressAlignment DYNAMIC
set_interface_property s0 addressUnits WORDS
set_interface_property s0 associatedClock clock_sink
set_interface_property s0 associatedReset clockreset_reset
set_interface_property s0 bridgesToMaster m1
set_interface_property s0 burstOnBurstBoundariesOnly false
set_interface_property s0 explicitAddressSpan 0
set_interface_property s0 holdTime 0
set_interface_property s0 isMemoryDevice false
set_interface_property s0 isNonVolatileStorage false
set_interface_property s0 linewrapBursts false
set_interface_property s0 maximumPendingReadTransactions 1
set_interface_property s0 printableDevice false
set_interface_property s0 readLatency 0
set_interface_property s0 readWaitTime 1
set_interface_property s0 setupTime 0
set_interface_property s0 timingUnits Cycles
set_interface_property s0 writeWaitTime 0
set_interface_property s0 ENABLED true

add_interface_port s0 AVS_S0_CHIPSELECT chipselect Input 1
add_interface_port s0 AVS_S0_WRITE write Input 1
add_interface_port s0 AVS_S0_READ read Input 1
add_interface_port s0 AVS_S0_WRITEDATA writedata Input data_width
add_interface_port s0 AVS_S0_BYTEENABLE byteenable Input byte_enable_bits
add_interface_port s0 AVS_S0_READDATA readdata Output data_width
add_interface_port s0 AVS_S0_READDATAVALID readdatavalid Output 1
add_interface_port s0 AVS_S0_WAITREQUEST waitrequest Output 1
add_interface_port s0 AVS_S0_ADDRESS address Input slave_addr_width
set_interface_assignment s0 embeddedsw.configuration.isFlash 0
set_interface_assignment s0 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment s0 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment s0 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point s1
# 
add_interface s1 avalon end
set_interface_property s1 addressAlignment DYNAMIC
set_interface_property s1 addressUnits WORDS
set_interface_property s1 associatedClock clock_sink
set_interface_property s1 associatedReset clockreset_reset
set_interface_property s1 bridgesToMaster m1
set_interface_property s1 burstOnBurstBoundariesOnly false
set_interface_property s1 explicitAddressSpan 0
set_interface_property s1 holdTime 0
set_interface_property s1 isMemoryDevice false
set_interface_property s1 isNonVolatileStorage false
set_interface_property s1 linewrapBursts false
set_interface_property s1 maximumPendingReadTransactions 1
set_interface_property s1 printableDevice false
set_interface_property s1 readLatency 0
set_interface_property s1 readWaitTime 1
set_interface_property s1 setupTime 0
set_interface_property s1 timingUnits Cycles
set_interface_property s1 writeWaitTime 0
set_interface_property s1 ENABLED true

add_interface_port s1 AVS_S1_ADDRESS address Input slave_addr_width
add_interface_port s1 AVS_S1_CHIPSELECT chipselect Input 1
add_interface_port s1 AVS_S1_WRITE write Input 1
add_interface_port s1 AVS_S1_READ read Input 1
add_interface_port s1 AVS_S1_WRITEDATA writedata Input data_width
add_interface_port s1 AVS_S1_BYTEENABLE byteenable Input byte_enable_bits
add_interface_port s1 AVS_S1_READDATA readdata Output data_width
add_interface_port s1 AVS_S1_READDATAVALID readdatavalid Output 1
add_interface_port s1 AVS_S1_WAITREQUEST waitrequest Output 1
set_interface_assignment s1 embeddedsw.configuration.isFlash 0
set_interface_assignment s1 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment s1 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment s1 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point s2
# 
add_interface s2 avalon end
set_interface_property s2 addressAlignment DYNAMIC
set_interface_property s2 addressUnits WORDS
set_interface_property s2 associatedClock clock_sink
set_interface_property s2 associatedReset clockreset_reset
set_interface_property s2 bridgesToMaster m1
set_interface_property s2 burstOnBurstBoundariesOnly false
set_interface_property s2 explicitAddressSpan 0
set_interface_property s2 holdTime 0
set_interface_property s2 isMemoryDevice false
set_interface_property s2 isNonVolatileStorage false
set_interface_property s2 linewrapBursts false
set_interface_property s2 maximumPendingReadTransactions 1
set_interface_property s2 printableDevice false
set_interface_property s2 readLatency 0
set_interface_property s2 readWaitTime 1
set_interface_property s2 setupTime 0
set_interface_property s2 timingUnits Cycles
set_interface_property s2 writeWaitTime 0
set_interface_property s2 ENABLED true

add_interface_port s2 AVS_S2_ADDRESS address Input slave_addr_width
add_interface_port s2 AVS_S2_CHIPSELECT chipselect Input 1
add_interface_port s2 AVS_S2_WRITE write Input 1
add_interface_port s2 AVS_S2_READ read Input 1
add_interface_port s2 AVS_S2_WRITEDATA writedata Input data_width
add_interface_port s2 AVS_S2_BYTEENABLE byteenable Input byte_enable_bits
add_interface_port s2 AVS_S2_READDATA readdata Output data_width
add_interface_port s2 AVS_S2_READDATAVALID readdatavalid Output 1
add_interface_port s2 AVS_S2_WAITREQUEST waitrequest Output 1
set_interface_assignment s2 embeddedsw.configuration.isFlash 0
set_interface_assignment s2 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment s2 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment s2 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point s3
# 
add_interface s3 avalon end
set_interface_property s3 addressAlignment DYNAMIC
set_interface_property s3 addressUnits WORDS
set_interface_property s3 associatedClock clock_sink
set_interface_property s3 associatedReset clockreset_reset
set_interface_property s3 bridgesToMaster m1
set_interface_property s3 burstOnBurstBoundariesOnly false
set_interface_property s3 explicitAddressSpan 0
set_interface_property s3 holdTime 0
set_interface_property s3 isMemoryDevice false
set_interface_property s3 isNonVolatileStorage false
set_interface_property s3 linewrapBursts false
set_interface_property s3 maximumPendingReadTransactions 1
set_interface_property s3 printableDevice false
set_interface_property s3 readLatency 0
set_interface_property s3 readWaitTime 1
set_interface_property s3 setupTime 0
set_interface_property s3 timingUnits Cycles
set_interface_property s3 writeWaitTime 0
set_interface_property s3 ENABLED true

add_interface_port s3 AVS_S3_ADDRESS address Input slave_addr_width
add_interface_port s3 AVS_S3_CHIPSELECT chipselect Input 1
add_interface_port s3 AVS_S3_WRITE write Input 1
add_interface_port s3 AVS_S3_READ read Input 1
add_interface_port s3 AVS_S3_WRITEDATA writedata Input data_width
add_interface_port s3 AVS_S3_BYTEENABLE byteenable Input byte_enable_bits
add_interface_port s3 AVS_S3_READDATA readdata Output data_width
add_interface_port s3 AVS_S3_READDATAVALID readdatavalid Output 1
add_interface_port s3 AVS_S3_WAITREQUEST waitrequest Output 1
set_interface_assignment s3 embeddedsw.configuration.isFlash 0
set_interface_assignment s3 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment s3 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment s3 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point m1
# 
add_interface m1 avalon start
set_interface_property m1 addressUnits SYMBOLS
set_interface_property m1 associatedClock clock_sink
set_interface_property m1 associatedReset "clockreset_reset"
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

