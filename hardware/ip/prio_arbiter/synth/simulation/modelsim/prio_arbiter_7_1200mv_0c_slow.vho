-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Web Edition"

-- DATE "06/10/2014 09:08:18"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	prio_arbiter IS
    PORT (
	csi_clockreset_CLK : IN std_logic;
	csi_clockreset_RESET_n : IN std_logic;
	AVS_S0_ADDRESS : IN std_logic_vector(25 DOWNTO 0);
	AVS_S0_CHIPSELECT : IN std_logic;
	AVS_S0_WRITE : IN std_logic;
	AVS_S0_READ : IN std_logic;
	AVS_S0_WRITEDATA : IN std_logic_vector(31 DOWNTO 0);
	AVS_S0_BYTEENABLE : IN std_logic_vector(3 DOWNTO 0);
	AVS_S0_READDATA : OUT std_logic_vector(31 DOWNTO 0);
	AVS_S0_READDATAVALID : OUT std_logic;
	AVS_S0_WAITREQUEST : OUT std_logic;
	AVS_S1_ADDRESS : IN std_logic_vector(25 DOWNTO 0);
	AVS_S1_CHIPSELECT : IN std_logic;
	AVS_S1_WRITE : IN std_logic;
	AVS_S1_READ : IN std_logic;
	AVS_S1_WRITEDATA : IN std_logic_vector(31 DOWNTO 0);
	AVS_S1_BYTEENABLE : IN std_logic_vector(3 DOWNTO 0);
	AVS_S1_READDATA : OUT std_logic_vector(31 DOWNTO 0);
	AVS_S1_READDATAVALID : OUT std_logic;
	AVS_S1_WAITREQUEST : OUT std_logic;
	AVS_S2_ADDRESS : IN std_logic_vector(25 DOWNTO 0);
	AVS_S2_CHIPSELECT : IN std_logic;
	AVS_S2_WRITE : IN std_logic;
	AVS_S2_READ : IN std_logic;
	AVS_S2_WRITEDATA : IN std_logic_vector(31 DOWNTO 0);
	AVS_S2_BYTEENABLE : IN std_logic_vector(3 DOWNTO 0);
	AVS_S2_READDATA : OUT std_logic_vector(31 DOWNTO 0);
	AVS_S2_READDATAVALID : OUT std_logic;
	AVS_S2_WAITREQUEST : OUT std_logic;
	AVS_S3_ADDRESS : IN std_logic_vector(25 DOWNTO 0);
	AVS_S3_CHIPSELECT : IN std_logic;
	AVS_S3_WRITE : IN std_logic;
	AVS_S3_READ : IN std_logic;
	AVS_S3_WRITEDATA : IN std_logic_vector(31 DOWNTO 0);
	AVS_S3_BYTEENABLE : IN std_logic_vector(3 DOWNTO 0);
	AVS_S3_READDATA : OUT std_logic_vector(31 DOWNTO 0);
	AVS_S3_READDATAVALID : OUT std_logic;
	AVS_S3_WAITREQUEST : OUT std_logic;
	AVM_M1_ADDRESS : OUT std_logic_vector(27 DOWNTO 0);
	AVM_M1_READ : OUT std_logic;
	AVM_M1_WRITE : OUT std_logic;
	AVM_M1_WRITEDATA : OUT std_logic_vector(31 DOWNTO 0);
	AVM_M1_BYTEENABLE : OUT std_logic_vector(3 DOWNTO 0);
	AVM_M1_READDATA : IN std_logic_vector(31 DOWNTO 0);
	AVM_M1_WAITREQUEST : IN std_logic;
	AVM_M1_READDATAVALID : IN std_logic
	);
END prio_arbiter;

-- Design Ports Information
-- AVS_S0_READDATA[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[1]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[2]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[3]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[5]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[6]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[7]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[8]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[9]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[10]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[11]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[12]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[13]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[14]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[15]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[16]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[17]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[18]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[19]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[20]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[21]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[22]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[23]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[24]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[25]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[26]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[27]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[28]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[29]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[30]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATA[31]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READDATAVALID	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WAITREQUEST	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[0]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[1]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[2]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[4]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[5]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[6]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[7]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[8]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[9]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[10]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[11]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[12]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[13]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[14]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[15]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[16]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[17]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[18]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[19]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[20]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[21]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[22]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[23]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[24]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[25]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[26]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[27]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[28]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[29]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[30]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATA[31]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READDATAVALID	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WAITREQUEST	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[0]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[1]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[2]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[6]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[7]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[8]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[9]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[10]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[11]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[12]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[13]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[14]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[15]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[16]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[17]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[18]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[19]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[20]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[21]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[22]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[23]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[24]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[25]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[26]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[27]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[28]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[29]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[30]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATA[31]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READDATAVALID	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WAITREQUEST	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[0]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[1]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[2]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[6]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[7]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[8]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[9]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[10]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[11]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[12]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[13]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[14]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[15]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[16]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[17]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[18]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[19]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[20]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[21]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[22]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[23]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[24]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[25]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[26]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[27]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[28]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[29]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[30]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATA[31]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READDATAVALID	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WAITREQUEST	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[1]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[2]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[6]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[8]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[9]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[10]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[12]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[13]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[14]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[15]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[16]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[17]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[18]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[19]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[20]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[21]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[22]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[23]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[24]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[25]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[26]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_ADDRESS[27]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READ	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITE	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[1]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[2]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[3]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[7]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[8]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[9]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[10]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[11]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[12]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[13]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[14]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[15]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[16]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[17]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[18]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[19]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[20]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[21]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[22]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[23]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[24]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[25]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[26]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[27]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[28]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[29]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[30]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WRITEDATA[31]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_BYTEENABLE[0]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_BYTEENABLE[1]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_BYTEENABLE[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_BYTEENABLE[3]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[0]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[1]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[4]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[5]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[6]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[8]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[9]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[10]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[11]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[12]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[13]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[14]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[15]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[16]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[17]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[18]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[19]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[20]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[21]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[22]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[23]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[24]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[25]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[26]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[27]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[28]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[29]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[30]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATA[31]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_READDATAVALID	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_CHIPSELECT	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_CHIPSELECT	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_CHIPSELECT	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_CHIPSELECT	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVM_M1_WAITREQUEST	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_BYTEENABLE[1]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_BYTEENABLE[1]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_BYTEENABLE[1]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_BYTEENABLE[1]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_BYTEENABLE[0]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_BYTEENABLE[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_BYTEENABLE[0]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_BYTEENABLE[0]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_BYTEENABLE[3]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_BYTEENABLE[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_BYTEENABLE[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_BYTEENABLE[3]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_BYTEENABLE[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_BYTEENABLE[2]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_BYTEENABLE[2]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_BYTEENABLE[2]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[0]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[0]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[1]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[1]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[1]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[1]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[2]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[2]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[2]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[2]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[3]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[3]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[3]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[3]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[4]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[4]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[4]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[4]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[5]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[5]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[6]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[6]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[6]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[7]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[7]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[7]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[8]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[8]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[8]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[8]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[9]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[9]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[9]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[9]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[10]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[10]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[10]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[10]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[11]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[11]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[11]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[11]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[12]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[12]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[12]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[12]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[13]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[13]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[13]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[13]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[14]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[14]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[14]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[14]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[15]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[15]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[15]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[15]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[16]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[16]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[16]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[16]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[17]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[17]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[17]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[17]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[18]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[18]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[18]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[18]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[19]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[19]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[19]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[19]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[20]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[20]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[20]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[20]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[21]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[21]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[21]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[21]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[22]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[22]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[22]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[22]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[23]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[23]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[23]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[23]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[24]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[24]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[24]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[24]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_ADDRESS[25]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_ADDRESS[25]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_ADDRESS[25]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_ADDRESS[25]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_READ	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_READ	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_READ	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_READ	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITE	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITE	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITE	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITE	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[0]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[0]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[1]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[1]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[1]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[2]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[2]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[2]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[5]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[7]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[8]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[8]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[8]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[8]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[9]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[9]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[9]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[9]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[10]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[10]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[10]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[10]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[11]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[11]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[11]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[11]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[12]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[12]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[12]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[12]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[13]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[13]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[13]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[13]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[14]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[14]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[14]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[14]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[15]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[15]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[15]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[15]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[16]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[16]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[16]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[16]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[17]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[17]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[17]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[17]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[18]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[18]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[18]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[18]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[19]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[19]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[19]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[19]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[20]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[20]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[20]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[20]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[21]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[21]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[21]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[21]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[22]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[22]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[22]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[22]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[23]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[23]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[23]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[23]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[24]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[24]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[24]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[24]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[25]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[25]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[25]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[25]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[26]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[26]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[26]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[26]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[27]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[27]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[27]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[27]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[28]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[28]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[28]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[28]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[29]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[29]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[29]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[29]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[30]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[30]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[30]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[30]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S1_WRITEDATA[31]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S2_WRITEDATA[31]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S0_WRITEDATA[31]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AVS_S3_WRITEDATA[31]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- csi_clockreset_CLK	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- csi_clockreset_RESET_n	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF prio_arbiter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_csi_clockreset_CLK : std_logic;
SIGNAL ww_csi_clockreset_RESET_n : std_logic;
SIGNAL ww_AVS_S0_ADDRESS : std_logic_vector(25 DOWNTO 0);
SIGNAL ww_AVS_S0_CHIPSELECT : std_logic;
SIGNAL ww_AVS_S0_WRITE : std_logic;
SIGNAL ww_AVS_S0_READ : std_logic;
SIGNAL ww_AVS_S0_WRITEDATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_AVS_S0_BYTEENABLE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AVS_S0_READDATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_AVS_S0_READDATAVALID : std_logic;
SIGNAL ww_AVS_S0_WAITREQUEST : std_logic;
SIGNAL ww_AVS_S1_ADDRESS : std_logic_vector(25 DOWNTO 0);
SIGNAL ww_AVS_S1_CHIPSELECT : std_logic;
SIGNAL ww_AVS_S1_WRITE : std_logic;
SIGNAL ww_AVS_S1_READ : std_logic;
SIGNAL ww_AVS_S1_WRITEDATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_AVS_S1_BYTEENABLE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AVS_S1_READDATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_AVS_S1_READDATAVALID : std_logic;
SIGNAL ww_AVS_S1_WAITREQUEST : std_logic;
SIGNAL ww_AVS_S2_ADDRESS : std_logic_vector(25 DOWNTO 0);
SIGNAL ww_AVS_S2_CHIPSELECT : std_logic;
SIGNAL ww_AVS_S2_WRITE : std_logic;
SIGNAL ww_AVS_S2_READ : std_logic;
SIGNAL ww_AVS_S2_WRITEDATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_AVS_S2_BYTEENABLE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AVS_S2_READDATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_AVS_S2_READDATAVALID : std_logic;
SIGNAL ww_AVS_S2_WAITREQUEST : std_logic;
SIGNAL ww_AVS_S3_ADDRESS : std_logic_vector(25 DOWNTO 0);
SIGNAL ww_AVS_S3_CHIPSELECT : std_logic;
SIGNAL ww_AVS_S3_WRITE : std_logic;
SIGNAL ww_AVS_S3_READ : std_logic;
SIGNAL ww_AVS_S3_WRITEDATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_AVS_S3_BYTEENABLE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AVS_S3_READDATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_AVS_S3_READDATAVALID : std_logic;
SIGNAL ww_AVS_S3_WAITREQUEST : std_logic;
SIGNAL ww_AVM_M1_ADDRESS : std_logic_vector(27 DOWNTO 0);
SIGNAL ww_AVM_M1_READ : std_logic;
SIGNAL ww_AVM_M1_WRITE : std_logic;
SIGNAL ww_AVM_M1_WRITEDATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_AVM_M1_BYTEENABLE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AVM_M1_READDATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_AVM_M1_WAITREQUEST : std_logic;
SIGNAL ww_AVM_M1_READDATAVALID : std_logic;
SIGNAL \csi_clockreset_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \csi_clockreset_RESET_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \time_left~1_combout\ : std_logic;
SIGNAL \AVS_S0_BYTEENABLE[1]~input_o\ : std_logic;
SIGNAL \AVS_S3_BYTEENABLE[1]~input_o\ : std_logic;
SIGNAL \AVS_S1_BYTEENABLE[0]~input_o\ : std_logic;
SIGNAL \AVS_S2_BYTEENABLE[0]~input_o\ : std_logic;
SIGNAL \AVS_S1_BYTEENABLE[3]~input_o\ : std_logic;
SIGNAL \AVS_S3_BYTEENABLE[3]~input_o\ : std_logic;
SIGNAL \AVS_S1_BYTEENABLE[2]~input_o\ : std_logic;
SIGNAL \AVS_S2_BYTEENABLE[2]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[8]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[13]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[14]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[16]~input_o\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[17]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[18]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[19]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[20]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[21]~input_o\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[23]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[24]~input_o\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[25]~input_o\ : std_logic;
SIGNAL \AVS_S0_READ~input_o\ : std_logic;
SIGNAL \AVS_S3_READ~input_o\ : std_logic;
SIGNAL \AVS_S3_WRITE~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[1]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[4]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[6]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[7]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[9]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[10]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[11]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[12]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[13]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[14]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[15]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[16]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[17]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[18]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[19]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[20]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[21]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[25]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[27]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[28]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[29]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[30]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[31]~input_o\ : std_logic;
SIGNAL \csi_clockreset_CLK~input_o\ : std_logic;
SIGNAL \csi_clockreset_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \AVS_S0_READDATA[0]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[1]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[2]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[3]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[4]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[5]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[6]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[7]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[8]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[9]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[10]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[11]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[12]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[13]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[14]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[15]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[16]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[17]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[18]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[19]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[20]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[21]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[22]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[23]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[24]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[25]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[26]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[27]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[28]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[29]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[30]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATA[31]~output_o\ : std_logic;
SIGNAL \AVS_S0_READDATAVALID~output_o\ : std_logic;
SIGNAL \AVS_S0_WAITREQUEST~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[0]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[1]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[2]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[3]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[4]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[5]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[6]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[7]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[8]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[9]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[10]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[11]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[12]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[13]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[14]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[15]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[16]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[17]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[18]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[19]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[20]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[21]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[22]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[23]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[24]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[25]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[26]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[27]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[28]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[29]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[30]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATA[31]~output_o\ : std_logic;
SIGNAL \AVS_S1_READDATAVALID~output_o\ : std_logic;
SIGNAL \AVS_S1_WAITREQUEST~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[0]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[1]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[2]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[3]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[4]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[5]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[6]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[7]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[8]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[9]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[10]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[11]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[12]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[13]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[14]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[15]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[16]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[17]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[18]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[19]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[20]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[21]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[22]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[23]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[24]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[25]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[26]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[27]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[28]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[29]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[30]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATA[31]~output_o\ : std_logic;
SIGNAL \AVS_S2_READDATAVALID~output_o\ : std_logic;
SIGNAL \AVS_S2_WAITREQUEST~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[0]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[1]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[2]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[3]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[4]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[5]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[6]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[7]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[8]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[9]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[10]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[11]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[12]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[13]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[14]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[15]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[16]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[17]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[18]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[19]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[20]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[21]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[22]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[23]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[24]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[25]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[26]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[27]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[28]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[29]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[30]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATA[31]~output_o\ : std_logic;
SIGNAL \AVS_S3_READDATAVALID~output_o\ : std_logic;
SIGNAL \AVS_S3_WAITREQUEST~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[0]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[1]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[2]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[3]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[4]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[5]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[6]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[7]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[8]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[9]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[10]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[11]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[12]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[13]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[14]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[15]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[16]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[17]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[18]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[19]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[20]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[21]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[22]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[23]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[24]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[25]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[26]~output_o\ : std_logic;
SIGNAL \AVM_M1_ADDRESS[27]~output_o\ : std_logic;
SIGNAL \AVM_M1_READ~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITE~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[0]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[1]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[2]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[3]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[4]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[5]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[6]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[7]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[8]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[9]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[10]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[11]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[12]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[13]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[14]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[15]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[16]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[17]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[18]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[19]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[20]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[21]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[22]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[23]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[24]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[25]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[26]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[27]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[28]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[29]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[30]~output_o\ : std_logic;
SIGNAL \AVM_M1_WRITEDATA[31]~output_o\ : std_logic;
SIGNAL \AVM_M1_BYTEENABLE[0]~output_o\ : std_logic;
SIGNAL \AVM_M1_BYTEENABLE[1]~output_o\ : std_logic;
SIGNAL \AVM_M1_BYTEENABLE[2]~output_o\ : std_logic;
SIGNAL \AVM_M1_BYTEENABLE[3]~output_o\ : std_logic;
SIGNAL \AVM_M1_READDATA[0]~input_o\ : std_logic;
SIGNAL \AVS_S3_CHIPSELECT~input_o\ : std_logic;
SIGNAL \AVS_S2_CHIPSELECT~input_o\ : std_logic;
SIGNAL \selected_master[1]~3_combout\ : std_logic;
SIGNAL \time_left[0]~3_combout\ : std_logic;
SIGNAL \csi_clockreset_RESET_n~input_o\ : std_logic;
SIGNAL \csi_clockreset_RESET_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \time_left[2]~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \change_master~q\ : std_logic;
SIGNAL \selected_master[1]~4_combout\ : std_logic;
SIGNAL \AVS_S1_CHIPSELECT~input_o\ : std_logic;
SIGNAL \selected_master[0]~1_combout\ : std_logic;
SIGNAL \selected_master[0]~2_combout\ : std_logic;
SIGNAL \read_data~0_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[1]~input_o\ : std_logic;
SIGNAL \read_data~1_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[2]~input_o\ : std_logic;
SIGNAL \read_data~2_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[3]~input_o\ : std_logic;
SIGNAL \read_data~3_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[4]~input_o\ : std_logic;
SIGNAL \read_data~4_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[5]~input_o\ : std_logic;
SIGNAL \read_data~5_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[6]~input_o\ : std_logic;
SIGNAL \read_data~6_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[7]~input_o\ : std_logic;
SIGNAL \read_data~7_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[8]~input_o\ : std_logic;
SIGNAL \read_data~8_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[9]~input_o\ : std_logic;
SIGNAL \read_data~9_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[10]~input_o\ : std_logic;
SIGNAL \read_data~10_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[11]~input_o\ : std_logic;
SIGNAL \read_data~11_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[12]~input_o\ : std_logic;
SIGNAL \read_data~12_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[13]~input_o\ : std_logic;
SIGNAL \read_data~13_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[14]~input_o\ : std_logic;
SIGNAL \read_data~14_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[15]~input_o\ : std_logic;
SIGNAL \read_data~15_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[16]~input_o\ : std_logic;
SIGNAL \read_data~16_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[17]~input_o\ : std_logic;
SIGNAL \read_data~17_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[18]~input_o\ : std_logic;
SIGNAL \read_data~18_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[19]~input_o\ : std_logic;
SIGNAL \read_data~19_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[20]~input_o\ : std_logic;
SIGNAL \read_data~20_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[21]~input_o\ : std_logic;
SIGNAL \read_data~21_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[22]~input_o\ : std_logic;
SIGNAL \read_data~22_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[23]~input_o\ : std_logic;
SIGNAL \read_data~23_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[24]~input_o\ : std_logic;
SIGNAL \read_data~24_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[25]~input_o\ : std_logic;
SIGNAL \read_data~25_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[26]~input_o\ : std_logic;
SIGNAL \read_data~26_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[27]~input_o\ : std_logic;
SIGNAL \read_data~27_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[28]~input_o\ : std_logic;
SIGNAL \read_data~28_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[29]~input_o\ : std_logic;
SIGNAL \read_data~29_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[30]~input_o\ : std_logic;
SIGNAL \read_data~30_combout\ : std_logic;
SIGNAL \AVM_M1_READDATA[31]~input_o\ : std_logic;
SIGNAL \read_data~31_combout\ : std_logic;
SIGNAL \AVM_M1_READDATAVALID~input_o\ : std_logic;
SIGNAL \read_valid~0_combout\ : std_logic;
SIGNAL \master_found_r~q\ : std_logic;
SIGNAL \master_found~0_combout\ : std_logic;
SIGNAL \AVM_M1_WAITREQUEST~input_o\ : std_logic;
SIGNAL \slave_out~0_combout\ : std_logic;
SIGNAL \read_data~32_combout\ : std_logic;
SIGNAL \read_data~33_combout\ : std_logic;
SIGNAL \read_data~34_combout\ : std_logic;
SIGNAL \read_data~35_combout\ : std_logic;
SIGNAL \read_data~36_combout\ : std_logic;
SIGNAL \read_data~37_combout\ : std_logic;
SIGNAL \read_data~38_combout\ : std_logic;
SIGNAL \read_data~39_combout\ : std_logic;
SIGNAL \read_data~40_combout\ : std_logic;
SIGNAL \read_data~41_combout\ : std_logic;
SIGNAL \read_data~42_combout\ : std_logic;
SIGNAL \read_data~43_combout\ : std_logic;
SIGNAL \read_data~44_combout\ : std_logic;
SIGNAL \read_data~45_combout\ : std_logic;
SIGNAL \read_data~46_combout\ : std_logic;
SIGNAL \read_data~47_combout\ : std_logic;
SIGNAL \read_data~48_combout\ : std_logic;
SIGNAL \read_data~49_combout\ : std_logic;
SIGNAL \read_data~50_combout\ : std_logic;
SIGNAL \read_data~51_combout\ : std_logic;
SIGNAL \read_data~52_combout\ : std_logic;
SIGNAL \read_data~53_combout\ : std_logic;
SIGNAL \read_data~54_combout\ : std_logic;
SIGNAL \read_data~55_combout\ : std_logic;
SIGNAL \read_data~56_combout\ : std_logic;
SIGNAL \read_data~57_combout\ : std_logic;
SIGNAL \read_data~58_combout\ : std_logic;
SIGNAL \read_data~59_combout\ : std_logic;
SIGNAL \read_data~60_combout\ : std_logic;
SIGNAL \read_data~61_combout\ : std_logic;
SIGNAL \read_data~62_combout\ : std_logic;
SIGNAL \read_data~63_combout\ : std_logic;
SIGNAL \read_valid~1_combout\ : std_logic;
SIGNAL \slave_out~1_combout\ : std_logic;
SIGNAL \read_data~64_combout\ : std_logic;
SIGNAL \read_data~65_combout\ : std_logic;
SIGNAL \read_data~66_combout\ : std_logic;
SIGNAL \read_data~67_combout\ : std_logic;
SIGNAL \read_data~68_combout\ : std_logic;
SIGNAL \read_data~69_combout\ : std_logic;
SIGNAL \read_data~70_combout\ : std_logic;
SIGNAL \read_data~71_combout\ : std_logic;
SIGNAL \read_data~72_combout\ : std_logic;
SIGNAL \read_data~73_combout\ : std_logic;
SIGNAL \read_data~74_combout\ : std_logic;
SIGNAL \read_data~75_combout\ : std_logic;
SIGNAL \read_data~76_combout\ : std_logic;
SIGNAL \read_data~77_combout\ : std_logic;
SIGNAL \read_data~78_combout\ : std_logic;
SIGNAL \read_data~79_combout\ : std_logic;
SIGNAL \read_data~80_combout\ : std_logic;
SIGNAL \read_data~81_combout\ : std_logic;
SIGNAL \read_data~82_combout\ : std_logic;
SIGNAL \read_data~83_combout\ : std_logic;
SIGNAL \read_data~84_combout\ : std_logic;
SIGNAL \read_data~85_combout\ : std_logic;
SIGNAL \read_data~86_combout\ : std_logic;
SIGNAL \read_data~87_combout\ : std_logic;
SIGNAL \read_data~88_combout\ : std_logic;
SIGNAL \read_data~89_combout\ : std_logic;
SIGNAL \read_data~90_combout\ : std_logic;
SIGNAL \read_data~91_combout\ : std_logic;
SIGNAL \read_data~92_combout\ : std_logic;
SIGNAL \read_data~93_combout\ : std_logic;
SIGNAL \read_data~94_combout\ : std_logic;
SIGNAL \read_data~95_combout\ : std_logic;
SIGNAL \read_valid~2_combout\ : std_logic;
SIGNAL \slave_out~2_combout\ : std_logic;
SIGNAL \read_data~96_combout\ : std_logic;
SIGNAL \read_data~97_combout\ : std_logic;
SIGNAL \read_data~98_combout\ : std_logic;
SIGNAL \read_data~99_combout\ : std_logic;
SIGNAL \read_data~100_combout\ : std_logic;
SIGNAL \read_data~101_combout\ : std_logic;
SIGNAL \read_data~102_combout\ : std_logic;
SIGNAL \read_data~103_combout\ : std_logic;
SIGNAL \read_data~104_combout\ : std_logic;
SIGNAL \read_data~105_combout\ : std_logic;
SIGNAL \read_data~106_combout\ : std_logic;
SIGNAL \read_data~107_combout\ : std_logic;
SIGNAL \read_data~108_combout\ : std_logic;
SIGNAL \read_data~109_combout\ : std_logic;
SIGNAL \read_data~110_combout\ : std_logic;
SIGNAL \read_data~111_combout\ : std_logic;
SIGNAL \read_data~112_combout\ : std_logic;
SIGNAL \read_data~113_combout\ : std_logic;
SIGNAL \read_data~114_combout\ : std_logic;
SIGNAL \read_data~115_combout\ : std_logic;
SIGNAL \read_data~116_combout\ : std_logic;
SIGNAL \read_data~117_combout\ : std_logic;
SIGNAL \read_data~118_combout\ : std_logic;
SIGNAL \read_data~119_combout\ : std_logic;
SIGNAL \read_data~120_combout\ : std_logic;
SIGNAL \read_data~121_combout\ : std_logic;
SIGNAL \read_data~122_combout\ : std_logic;
SIGNAL \read_data~123_combout\ : std_logic;
SIGNAL \read_data~124_combout\ : std_logic;
SIGNAL \read_data~125_combout\ : std_logic;
SIGNAL \read_data~126_combout\ : std_logic;
SIGNAL \read_data~127_combout\ : std_logic;
SIGNAL \read_valid~3_combout\ : std_logic;
SIGNAL \slave_out~3_combout\ : std_logic;
SIGNAL \AVS_S0_BYTEENABLE[3]~input_o\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \AVS_S2_BYTEENABLE[3]~input_o\ : std_logic;
SIGNAL \Mux60~1_combout\ : std_logic;
SIGNAL \AVS_S3_BYTEENABLE[2]~input_o\ : std_logic;
SIGNAL \AVS_S0_BYTEENABLE[2]~input_o\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \AVS_S1_BYTEENABLE[1]~input_o\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \AVS_S2_BYTEENABLE[1]~input_o\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \AVS_S3_BYTEENABLE[0]~input_o\ : std_logic;
SIGNAL \AVS_S0_BYTEENABLE[0]~input_o\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Mux63~1_combout\ : std_logic;
SIGNAL \AVM_M1_ADDRESS~0_combout\ : std_logic;
SIGNAL \AVM_M1_ADDRESS~1_combout\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[0]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[0]~input_o\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[0]~input_o\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[0]~input_o\ : std_logic;
SIGNAL \Mux59~1_combout\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[1]~input_o\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[1]~input_o\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[1]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[1]~input_o\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[2]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[2]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[2]~input_o\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[2]~input_o\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[3]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[3]~input_o\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[3]~input_o\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[3]~input_o\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[4]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[4]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[4]~input_o\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[4]~input_o\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[5]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[5]~input_o\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[5]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[5]~input_o\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[6]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[6]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[6]~input_o\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[6]~input_o\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[7]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[7]~input_o\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[7]~input_o\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[7]~input_o\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[8]~input_o\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[8]~input_o\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[8]~input_o\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[9]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[9]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[9]~input_o\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[9]~input_o\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[10]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[10]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[10]~input_o\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[10]~input_o\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[11]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[11]~input_o\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[11]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[11]~input_o\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[12]~input_o\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[12]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[12]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[12]~input_o\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux47~1_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[13]~input_o\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[13]~input_o\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[13]~input_o\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[14]~input_o\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[14]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[14]~input_o\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[15]~input_o\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[15]~input_o\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[15]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[15]~input_o\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[16]~input_o\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[16]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[16]~input_o\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[17]~input_o\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[17]~input_o\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[17]~input_o\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[18]~input_o\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[18]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[18]~input_o\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[19]~input_o\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[19]~input_o\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[19]~input_o\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[20]~input_o\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[20]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[20]~input_o\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[21]~input_o\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[21]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[21]~input_o\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[22]~input_o\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[22]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[22]~input_o\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[22]~input_o\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[23]~input_o\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[23]~input_o\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[23]~input_o\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[24]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[24]~input_o\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \AVS_S2_ADDRESS[24]~input_o\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \AVS_S0_ADDRESS[25]~input_o\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \AVS_S3_ADDRESS[25]~input_o\ : std_logic;
SIGNAL \AVS_S1_ADDRESS[25]~input_o\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \AVS_S0_CHIPSELECT~input_o\ : std_logic;
SIGNAL \selected_master[1]~0_combout\ : std_logic;
SIGNAL \AVS_S2_READ~input_o\ : std_logic;
SIGNAL \AVS_S1_READ~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \AVM_M1_READ~2_combout\ : std_logic;
SIGNAL \AVS_S1_WRITE~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITE~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITE~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \AVM_M1_WRITE~2_combout\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[0]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[0]~input_o\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[0]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[0]~input_o\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[1]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[1]~input_o\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[1]~input_o\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[2]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[2]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[2]~input_o\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[2]~input_o\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[3]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[3]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[3]~input_o\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[3]~input_o\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[4]~input_o\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[4]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[4]~input_o\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[5]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[5]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[5]~input_o\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[5]~input_o\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[6]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[6]~input_o\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[6]~input_o\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[7]~input_o\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[7]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[7]~input_o\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[8]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[8]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[8]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[8]~input_o\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[9]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[9]~input_o\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[9]~input_o\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[10]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[10]~input_o\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[10]~input_o\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[11]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[11]~input_o\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[11]~input_o\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[12]~input_o\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[12]~input_o\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[12]~input_o\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[13]~input_o\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[13]~input_o\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[13]~input_o\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[14]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[14]~input_o\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[14]~input_o\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[15]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[15]~input_o\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[15]~input_o\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[16]~input_o\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[16]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[16]~input_o\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[17]~input_o\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[17]~input_o\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[17]~input_o\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[18]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[18]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[18]~input_o\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[19]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[19]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[19]~input_o\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[20]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[20]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[20]~input_o\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[21]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[21]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[21]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[22]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[22]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[22]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[22]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[23]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[23]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[23]~input_o\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[23]~input_o\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[24]~input_o\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[24]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[24]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[24]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[25]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[25]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[25]~input_o\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[26]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[26]~input_o\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[26]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[26]~input_o\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[27]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[27]~input_o\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[27]~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[28]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[28]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[28]~input_o\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[29]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[29]~input_o\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[29]~input_o\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \AVS_S0_WRITEDATA[30]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[30]~input_o\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[30]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \AVS_S1_WRITEDATA[31]~input_o\ : std_logic;
SIGNAL \AVS_S2_WRITEDATA[31]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \AVS_S3_WRITEDATA[31]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL time_left : std_logic_vector(2 DOWNTO 0);
SIGNAL selected_master_r : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_csi_clockreset_CLK <= csi_clockreset_CLK;
ww_csi_clockreset_RESET_n <= csi_clockreset_RESET_n;
ww_AVS_S0_ADDRESS <= AVS_S0_ADDRESS;
ww_AVS_S0_CHIPSELECT <= AVS_S0_CHIPSELECT;
ww_AVS_S0_WRITE <= AVS_S0_WRITE;
ww_AVS_S0_READ <= AVS_S0_READ;
ww_AVS_S0_WRITEDATA <= AVS_S0_WRITEDATA;
ww_AVS_S0_BYTEENABLE <= AVS_S0_BYTEENABLE;
AVS_S0_READDATA <= ww_AVS_S0_READDATA;
AVS_S0_READDATAVALID <= ww_AVS_S0_READDATAVALID;
AVS_S0_WAITREQUEST <= ww_AVS_S0_WAITREQUEST;
ww_AVS_S1_ADDRESS <= AVS_S1_ADDRESS;
ww_AVS_S1_CHIPSELECT <= AVS_S1_CHIPSELECT;
ww_AVS_S1_WRITE <= AVS_S1_WRITE;
ww_AVS_S1_READ <= AVS_S1_READ;
ww_AVS_S1_WRITEDATA <= AVS_S1_WRITEDATA;
ww_AVS_S1_BYTEENABLE <= AVS_S1_BYTEENABLE;
AVS_S1_READDATA <= ww_AVS_S1_READDATA;
AVS_S1_READDATAVALID <= ww_AVS_S1_READDATAVALID;
AVS_S1_WAITREQUEST <= ww_AVS_S1_WAITREQUEST;
ww_AVS_S2_ADDRESS <= AVS_S2_ADDRESS;
ww_AVS_S2_CHIPSELECT <= AVS_S2_CHIPSELECT;
ww_AVS_S2_WRITE <= AVS_S2_WRITE;
ww_AVS_S2_READ <= AVS_S2_READ;
ww_AVS_S2_WRITEDATA <= AVS_S2_WRITEDATA;
ww_AVS_S2_BYTEENABLE <= AVS_S2_BYTEENABLE;
AVS_S2_READDATA <= ww_AVS_S2_READDATA;
AVS_S2_READDATAVALID <= ww_AVS_S2_READDATAVALID;
AVS_S2_WAITREQUEST <= ww_AVS_S2_WAITREQUEST;
ww_AVS_S3_ADDRESS <= AVS_S3_ADDRESS;
ww_AVS_S3_CHIPSELECT <= AVS_S3_CHIPSELECT;
ww_AVS_S3_WRITE <= AVS_S3_WRITE;
ww_AVS_S3_READ <= AVS_S3_READ;
ww_AVS_S3_WRITEDATA <= AVS_S3_WRITEDATA;
ww_AVS_S3_BYTEENABLE <= AVS_S3_BYTEENABLE;
AVS_S3_READDATA <= ww_AVS_S3_READDATA;
AVS_S3_READDATAVALID <= ww_AVS_S3_READDATAVALID;
AVS_S3_WAITREQUEST <= ww_AVS_S3_WAITREQUEST;
AVM_M1_ADDRESS <= ww_AVM_M1_ADDRESS;
AVM_M1_READ <= ww_AVM_M1_READ;
AVM_M1_WRITE <= ww_AVM_M1_WRITE;
AVM_M1_WRITEDATA <= ww_AVM_M1_WRITEDATA;
AVM_M1_BYTEENABLE <= ww_AVM_M1_BYTEENABLE;
ww_AVM_M1_READDATA <= AVM_M1_READDATA;
ww_AVM_M1_WAITREQUEST <= AVM_M1_WAITREQUEST;
ww_AVM_M1_READDATAVALID <= AVM_M1_READDATAVALID;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\csi_clockreset_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \csi_clockreset_CLK~input_o\);

\csi_clockreset_RESET_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \csi_clockreset_RESET_n~input_o\);

-- Location: FF_X114_Y69_N13
\time_left[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \csi_clockreset_CLK~inputclkctrl_outclk\,
	d => \time_left~1_combout\,
	clrn => \csi_clockreset_RESET_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_left(1));

-- Location: LCCOMB_X114_Y69_N12
\time_left~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \time_left~1_combout\ = time_left(1) $ (time_left(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => time_left(1),
	datad => time_left(0),
	combout => \time_left~1_combout\);

-- Location: IOIBUF_X3_Y0_N22
\AVS_S0_BYTEENABLE[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_BYTEENABLE(1),
	o => \AVS_S0_BYTEENABLE[1]~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\AVS_S3_BYTEENABLE[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_BYTEENABLE(1),
	o => \AVS_S3_BYTEENABLE[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\AVS_S1_BYTEENABLE[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_BYTEENABLE(0),
	o => \AVS_S1_BYTEENABLE[0]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\AVS_S2_BYTEENABLE[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_BYTEENABLE(0),
	o => \AVS_S2_BYTEENABLE[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\AVS_S1_BYTEENABLE[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_BYTEENABLE(3),
	o => \AVS_S1_BYTEENABLE[3]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\AVS_S3_BYTEENABLE[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_BYTEENABLE(3),
	o => \AVS_S3_BYTEENABLE[3]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\AVS_S1_BYTEENABLE[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_BYTEENABLE(2),
	o => \AVS_S1_BYTEENABLE[2]~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\AVS_S2_BYTEENABLE[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_BYTEENABLE(2),
	o => \AVS_S2_BYTEENABLE[2]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\AVS_S1_ADDRESS[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(8),
	o => \AVS_S1_ADDRESS[8]~input_o\);

-- Location: IOIBUF_X115_Y30_N1
\AVS_S0_ADDRESS[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(13),
	o => \AVS_S0_ADDRESS[13]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\AVS_S1_ADDRESS[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(14),
	o => \AVS_S1_ADDRESS[14]~input_o\);

-- Location: IOIBUF_X67_Y0_N22
\AVS_S1_ADDRESS[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(16),
	o => \AVS_S1_ADDRESS[16]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\AVS_S2_ADDRESS[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(17),
	o => \AVS_S2_ADDRESS[17]~input_o\);

-- Location: IOIBUF_X79_Y0_N15
\AVS_S0_ADDRESS[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(18),
	o => \AVS_S0_ADDRESS[18]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\AVS_S0_ADDRESS[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(19),
	o => \AVS_S0_ADDRESS[19]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\AVS_S0_ADDRESS[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(20),
	o => \AVS_S0_ADDRESS[20]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\AVS_S0_ADDRESS[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(21),
	o => \AVS_S0_ADDRESS[21]~input_o\);

-- Location: IOIBUF_X115_Y17_N8
\AVS_S2_ADDRESS[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(23),
	o => \AVS_S2_ADDRESS[23]~input_o\);

-- Location: IOIBUF_X115_Y44_N8
\AVS_S0_ADDRESS[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(24),
	o => \AVS_S0_ADDRESS[24]~input_o\);

-- Location: IOIBUF_X115_Y22_N1
\AVS_S2_ADDRESS[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(25),
	o => \AVS_S2_ADDRESS[25]~input_o\);

-- Location: IOIBUF_X113_Y73_N1
\AVS_S0_READ~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_READ,
	o => \AVS_S0_READ~input_o\);

-- Location: IOIBUF_X115_Y65_N15
\AVS_S3_READ~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_READ,
	o => \AVS_S3_READ~input_o\);

-- Location: IOIBUF_X115_Y69_N1
\AVS_S3_WRITE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITE,
	o => \AVS_S3_WRITE~input_o\);

-- Location: IOIBUF_X115_Y34_N22
\AVS_S0_WRITEDATA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(1),
	o => \AVS_S0_WRITEDATA[1]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\AVS_S0_WRITEDATA[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(4),
	o => \AVS_S0_WRITEDATA[4]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\AVS_S0_WRITEDATA[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(6),
	o => \AVS_S0_WRITEDATA[6]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\AVS_S0_WRITEDATA[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(7),
	o => \AVS_S0_WRITEDATA[7]~input_o\);

-- Location: IOIBUF_X115_Y37_N22
\AVS_S0_WRITEDATA[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(9),
	o => \AVS_S0_WRITEDATA[9]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\AVS_S1_WRITEDATA[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(10),
	o => \AVS_S1_WRITEDATA[10]~input_o\);

-- Location: IOIBUF_X115_Y36_N15
\AVS_S0_WRITEDATA[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(11),
	o => \AVS_S0_WRITEDATA[11]~input_o\);

-- Location: IOIBUF_X115_Y22_N15
\AVS_S1_WRITEDATA[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(12),
	o => \AVS_S1_WRITEDATA[12]~input_o\);

-- Location: IOIBUF_X115_Y46_N1
\AVS_S0_WRITEDATA[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(13),
	o => \AVS_S0_WRITEDATA[13]~input_o\);

-- Location: IOIBUF_X115_Y25_N22
\AVS_S1_WRITEDATA[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(14),
	o => \AVS_S1_WRITEDATA[14]~input_o\);

-- Location: IOIBUF_X115_Y49_N8
\AVS_S0_WRITEDATA[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(15),
	o => \AVS_S0_WRITEDATA[15]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\AVS_S0_WRITEDATA[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(16),
	o => \AVS_S0_WRITEDATA[16]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\AVS_S2_WRITEDATA[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(17),
	o => \AVS_S2_WRITEDATA[17]~input_o\);

-- Location: IOIBUF_X11_Y73_N15
\AVS_S1_WRITEDATA[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(18),
	o => \AVS_S1_WRITEDATA[18]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\AVS_S2_WRITEDATA[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(19),
	o => \AVS_S2_WRITEDATA[19]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\AVS_S1_WRITEDATA[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(20),
	o => \AVS_S1_WRITEDATA[20]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\AVS_S0_WRITEDATA[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(21),
	o => \AVS_S0_WRITEDATA[21]~input_o\);

-- Location: IOIBUF_X115_Y30_N8
\AVS_S2_WRITEDATA[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(25),
	o => \AVS_S2_WRITEDATA[25]~input_o\);

-- Location: IOIBUF_X115_Y19_N8
\AVS_S0_WRITEDATA[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(27),
	o => \AVS_S0_WRITEDATA[27]~input_o\);

-- Location: IOIBUF_X20_Y73_N15
\AVS_S0_WRITEDATA[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(28),
	o => \AVS_S0_WRITEDATA[28]~input_o\);

-- Location: IOIBUF_X7_Y73_N15
\AVS_S2_WRITEDATA[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(29),
	o => \AVS_S2_WRITEDATA[29]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\AVS_S1_WRITEDATA[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(30),
	o => \AVS_S1_WRITEDATA[30]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\AVS_S0_WRITEDATA[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(31),
	o => \AVS_S0_WRITEDATA[31]~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\csi_clockreset_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_csi_clockreset_CLK,
	o => \csi_clockreset_CLK~input_o\);

-- Location: CLKCTRL_G4
\csi_clockreset_CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \csi_clockreset_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \csi_clockreset_CLK~inputclkctrl_outclk\);

-- Location: IOOBUF_X115_Y53_N16
\AVS_S0_READDATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~0_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[0]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\AVS_S0_READDATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~1_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[1]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\AVS_S0_READDATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~2_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[2]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\AVS_S0_READDATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~3_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\AVS_S0_READDATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~4_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\AVS_S0_READDATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~5_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[5]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\AVS_S0_READDATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~6_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[6]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\AVS_S0_READDATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~7_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[7]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\AVS_S0_READDATA[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~8_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[8]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\AVS_S0_READDATA[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~9_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[9]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\AVS_S0_READDATA[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~10_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[10]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\AVS_S0_READDATA[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~11_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[11]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\AVS_S0_READDATA[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~12_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[12]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\AVS_S0_READDATA[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~13_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[13]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\AVS_S0_READDATA[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~14_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[14]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\AVS_S0_READDATA[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~15_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[15]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\AVS_S0_READDATA[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~16_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[16]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\AVS_S0_READDATA[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~17_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[17]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\AVS_S0_READDATA[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~18_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[18]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\AVS_S0_READDATA[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~19_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[19]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\AVS_S0_READDATA[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~20_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[20]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\AVS_S0_READDATA[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~21_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[21]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\AVS_S0_READDATA[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~22_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[22]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\AVS_S0_READDATA[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~23_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[23]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\AVS_S0_READDATA[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~24_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[24]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\AVS_S0_READDATA[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~25_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[25]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\AVS_S0_READDATA[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~26_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[26]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\AVS_S0_READDATA[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~27_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[27]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\AVS_S0_READDATA[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~28_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[28]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\AVS_S0_READDATA[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~29_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[29]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\AVS_S0_READDATA[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~30_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[30]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\AVS_S0_READDATA[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~31_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATA[31]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\AVS_S0_READDATAVALID~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_valid~0_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_READDATAVALID~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\AVS_S0_WAITREQUEST~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slave_out~0_combout\,
	devoe => ww_devoe,
	o => \AVS_S0_WAITREQUEST~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\AVS_S1_READDATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~32_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[0]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\AVS_S1_READDATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~33_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[1]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\AVS_S1_READDATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~34_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\AVS_S1_READDATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~35_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\AVS_S1_READDATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~36_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\AVS_S1_READDATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~37_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[5]~output_o\);

-- Location: IOOBUF_X0_Y69_N2
\AVS_S1_READDATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~38_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[6]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\AVS_S1_READDATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~39_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[7]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\AVS_S1_READDATA[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~40_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[8]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\AVS_S1_READDATA[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~41_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[9]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\AVS_S1_READDATA[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~42_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[10]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\AVS_S1_READDATA[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~43_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[11]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\AVS_S1_READDATA[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~44_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[12]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\AVS_S1_READDATA[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~45_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[13]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\AVS_S1_READDATA[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~46_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[14]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\AVS_S1_READDATA[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~47_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[15]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\AVS_S1_READDATA[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~48_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[16]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\AVS_S1_READDATA[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~49_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[17]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\AVS_S1_READDATA[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~50_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[18]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\AVS_S1_READDATA[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~51_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[19]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\AVS_S1_READDATA[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~52_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[20]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\AVS_S1_READDATA[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~53_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[21]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\AVS_S1_READDATA[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~54_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[22]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\AVS_S1_READDATA[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~55_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[23]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\AVS_S1_READDATA[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~56_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[24]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\AVS_S1_READDATA[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~57_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[25]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\AVS_S1_READDATA[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~58_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[26]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\AVS_S1_READDATA[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~59_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[27]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\AVS_S1_READDATA[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~60_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[28]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\AVS_S1_READDATA[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~61_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[29]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\AVS_S1_READDATA[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~62_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[30]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\AVS_S1_READDATA[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~63_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATA[31]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\AVS_S1_READDATAVALID~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_valid~1_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_READDATAVALID~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\AVS_S1_WAITREQUEST~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slave_out~1_combout\,
	devoe => ww_devoe,
	o => \AVS_S1_WAITREQUEST~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\AVS_S2_READDATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~64_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[0]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\AVS_S2_READDATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~65_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[1]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\AVS_S2_READDATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~66_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\AVS_S2_READDATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~67_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\AVS_S2_READDATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~68_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\AVS_S2_READDATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~69_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[5]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\AVS_S2_READDATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~70_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[6]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\AVS_S2_READDATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~71_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[7]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\AVS_S2_READDATA[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~72_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\AVS_S2_READDATA[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~73_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[9]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\AVS_S2_READDATA[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~74_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[10]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\AVS_S2_READDATA[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~75_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[11]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\AVS_S2_READDATA[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~76_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[12]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\AVS_S2_READDATA[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~77_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[13]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\AVS_S2_READDATA[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~78_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[14]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\AVS_S2_READDATA[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~79_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[15]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\AVS_S2_READDATA[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~80_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[16]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\AVS_S2_READDATA[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~81_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[17]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\AVS_S2_READDATA[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~82_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[18]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\AVS_S2_READDATA[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~83_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[19]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\AVS_S2_READDATA[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~84_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[20]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\AVS_S2_READDATA[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~85_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[21]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\AVS_S2_READDATA[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~86_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[22]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\AVS_S2_READDATA[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~87_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[23]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\AVS_S2_READDATA[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~88_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[24]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\AVS_S2_READDATA[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~89_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[25]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\AVS_S2_READDATA[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~90_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[26]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\AVS_S2_READDATA[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~91_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[27]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\AVS_S2_READDATA[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~92_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[28]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\AVS_S2_READDATA[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~93_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[29]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\AVS_S2_READDATA[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~94_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[30]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\AVS_S2_READDATA[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~95_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATA[31]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\AVS_S2_READDATAVALID~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_valid~2_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_READDATAVALID~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\AVS_S2_WAITREQUEST~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slave_out~2_combout\,
	devoe => ww_devoe,
	o => \AVS_S2_WAITREQUEST~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\AVS_S3_READDATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~96_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[0]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\AVS_S3_READDATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~97_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[1]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\AVS_S3_READDATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~98_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\AVS_S3_READDATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~99_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\AVS_S3_READDATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~100_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[4]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\AVS_S3_READDATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~101_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[5]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\AVS_S3_READDATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~102_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[6]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\AVS_S3_READDATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~103_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[7]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\AVS_S3_READDATA[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~104_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[8]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\AVS_S3_READDATA[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~105_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[9]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\AVS_S3_READDATA[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~106_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[10]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\AVS_S3_READDATA[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~107_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[11]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\AVS_S3_READDATA[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~108_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[12]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\AVS_S3_READDATA[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~109_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[13]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\AVS_S3_READDATA[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~110_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[14]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\AVS_S3_READDATA[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~111_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[15]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\AVS_S3_READDATA[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~112_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[16]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\AVS_S3_READDATA[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~113_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[17]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\AVS_S3_READDATA[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~114_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[18]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\AVS_S3_READDATA[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~115_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[19]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\AVS_S3_READDATA[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~116_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[20]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\AVS_S3_READDATA[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~117_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[21]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\AVS_S3_READDATA[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~118_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[22]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\AVS_S3_READDATA[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~119_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[23]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\AVS_S3_READDATA[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~120_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[24]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\AVS_S3_READDATA[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~121_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[25]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\AVS_S3_READDATA[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~122_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[26]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\AVS_S3_READDATA[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~123_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[27]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\AVS_S3_READDATA[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~124_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[28]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\AVS_S3_READDATA[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~125_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[29]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\AVS_S3_READDATA[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~126_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[30]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\AVS_S3_READDATA[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_data~127_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATA[31]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\AVS_S3_READDATAVALID~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \read_valid~3_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_READDATAVALID~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\AVS_S3_WAITREQUEST~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slave_out~3_combout\,
	devoe => ww_devoe,
	o => \AVS_S3_WAITREQUEST~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\AVM_M1_ADDRESS[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AVM_M1_ADDRESS~0_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\AVM_M1_ADDRESS[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AVM_M1_ADDRESS~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[1]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\AVM_M1_ADDRESS[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux59~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[2]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\AVM_M1_ADDRESS[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux58~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\AVM_M1_ADDRESS[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux57~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[4]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\AVM_M1_ADDRESS[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux56~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\AVM_M1_ADDRESS[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[6]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\AVM_M1_ADDRESS[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[7]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\AVM_M1_ADDRESS[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux53~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[8]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\AVM_M1_ADDRESS[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[9]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\AVM_M1_ADDRESS[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux51~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[10]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\AVM_M1_ADDRESS[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[11]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\AVM_M1_ADDRESS[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux49~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[12]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\AVM_M1_ADDRESS[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[13]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\AVM_M1_ADDRESS[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[14]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\AVM_M1_ADDRESS[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[15]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\AVM_M1_ADDRESS[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[16]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\AVM_M1_ADDRESS[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[17]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\AVM_M1_ADDRESS[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[18]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\AVM_M1_ADDRESS[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[19]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\AVM_M1_ADDRESS[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[20]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\AVM_M1_ADDRESS[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[21]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\AVM_M1_ADDRESS[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[22]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\AVM_M1_ADDRESS[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[23]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\AVM_M1_ADDRESS[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[24]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\AVM_M1_ADDRESS[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[25]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\AVM_M1_ADDRESS[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[26]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\AVM_M1_ADDRESS[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_ADDRESS[27]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\AVM_M1_READ~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AVM_M1_READ~2_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_READ~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\AVM_M1_WRITE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AVM_M1_WRITE~2_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITE~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\AVM_M1_WRITEDATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[0]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\AVM_M1_WRITEDATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\AVM_M1_WRITEDATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[2]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\AVM_M1_WRITEDATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[3]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\AVM_M1_WRITEDATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\AVM_M1_WRITEDATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[5]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\AVM_M1_WRITEDATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[6]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\AVM_M1_WRITEDATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[7]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\AVM_M1_WRITEDATA[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[8]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\AVM_M1_WRITEDATA[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[9]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\AVM_M1_WRITEDATA[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[10]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\AVM_M1_WRITEDATA[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[11]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\AVM_M1_WRITEDATA[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[12]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\AVM_M1_WRITEDATA[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[13]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\AVM_M1_WRITEDATA[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[14]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\AVM_M1_WRITEDATA[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[15]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\AVM_M1_WRITEDATA[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[16]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\AVM_M1_WRITEDATA[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[17]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\AVM_M1_WRITEDATA[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[18]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\AVM_M1_WRITEDATA[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[19]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\AVM_M1_WRITEDATA[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[20]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\AVM_M1_WRITEDATA[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[21]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\AVM_M1_WRITEDATA[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[22]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\AVM_M1_WRITEDATA[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[23]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\AVM_M1_WRITEDATA[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[24]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\AVM_M1_WRITEDATA[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[25]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\AVM_M1_WRITEDATA[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[26]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\AVM_M1_WRITEDATA[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[27]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\AVM_M1_WRITEDATA[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[28]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\AVM_M1_WRITEDATA[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[29]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\AVM_M1_WRITEDATA[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[30]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\AVM_M1_WRITEDATA[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_WRITEDATA[31]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\AVM_M1_BYTEENABLE[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux63~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_BYTEENABLE[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\AVM_M1_BYTEENABLE[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux62~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_BYTEENABLE[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\AVM_M1_BYTEENABLE[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux61~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_BYTEENABLE[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\AVM_M1_BYTEENABLE[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux60~1_combout\,
	devoe => ww_devoe,
	o => \AVM_M1_BYTEENABLE[3]~output_o\);

-- Location: IOIBUF_X115_Y58_N22
\AVM_M1_READDATA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(0),
	o => \AVM_M1_READDATA[0]~input_o\);

-- Location: IOIBUF_X115_Y64_N8
\AVS_S3_CHIPSELECT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_CHIPSELECT,
	o => \AVS_S3_CHIPSELECT~input_o\);

-- Location: IOIBUF_X115_Y68_N15
\AVS_S2_CHIPSELECT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_CHIPSELECT,
	o => \AVS_S2_CHIPSELECT~input_o\);

-- Location: LCCOMB_X114_Y69_N4
\selected_master[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selected_master[1]~3_combout\ = (\AVS_S3_CHIPSELECT~input_o\) # (\AVS_S2_CHIPSELECT~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AVS_S3_CHIPSELECT~input_o\,
	datad => \AVS_S2_CHIPSELECT~input_o\,
	combout => \selected_master[1]~3_combout\);

-- Location: LCCOMB_X114_Y69_N10
\time_left[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \time_left[0]~3_combout\ = !time_left(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => time_left(0),
	combout => \time_left[0]~3_combout\);

-- Location: IOIBUF_X0_Y36_N8
\csi_clockreset_RESET_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_csi_clockreset_RESET_n,
	o => \csi_clockreset_RESET_n~input_o\);

-- Location: CLKCTRL_G2
\csi_clockreset_RESET_n~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \csi_clockreset_RESET_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \csi_clockreset_RESET_n~inputclkctrl_outclk\);

-- Location: FF_X114_Y69_N11
\time_left[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \csi_clockreset_CLK~inputclkctrl_outclk\,
	d => \time_left[0]~3_combout\,
	clrn => \csi_clockreset_RESET_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_left(0));

-- Location: LCCOMB_X114_Y69_N18
\time_left[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \time_left[2]~0_combout\ = time_left(2) $ (((time_left(1) & time_left(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time_left(1),
	datac => time_left(2),
	datad => time_left(0),
	combout => \time_left[2]~0_combout\);

-- Location: FF_X114_Y69_N19
\time_left[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \csi_clockreset_CLK~inputclkctrl_outclk\,
	d => \time_left[2]~0_combout\,
	clrn => \csi_clockreset_RESET_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_left(2));

-- Location: LCCOMB_X114_Y69_N26
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (time_left(1) & (time_left(2) & time_left(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time_left(1),
	datab => time_left(2),
	datad => time_left(0),
	combout => \Equal0~0_combout\);

-- Location: FF_X114_Y69_N27
change_master : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \csi_clockreset_CLK~inputclkctrl_outclk\,
	d => \Equal0~0_combout\,
	clrn => \csi_clockreset_RESET_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_master~q\);

-- Location: LCCOMB_X114_Y69_N8
\selected_master[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selected_master[1]~4_combout\ = (\change_master~q\ & ((\selected_master[1]~3_combout\) # ((\selected_master[1]~0_combout\ & selected_master_r(1))))) # (!\change_master~q\ & (((selected_master_r(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~0_combout\,
	datab => \selected_master[1]~3_combout\,
	datac => selected_master_r(1),
	datad => \change_master~q\,
	combout => \selected_master[1]~4_combout\);

-- Location: FF_X114_Y69_N5
\selected_master_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \csi_clockreset_CLK~inputclkctrl_outclk\,
	asdata => \selected_master[1]~4_combout\,
	clrn => \csi_clockreset_RESET_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => selected_master_r(1));

-- Location: IOIBUF_X115_Y68_N22
\AVS_S1_CHIPSELECT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_CHIPSELECT,
	o => \AVS_S1_CHIPSELECT~input_o\);

-- Location: LCCOMB_X114_Y69_N28
\selected_master[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selected_master[0]~1_combout\ = (\AVS_S3_CHIPSELECT~input_o\) # ((\AVS_S1_CHIPSELECT~input_o\ & !\AVS_S2_CHIPSELECT~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_CHIPSELECT~input_o\,
	datab => \AVS_S1_CHIPSELECT~input_o\,
	datad => \AVS_S2_CHIPSELECT~input_o\,
	combout => \selected_master[0]~1_combout\);

-- Location: LCCOMB_X114_Y69_N30
\selected_master[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selected_master[0]~2_combout\ = (\change_master~q\ & ((\selected_master[0]~1_combout\) # ((\selected_master[1]~0_combout\ & selected_master_r(0))))) # (!\change_master~q\ & (((selected_master_r(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~0_combout\,
	datab => \selected_master[0]~1_combout\,
	datac => selected_master_r(0),
	datad => \change_master~q\,
	combout => \selected_master[0]~2_combout\);

-- Location: FF_X114_Y69_N23
\selected_master_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \csi_clockreset_CLK~inputclkctrl_outclk\,
	asdata => \selected_master[0]~2_combout\,
	clrn => \csi_clockreset_RESET_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => selected_master_r(0));

-- Location: LCCOMB_X114_Y59_N20
\read_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~0_combout\ = (\AVM_M1_READDATA[0]~input_o\ & (!selected_master_r(1) & !selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVM_M1_READDATA[0]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~0_combout\);

-- Location: IOIBUF_X115_Y61_N15
\AVM_M1_READDATA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(1),
	o => \AVM_M1_READDATA[1]~input_o\);

-- Location: LCCOMB_X114_Y59_N26
\read_data~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~1_combout\ = (\AVM_M1_READDATA[1]~input_o\ & (!selected_master_r(1) & !selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVM_M1_READDATA[1]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~1_combout\);

-- Location: IOIBUF_X115_Y62_N15
\AVM_M1_READDATA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(2),
	o => \AVM_M1_READDATA[2]~input_o\);

-- Location: LCCOMB_X114_Y59_N28
\read_data~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~2_combout\ = (\AVM_M1_READDATA[2]~input_o\ & (!selected_master_r(1) & !selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AVM_M1_READDATA[2]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~2_combout\);

-- Location: IOIBUF_X62_Y73_N22
\AVM_M1_READDATA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(3),
	o => \AVM_M1_READDATA[3]~input_o\);

-- Location: LCCOMB_X68_Y72_N8
\read_data~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~3_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[3]~input_o\,
	combout => \read_data~3_combout\);

-- Location: IOIBUF_X72_Y73_N8
\AVM_M1_READDATA[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(4),
	o => \AVM_M1_READDATA[4]~input_o\);

-- Location: LCCOMB_X68_Y72_N14
\read_data~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~4_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[4]~input_o\,
	combout => \read_data~4_combout\);

-- Location: IOIBUF_X69_Y73_N1
\AVM_M1_READDATA[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(5),
	o => \AVM_M1_READDATA[5]~input_o\);

-- Location: LCCOMB_X68_Y72_N4
\read_data~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~5_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[5]~input_o\,
	combout => \read_data~5_combout\);

-- Location: IOIBUF_X0_Y64_N1
\AVM_M1_READDATA[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(6),
	o => \AVM_M1_READDATA[6]~input_o\);

-- Location: LCCOMB_X1_Y65_N20
\read_data~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~6_combout\ = (!selected_master_r(1) & (!selected_master_r(0) & \AVM_M1_READDATA[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[6]~input_o\,
	combout => \read_data~6_combout\);

-- Location: IOIBUF_X0_Y66_N15
\AVM_M1_READDATA[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(7),
	o => \AVM_M1_READDATA[7]~input_o\);

-- Location: LCCOMB_X1_Y65_N6
\read_data~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~7_combout\ = (!selected_master_r(1) & (!selected_master_r(0) & \AVM_M1_READDATA[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[7]~input_o\,
	combout => \read_data~7_combout\);

-- Location: IOIBUF_X0_Y67_N22
\AVM_M1_READDATA[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(8),
	o => \AVM_M1_READDATA[8]~input_o\);

-- Location: LCCOMB_X1_Y65_N12
\read_data~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~8_combout\ = (!selected_master_r(1) & (!selected_master_r(0) & \AVM_M1_READDATA[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[8]~input_o\,
	combout => \read_data~8_combout\);

-- Location: IOIBUF_X85_Y73_N1
\AVM_M1_READDATA[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(9),
	o => \AVM_M1_READDATA[9]~input_o\);

-- Location: LCCOMB_X84_Y72_N8
\read_data~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~9_combout\ = (\AVM_M1_READDATA[9]~input_o\ & (!selected_master_r(0) & !selected_master_r(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVM_M1_READDATA[9]~input_o\,
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	combout => \read_data~9_combout\);

-- Location: IOIBUF_X87_Y73_N8
\AVM_M1_READDATA[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(10),
	o => \AVM_M1_READDATA[10]~input_o\);

-- Location: LCCOMB_X84_Y72_N2
\read_data~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~10_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[10]~input_o\,
	combout => \read_data~10_combout\);

-- Location: IOIBUF_X85_Y73_N8
\AVM_M1_READDATA[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(11),
	o => \AVM_M1_READDATA[11]~input_o\);

-- Location: LCCOMB_X84_Y72_N28
\read_data~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~11_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[11]~input_o\,
	combout => \read_data~11_combout\);

-- Location: IOIBUF_X105_Y0_N8
\AVM_M1_READDATA[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(12),
	o => \AVM_M1_READDATA[12]~input_o\);

-- Location: LCCOMB_X99_Y1_N0
\read_data~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~12_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[12]~input_o\,
	combout => \read_data~12_combout\);

-- Location: IOIBUF_X115_Y58_N15
\AVM_M1_READDATA[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(13),
	o => \AVM_M1_READDATA[13]~input_o\);

-- Location: LCCOMB_X114_Y59_N30
\read_data~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~13_combout\ = (\AVM_M1_READDATA[13]~input_o\ & (!selected_master_r(1) & !selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AVM_M1_READDATA[13]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~13_combout\);

-- Location: IOIBUF_X105_Y0_N1
\AVM_M1_READDATA[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(14),
	o => \AVM_M1_READDATA[14]~input_o\);

-- Location: LCCOMB_X99_Y1_N2
\read_data~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~14_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[14]~input_o\,
	combout => \read_data~14_combout\);

-- Location: IOIBUF_X87_Y73_N1
\AVM_M1_READDATA[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(15),
	o => \AVM_M1_READDATA[15]~input_o\);

-- Location: LCCOMB_X84_Y72_N10
\read_data~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~15_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[15]~input_o\,
	combout => \read_data~15_combout\);

-- Location: IOIBUF_X100_Y0_N1
\AVM_M1_READDATA[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(16),
	o => \AVM_M1_READDATA[16]~input_o\);

-- Location: LCCOMB_X99_Y1_N20
\read_data~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~16_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[16]~input_o\,
	combout => \read_data~16_combout\);

-- Location: IOIBUF_X107_Y0_N8
\AVM_M1_READDATA[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(17),
	o => \AVM_M1_READDATA[17]~input_o\);

-- Location: LCCOMB_X99_Y1_N10
\read_data~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~17_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[17]~input_o\,
	combout => \read_data~17_combout\);

-- Location: IOIBUF_X111_Y73_N1
\AVM_M1_READDATA[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(18),
	o => \AVM_M1_READDATA[18]~input_o\);

-- Location: LCCOMB_X103_Y72_N20
\read_data~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~18_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[18]~input_o\,
	combout => \read_data~18_combout\);

-- Location: IOIBUF_X0_Y63_N22
\AVM_M1_READDATA[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(19),
	o => \AVM_M1_READDATA[19]~input_o\);

-- Location: LCCOMB_X1_Y65_N14
\read_data~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~19_combout\ = (!selected_master_r(1) & (!selected_master_r(0) & \AVM_M1_READDATA[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[19]~input_o\,
	combout => \read_data~19_combout\);

-- Location: IOIBUF_X107_Y73_N8
\AVM_M1_READDATA[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(20),
	o => \AVM_M1_READDATA[20]~input_o\);

-- Location: LCCOMB_X103_Y72_N26
\read_data~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~20_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[20]~input_o\,
	combout => \read_data~20_combout\);

-- Location: IOIBUF_X107_Y73_N1
\AVM_M1_READDATA[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(21),
	o => \AVM_M1_READDATA[21]~input_o\);

-- Location: LCCOMB_X103_Y72_N0
\read_data~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~21_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[21]~input_o\,
	combout => \read_data~21_combout\);

-- Location: IOIBUF_X111_Y73_N8
\AVM_M1_READDATA[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(22),
	o => \AVM_M1_READDATA[22]~input_o\);

-- Location: LCCOMB_X103_Y72_N18
\read_data~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~22_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[22]~input_o\,
	combout => \read_data~22_combout\);

-- Location: IOIBUF_X115_Y11_N8
\AVM_M1_READDATA[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(23),
	o => \AVM_M1_READDATA[23]~input_o\);

-- Location: LCCOMB_X114_Y8_N12
\read_data~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~23_combout\ = (\AVM_M1_READDATA[23]~input_o\ & (!selected_master_r(1) & !selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AVM_M1_READDATA[23]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~23_combout\);

-- Location: IOIBUF_X115_Y11_N1
\AVM_M1_READDATA[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(24),
	o => \AVM_M1_READDATA[24]~input_o\);

-- Location: LCCOMB_X114_Y8_N14
\read_data~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~24_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[24]~input_o\,
	combout => \read_data~24_combout\);

-- Location: IOIBUF_X115_Y5_N15
\AVM_M1_READDATA[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(25),
	o => \AVM_M1_READDATA[25]~input_o\);

-- Location: LCCOMB_X114_Y8_N24
\read_data~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~25_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[25]~input_o\,
	combout => \read_data~25_combout\);

-- Location: IOIBUF_X0_Y23_N15
\AVM_M1_READDATA[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(26),
	o => \AVM_M1_READDATA[26]~input_o\);

-- Location: LCCOMB_X1_Y28_N0
\read_data~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~26_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[26]~input_o\,
	combout => \read_data~26_combout\);

-- Location: IOIBUF_X0_Y25_N15
\AVM_M1_READDATA[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(27),
	o => \AVM_M1_READDATA[27]~input_o\);

-- Location: LCCOMB_X1_Y28_N18
\read_data~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~27_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[27]~input_o\,
	combout => \read_data~27_combout\);

-- Location: IOIBUF_X0_Y24_N22
\AVM_M1_READDATA[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(28),
	o => \AVM_M1_READDATA[28]~input_o\);

-- Location: LCCOMB_X1_Y28_N16
\read_data~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~28_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[28]~input_o\,
	combout => \read_data~28_combout\);

-- Location: IOIBUF_X72_Y73_N1
\AVM_M1_READDATA[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(29),
	o => \AVM_M1_READDATA[29]~input_o\);

-- Location: LCCOMB_X68_Y72_N10
\read_data~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~29_combout\ = (!selected_master_r(1) & (!selected_master_r(0) & \AVM_M1_READDATA[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[29]~input_o\,
	combout => \read_data~29_combout\);

-- Location: IOIBUF_X115_Y7_N15
\AVM_M1_READDATA[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(30),
	o => \AVM_M1_READDATA[30]~input_o\);

-- Location: LCCOMB_X114_Y8_N18
\read_data~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~30_combout\ = (\AVM_M1_READDATA[30]~input_o\ & (!selected_master_r(1) & !selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AVM_M1_READDATA[30]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~30_combout\);

-- Location: IOIBUF_X0_Y31_N15
\AVM_M1_READDATA[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATA(31),
	o => \AVM_M1_READDATA[31]~input_o\);

-- Location: LCCOMB_X1_Y28_N14
\read_data~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~31_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[31]~input_o\,
	combout => \read_data~31_combout\);

-- Location: IOIBUF_X0_Y22_N22
\AVM_M1_READDATAVALID~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_READDATAVALID,
	o => \AVM_M1_READDATAVALID~input_o\);

-- Location: LCCOMB_X1_Y22_N16
\read_valid~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_valid~0_combout\ = (!selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATAVALID~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATAVALID~input_o\,
	combout => \read_valid~0_combout\);

-- Location: FF_X114_Y69_N29
master_found_r : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \csi_clockreset_CLK~inputclkctrl_outclk\,
	asdata => \master_found~0_combout\,
	clrn => \csi_clockreset_RESET_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \master_found_r~q\);

-- Location: LCCOMB_X114_Y69_N14
\master_found~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \master_found~0_combout\ = (\change_master~q\ & (!\selected_master[1]~0_combout\)) # (!\change_master~q\ & ((\master_found_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~0_combout\,
	datac => \change_master~q\,
	datad => \master_found_r~q\,
	combout => \master_found~0_combout\);

-- Location: IOIBUF_X0_Y16_N22
\AVM_M1_WAITREQUEST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVM_M1_WAITREQUEST,
	o => \AVM_M1_WAITREQUEST~input_o\);

-- Location: LCCOMB_X1_Y11_N16
\slave_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slave_out~0_combout\ = ((\AVM_M1_WAITREQUEST~input_o\) # ((\selected_master[0]~2_combout\) # (\selected_master[1]~4_combout\))) # (!\master_found~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_found~0_combout\,
	datab => \AVM_M1_WAITREQUEST~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \selected_master[1]~4_combout\,
	combout => \slave_out~0_combout\);

-- Location: LCCOMB_X114_Y59_N24
\read_data~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~32_combout\ = (\AVM_M1_READDATA[0]~input_o\ & (!selected_master_r(1) & selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVM_M1_READDATA[0]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~32_combout\);

-- Location: LCCOMB_X114_Y59_N2
\read_data~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~33_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[1]~input_o\,
	combout => \read_data~33_combout\);

-- Location: LCCOMB_X114_Y59_N8
\read_data~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~34_combout\ = (\AVM_M1_READDATA[2]~input_o\ & (!selected_master_r(1) & selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AVM_M1_READDATA[2]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~34_combout\);

-- Location: LCCOMB_X68_Y72_N0
\read_data~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~35_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[3]~input_o\,
	combout => \read_data~35_combout\);

-- Location: LCCOMB_X68_Y72_N2
\read_data~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~36_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[4]~input_o\,
	combout => \read_data~36_combout\);

-- Location: LCCOMB_X68_Y72_N24
\read_data~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~37_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[5]~input_o\,
	combout => \read_data~37_combout\);

-- Location: LCCOMB_X1_Y65_N4
\read_data~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~38_combout\ = (!selected_master_r(1) & (selected_master_r(0) & \AVM_M1_READDATA[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[6]~input_o\,
	combout => \read_data~38_combout\);

-- Location: LCCOMB_X1_Y65_N22
\read_data~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~39_combout\ = (!selected_master_r(1) & (selected_master_r(0) & \AVM_M1_READDATA[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[7]~input_o\,
	combout => \read_data~39_combout\);

-- Location: LCCOMB_X1_Y65_N0
\read_data~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~40_combout\ = (!selected_master_r(1) & (selected_master_r(0) & \AVM_M1_READDATA[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[8]~input_o\,
	combout => \read_data~40_combout\);

-- Location: LCCOMB_X84_Y72_N4
\read_data~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~41_combout\ = (\AVM_M1_READDATA[9]~input_o\ & (selected_master_r(0) & !selected_master_r(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVM_M1_READDATA[9]~input_o\,
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	combout => \read_data~41_combout\);

-- Location: LCCOMB_X84_Y72_N22
\read_data~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~42_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[10]~input_o\,
	combout => \read_data~42_combout\);

-- Location: LCCOMB_X84_Y72_N12
\read_data~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~43_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[11]~input_o\,
	combout => \read_data~43_combout\);

-- Location: LCCOMB_X99_Y1_N24
\read_data~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~44_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[12]~input_o\,
	combout => \read_data~44_combout\);

-- Location: LCCOMB_X114_Y59_N18
\read_data~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~45_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[13]~input_o\,
	combout => \read_data~45_combout\);

-- Location: LCCOMB_X99_Y1_N18
\read_data~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~46_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[14]~input_o\,
	combout => \read_data~46_combout\);

-- Location: LCCOMB_X84_Y72_N26
\read_data~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~47_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[15]~input_o\,
	combout => \read_data~47_combout\);

-- Location: LCCOMB_X99_Y1_N8
\read_data~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~48_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[16]~input_o\,
	combout => \read_data~48_combout\);

-- Location: LCCOMB_X99_Y1_N22
\read_data~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~49_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[17]~input_o\,
	combout => \read_data~49_combout\);

-- Location: LCCOMB_X103_Y72_N24
\read_data~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~50_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[18]~input_o\,
	combout => \read_data~50_combout\);

-- Location: LCCOMB_X1_Y65_N26
\read_data~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~51_combout\ = (!selected_master_r(1) & (selected_master_r(0) & \AVM_M1_READDATA[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[19]~input_o\,
	combout => \read_data~51_combout\);

-- Location: LCCOMB_X103_Y72_N2
\read_data~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~52_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[20]~input_o\,
	combout => \read_data~52_combout\);

-- Location: LCCOMB_X103_Y72_N12
\read_data~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~53_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[21]~input_o\,
	combout => \read_data~53_combout\);

-- Location: LCCOMB_X103_Y72_N22
\read_data~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~54_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[22]~input_o\,
	combout => \read_data~54_combout\);

-- Location: LCCOMB_X114_Y8_N0
\read_data~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~55_combout\ = (\AVM_M1_READDATA[23]~input_o\ & (!selected_master_r(1) & selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AVM_M1_READDATA[23]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~55_combout\);

-- Location: LCCOMB_X114_Y8_N2
\read_data~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~56_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[24]~input_o\,
	combout => \read_data~56_combout\);

-- Location: LCCOMB_X114_Y8_N20
\read_data~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~57_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[25]~input_o\,
	combout => \read_data~57_combout\);

-- Location: LCCOMB_X1_Y28_N20
\read_data~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~58_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[26]~input_o\,
	combout => \read_data~58_combout\);

-- Location: LCCOMB_X1_Y28_N6
\read_data~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~59_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[27]~input_o\,
	combout => \read_data~59_combout\);

-- Location: LCCOMB_X1_Y28_N12
\read_data~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~60_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[28]~input_o\,
	combout => \read_data~60_combout\);

-- Location: LCCOMB_X68_Y72_N26
\read_data~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~61_combout\ = (!selected_master_r(1) & (selected_master_r(0) & \AVM_M1_READDATA[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[29]~input_o\,
	combout => \read_data~61_combout\);

-- Location: LCCOMB_X114_Y8_N6
\read_data~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~62_combout\ = (\AVM_M1_READDATA[30]~input_o\ & (!selected_master_r(1) & selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AVM_M1_READDATA[30]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~62_combout\);

-- Location: LCCOMB_X1_Y28_N22
\read_data~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~63_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATA[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[31]~input_o\,
	combout => \read_data~63_combout\);

-- Location: LCCOMB_X1_Y22_N6
\read_valid~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_valid~1_combout\ = (selected_master_r(0) & (!selected_master_r(1) & \AVM_M1_READDATAVALID~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATAVALID~input_o\,
	combout => \read_valid~1_combout\);

-- Location: LCCOMB_X1_Y11_N14
\slave_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slave_out~1_combout\ = ((\AVM_M1_WAITREQUEST~input_o\) # ((\selected_master[1]~4_combout\) # (!\selected_master[0]~2_combout\))) # (!\master_found~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_found~0_combout\,
	datab => \AVM_M1_WAITREQUEST~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \selected_master[1]~4_combout\,
	combout => \slave_out~1_combout\);

-- Location: LCCOMB_X114_Y59_N12
\read_data~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~64_combout\ = (\AVM_M1_READDATA[0]~input_o\ & (selected_master_r(1) & !selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVM_M1_READDATA[0]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~64_combout\);

-- Location: LCCOMB_X114_Y59_N22
\read_data~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~65_combout\ = (\AVM_M1_READDATA[1]~input_o\ & (selected_master_r(1) & !selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVM_M1_READDATA[1]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~65_combout\);

-- Location: LCCOMB_X114_Y59_N16
\read_data~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~66_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[2]~input_o\,
	combout => \read_data~66_combout\);

-- Location: LCCOMB_X68_Y72_N20
\read_data~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~67_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[3]~input_o\,
	combout => \read_data~67_combout\);

-- Location: LCCOMB_X68_Y72_N22
\read_data~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~68_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[4]~input_o\,
	combout => \read_data~68_combout\);

-- Location: LCCOMB_X68_Y72_N12
\read_data~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~69_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[5]~input_o\,
	combout => \read_data~69_combout\);

-- Location: LCCOMB_X1_Y65_N28
\read_data~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~70_combout\ = (selected_master_r(1) & (!selected_master_r(0) & \AVM_M1_READDATA[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[6]~input_o\,
	combout => \read_data~70_combout\);

-- Location: LCCOMB_X1_Y65_N30
\read_data~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~71_combout\ = (selected_master_r(1) & (!selected_master_r(0) & \AVM_M1_READDATA[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[7]~input_o\,
	combout => \read_data~71_combout\);

-- Location: LCCOMB_X1_Y65_N24
\read_data~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~72_combout\ = (selected_master_r(1) & (!selected_master_r(0) & \AVM_M1_READDATA[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[8]~input_o\,
	combout => \read_data~72_combout\);

-- Location: LCCOMB_X84_Y72_N0
\read_data~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~73_combout\ = (\AVM_M1_READDATA[9]~input_o\ & (!selected_master_r(0) & selected_master_r(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVM_M1_READDATA[9]~input_o\,
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	combout => \read_data~73_combout\);

-- Location: LCCOMB_X84_Y72_N18
\read_data~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~74_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[10]~input_o\,
	combout => \read_data~74_combout\);

-- Location: LCCOMB_X84_Y72_N16
\read_data~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~75_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[11]~input_o\,
	combout => \read_data~75_combout\);

-- Location: LCCOMB_X99_Y1_N28
\read_data~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~76_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[12]~input_o\,
	combout => \read_data~76_combout\);

-- Location: LCCOMB_X114_Y59_N10
\read_data~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~77_combout\ = (\AVM_M1_READDATA[13]~input_o\ & (selected_master_r(1) & !selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AVM_M1_READDATA[13]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~77_combout\);

-- Location: LCCOMB_X99_Y1_N6
\read_data~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~78_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[14]~input_o\,
	combout => \read_data~78_combout\);

-- Location: LCCOMB_X84_Y72_N30
\read_data~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~79_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[15]~input_o\,
	combout => \read_data~79_combout\);

-- Location: LCCOMB_X99_Y1_N12
\read_data~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~80_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[16]~input_o\,
	combout => \read_data~80_combout\);

-- Location: LCCOMB_X99_Y1_N26
\read_data~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~81_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[17]~input_o\,
	combout => \read_data~81_combout\);

-- Location: LCCOMB_X103_Y72_N4
\read_data~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~82_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[18]~input_o\,
	combout => \read_data~82_combout\);

-- Location: LCCOMB_X1_Y65_N10
\read_data~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~83_combout\ = (selected_master_r(1) & (!selected_master_r(0) & \AVM_M1_READDATA[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[19]~input_o\,
	combout => \read_data~83_combout\);

-- Location: LCCOMB_X103_Y72_N14
\read_data~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~84_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[20]~input_o\,
	combout => \read_data~84_combout\);

-- Location: LCCOMB_X103_Y72_N28
\read_data~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~85_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[21]~input_o\,
	combout => \read_data~85_combout\);

-- Location: LCCOMB_X103_Y72_N30
\read_data~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~86_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[22]~input_o\,
	combout => \read_data~86_combout\);

-- Location: LCCOMB_X114_Y8_N4
\read_data~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~87_combout\ = (\AVM_M1_READDATA[23]~input_o\ & (selected_master_r(1) & !selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AVM_M1_READDATA[23]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~87_combout\);

-- Location: LCCOMB_X114_Y8_N22
\read_data~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~88_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[24]~input_o\,
	combout => \read_data~88_combout\);

-- Location: LCCOMB_X114_Y8_N28
\read_data~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~89_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[25]~input_o\,
	combout => \read_data~89_combout\);

-- Location: LCCOMB_X1_Y28_N24
\read_data~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~90_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[26]~input_o\,
	combout => \read_data~90_combout\);

-- Location: LCCOMB_X1_Y28_N10
\read_data~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~91_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[27]~input_o\,
	combout => \read_data~91_combout\);

-- Location: LCCOMB_X1_Y28_N4
\read_data~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~92_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[28]~input_o\,
	combout => \read_data~92_combout\);

-- Location: LCCOMB_X68_Y72_N30
\read_data~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~93_combout\ = (selected_master_r(1) & (!selected_master_r(0) & \AVM_M1_READDATA[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[29]~input_o\,
	combout => \read_data~93_combout\);

-- Location: LCCOMB_X114_Y8_N26
\read_data~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~94_combout\ = (\AVM_M1_READDATA[30]~input_o\ & (selected_master_r(1) & !selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AVM_M1_READDATA[30]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~94_combout\);

-- Location: LCCOMB_X1_Y28_N2
\read_data~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~95_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[31]~input_o\,
	combout => \read_data~95_combout\);

-- Location: LCCOMB_X1_Y22_N12
\read_valid~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_valid~2_combout\ = (!selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATAVALID~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATAVALID~input_o\,
	combout => \read_valid~2_combout\);

-- Location: LCCOMB_X1_Y11_N28
\slave_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slave_out~2_combout\ = ((\AVM_M1_WAITREQUEST~input_o\) # ((\selected_master[0]~2_combout\) # (!\selected_master[1]~4_combout\))) # (!\master_found~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_found~0_combout\,
	datab => \AVM_M1_WAITREQUEST~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \selected_master[1]~4_combout\,
	combout => \slave_out~2_combout\);

-- Location: LCCOMB_X114_Y59_N0
\read_data~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~96_combout\ = (\AVM_M1_READDATA[0]~input_o\ & (selected_master_r(1) & selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVM_M1_READDATA[0]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~96_combout\);

-- Location: LCCOMB_X114_Y59_N6
\read_data~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~97_combout\ = (\AVM_M1_READDATA[1]~input_o\ & (selected_master_r(1) & selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVM_M1_READDATA[1]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~97_combout\);

-- Location: LCCOMB_X114_Y59_N4
\read_data~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~98_combout\ = (\AVM_M1_READDATA[2]~input_o\ & (selected_master_r(1) & selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AVM_M1_READDATA[2]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~98_combout\);

-- Location: LCCOMB_X68_Y72_N16
\read_data~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~99_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[3]~input_o\,
	combout => \read_data~99_combout\);

-- Location: LCCOMB_X68_Y72_N18
\read_data~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~100_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[4]~input_o\,
	combout => \read_data~100_combout\);

-- Location: LCCOMB_X68_Y72_N28
\read_data~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~101_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[5]~input_o\,
	combout => \read_data~101_combout\);

-- Location: LCCOMB_X1_Y65_N8
\read_data~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~102_combout\ = (selected_master_r(1) & (selected_master_r(0) & \AVM_M1_READDATA[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[6]~input_o\,
	combout => \read_data~102_combout\);

-- Location: LCCOMB_X1_Y65_N18
\read_data~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~103_combout\ = (selected_master_r(1) & (selected_master_r(0) & \AVM_M1_READDATA[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[7]~input_o\,
	combout => \read_data~103_combout\);

-- Location: LCCOMB_X1_Y65_N16
\read_data~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~104_combout\ = (selected_master_r(1) & (selected_master_r(0) & \AVM_M1_READDATA[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[8]~input_o\,
	combout => \read_data~104_combout\);

-- Location: LCCOMB_X84_Y72_N20
\read_data~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~105_combout\ = (\AVM_M1_READDATA[9]~input_o\ & (selected_master_r(0) & selected_master_r(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVM_M1_READDATA[9]~input_o\,
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	combout => \read_data~105_combout\);

-- Location: LCCOMB_X84_Y72_N6
\read_data~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~106_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[10]~input_o\,
	combout => \read_data~106_combout\);

-- Location: LCCOMB_X84_Y72_N24
\read_data~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~107_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[11]~input_o\,
	combout => \read_data~107_combout\);

-- Location: LCCOMB_X99_Y1_N16
\read_data~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~108_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[12]~input_o\,
	combout => \read_data~108_combout\);

-- Location: LCCOMB_X114_Y59_N14
\read_data~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~109_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[13]~input_o\,
	combout => \read_data~109_combout\);

-- Location: LCCOMB_X99_Y1_N14
\read_data~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~110_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[14]~input_o\,
	combout => \read_data~110_combout\);

-- Location: LCCOMB_X84_Y72_N14
\read_data~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~111_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[15]~input_o\,
	combout => \read_data~111_combout\);

-- Location: LCCOMB_X99_Y1_N4
\read_data~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~112_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[16]~input_o\,
	combout => \read_data~112_combout\);

-- Location: LCCOMB_X99_Y1_N30
\read_data~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~113_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[17]~input_o\,
	combout => \read_data~113_combout\);

-- Location: LCCOMB_X103_Y72_N16
\read_data~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~114_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[18]~input_o\,
	combout => \read_data~114_combout\);

-- Location: LCCOMB_X1_Y65_N2
\read_data~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~115_combout\ = (selected_master_r(1) & (selected_master_r(0) & \AVM_M1_READDATA[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[19]~input_o\,
	combout => \read_data~115_combout\);

-- Location: LCCOMB_X103_Y72_N6
\read_data~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~116_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[20]~input_o\,
	combout => \read_data~116_combout\);

-- Location: LCCOMB_X103_Y72_N8
\read_data~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~117_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[21]~input_o\,
	combout => \read_data~117_combout\);

-- Location: LCCOMB_X103_Y72_N10
\read_data~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~118_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[22]~input_o\,
	combout => \read_data~118_combout\);

-- Location: LCCOMB_X114_Y8_N8
\read_data~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~119_combout\ = (\AVM_M1_READDATA[23]~input_o\ & (selected_master_r(1) & selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AVM_M1_READDATA[23]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~119_combout\);

-- Location: LCCOMB_X114_Y8_N10
\read_data~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~120_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[24]~input_o\,
	combout => \read_data~120_combout\);

-- Location: LCCOMB_X114_Y8_N16
\read_data~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~121_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[25]~input_o\,
	combout => \read_data~121_combout\);

-- Location: LCCOMB_X1_Y28_N8
\read_data~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~122_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[26]~input_o\,
	combout => \read_data~122_combout\);

-- Location: LCCOMB_X1_Y28_N26
\read_data~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~123_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[27]~input_o\,
	combout => \read_data~123_combout\);

-- Location: LCCOMB_X1_Y28_N28
\read_data~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~124_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[28]~input_o\,
	combout => \read_data~124_combout\);

-- Location: LCCOMB_X68_Y72_N6
\read_data~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~125_combout\ = (selected_master_r(1) & (selected_master_r(0) & \AVM_M1_READDATA[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selected_master_r(1),
	datac => selected_master_r(0),
	datad => \AVM_M1_READDATA[29]~input_o\,
	combout => \read_data~125_combout\);

-- Location: LCCOMB_X114_Y8_N30
\read_data~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~126_combout\ = (\AVM_M1_READDATA[30]~input_o\ & (selected_master_r(1) & selected_master_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AVM_M1_READDATA[30]~input_o\,
	datac => selected_master_r(1),
	datad => selected_master_r(0),
	combout => \read_data~126_combout\);

-- Location: LCCOMB_X1_Y28_N30
\read_data~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_data~127_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATA[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATA[31]~input_o\,
	combout => \read_data~127_combout\);

-- Location: LCCOMB_X1_Y22_N30
\read_valid~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \read_valid~3_combout\ = (selected_master_r(0) & (selected_master_r(1) & \AVM_M1_READDATAVALID~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selected_master_r(0),
	datac => selected_master_r(1),
	datad => \AVM_M1_READDATAVALID~input_o\,
	combout => \read_valid~3_combout\);

-- Location: LCCOMB_X1_Y11_N6
\slave_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slave_out~3_combout\ = ((\AVM_M1_WAITREQUEST~input_o\) # ((!\selected_master[1]~4_combout\) # (!\selected_master[0]~2_combout\))) # (!\master_found~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \master_found~0_combout\,
	datab => \AVM_M1_WAITREQUEST~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \selected_master[1]~4_combout\,
	combout => \slave_out~3_combout\);

-- Location: IOIBUF_X0_Y18_N15
\AVS_S0_BYTEENABLE[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_BYTEENABLE(3),
	o => \AVS_S0_BYTEENABLE[3]~input_o\);

-- Location: LCCOMB_X1_Y11_N4
\Mux60~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\selected_master[0]~2_combout\ & ((\AVS_S1_BYTEENABLE[3]~input_o\) # ((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (((\AVS_S0_BYTEENABLE[3]~input_o\ & !\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S1_BYTEENABLE[3]~input_o\,
	datab => \AVS_S0_BYTEENABLE[3]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux60~0_combout\);

-- Location: IOIBUF_X0_Y15_N22
\AVS_S2_BYTEENABLE[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_BYTEENABLE(3),
	o => \AVS_S2_BYTEENABLE[3]~input_o\);

-- Location: LCCOMB_X1_Y11_N22
\Mux60~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux60~1_combout\ = (\selected_master[1]~4_combout\ & ((\Mux60~0_combout\ & (\AVS_S3_BYTEENABLE[3]~input_o\)) # (!\Mux60~0_combout\ & ((\AVS_S2_BYTEENABLE[3]~input_o\))))) # (!\selected_master[1]~4_combout\ & (((\Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_BYTEENABLE[3]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \Mux60~0_combout\,
	datad => \AVS_S2_BYTEENABLE[3]~input_o\,
	combout => \Mux60~1_combout\);

-- Location: IOIBUF_X1_Y0_N8
\AVS_S3_BYTEENABLE[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_BYTEENABLE(2),
	o => \AVS_S3_BYTEENABLE[2]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\AVS_S0_BYTEENABLE[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_BYTEENABLE(2),
	o => \AVS_S0_BYTEENABLE[2]~input_o\);

-- Location: LCCOMB_X1_Y11_N20
\Mux61~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & (\AVS_S2_BYTEENABLE[2]~input_o\)) # (!\selected_master[1]~4_combout\ & 
-- ((\AVS_S0_BYTEENABLE[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_BYTEENABLE[2]~input_o\,
	datab => \AVS_S0_BYTEENABLE[2]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X1_Y11_N2
\Mux61~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (\selected_master[0]~2_combout\ & ((\Mux61~0_combout\ & ((\AVS_S3_BYTEENABLE[2]~input_o\))) # (!\Mux61~0_combout\ & (\AVS_S1_BYTEENABLE[2]~input_o\)))) # (!\selected_master[0]~2_combout\ & (((\Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S1_BYTEENABLE[2]~input_o\,
	datab => \AVS_S3_BYTEENABLE[2]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \Mux61~0_combout\,
	combout => \Mux61~1_combout\);

-- Location: IOIBUF_X0_Y13_N1
\AVS_S1_BYTEENABLE[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_BYTEENABLE(1),
	o => \AVS_S1_BYTEENABLE[1]~input_o\);

-- Location: LCCOMB_X1_Y11_N8
\Mux62~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (\selected_master[1]~4_combout\ & (((\selected_master[0]~2_combout\)))) # (!\selected_master[1]~4_combout\ & ((\selected_master[0]~2_combout\ & ((\AVS_S1_BYTEENABLE[1]~input_o\))) # (!\selected_master[0]~2_combout\ & 
-- (\AVS_S0_BYTEENABLE[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_BYTEENABLE[1]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S1_BYTEENABLE[1]~input_o\,
	combout => \Mux62~0_combout\);

-- Location: IOIBUF_X0_Y12_N15
\AVS_S2_BYTEENABLE[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_BYTEENABLE(1),
	o => \AVS_S2_BYTEENABLE[1]~input_o\);

-- Location: LCCOMB_X1_Y11_N30
\Mux62~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = (\selected_master[1]~4_combout\ & ((\Mux62~0_combout\ & (\AVS_S3_BYTEENABLE[1]~input_o\)) # (!\Mux62~0_combout\ & ((\AVS_S2_BYTEENABLE[1]~input_o\))))) # (!\selected_master[1]~4_combout\ & (((\Mux62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_BYTEENABLE[1]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \Mux62~0_combout\,
	datad => \AVS_S2_BYTEENABLE[1]~input_o\,
	combout => \Mux62~1_combout\);

-- Location: IOIBUF_X0_Y19_N8
\AVS_S3_BYTEENABLE[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_BYTEENABLE(0),
	o => \AVS_S3_BYTEENABLE[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\AVS_S0_BYTEENABLE[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_BYTEENABLE(0),
	o => \AVS_S0_BYTEENABLE[0]~input_o\);

-- Location: LCCOMB_X1_Y11_N24
\Mux63~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & (\AVS_S2_BYTEENABLE[0]~input_o\)) # (!\selected_master[1]~4_combout\ & 
-- ((\AVS_S0_BYTEENABLE[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_BYTEENABLE[0]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S0_BYTEENABLE[0]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux63~0_combout\);

-- Location: LCCOMB_X1_Y11_N10
\Mux63~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux63~1_combout\ = (\selected_master[0]~2_combout\ & ((\Mux63~0_combout\ & ((\AVS_S3_BYTEENABLE[0]~input_o\))) # (!\Mux63~0_combout\ & (\AVS_S1_BYTEENABLE[0]~input_o\)))) # (!\selected_master[0]~2_combout\ & (((\Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S1_BYTEENABLE[0]~input_o\,
	datab => \AVS_S3_BYTEENABLE[0]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \Mux63~0_combout\,
	combout => \Mux63~1_combout\);

-- Location: LCCOMB_X1_Y11_N12
\AVM_M1_ADDRESS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AVM_M1_ADDRESS~0_combout\ = (!\Mux61~1_combout\ & ((\Mux60~1_combout\ & (!\Mux62~1_combout\ & !\Mux63~1_combout\)) # (!\Mux60~1_combout\ & (\Mux62~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~1_combout\,
	datab => \Mux61~1_combout\,
	datac => \Mux62~1_combout\,
	datad => \Mux63~1_combout\,
	combout => \AVM_M1_ADDRESS~0_combout\);

-- Location: LCCOMB_X1_Y11_N26
\AVM_M1_ADDRESS~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AVM_M1_ADDRESS~1_combout\ = (!\Mux62~1_combout\ & (!\Mux63~1_combout\ & ((\Mux60~1_combout\) # (\Mux61~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~1_combout\,
	datab => \Mux61~1_combout\,
	datac => \Mux62~1_combout\,
	datad => \Mux63~1_combout\,
	combout => \AVM_M1_ADDRESS~1_combout\);

-- Location: IOIBUF_X67_Y0_N15
\AVS_S0_ADDRESS[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(0),
	o => \AVS_S0_ADDRESS[0]~input_o\);

-- Location: IOIBUF_X85_Y0_N22
\AVS_S1_ADDRESS[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(0),
	o => \AVS_S1_ADDRESS[0]~input_o\);

-- Location: LCCOMB_X77_Y1_N8
\Mux59~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\selected_master[1]~4_combout\ & (((\selected_master[0]~2_combout\)))) # (!\selected_master[1]~4_combout\ & ((\selected_master[0]~2_combout\ & ((\AVS_S1_ADDRESS[0]~input_o\))) # (!\selected_master[0]~2_combout\ & 
-- (\AVS_S0_ADDRESS[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~4_combout\,
	datab => \AVS_S0_ADDRESS[0]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S1_ADDRESS[0]~input_o\,
	combout => \Mux59~0_combout\);

-- Location: IOIBUF_X89_Y0_N15
\AVS_S3_ADDRESS[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(0),
	o => \AVS_S3_ADDRESS[0]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\AVS_S2_ADDRESS[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(0),
	o => \AVS_S2_ADDRESS[0]~input_o\);

-- Location: LCCOMB_X77_Y1_N18
\Mux59~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux59~1_combout\ = (\selected_master[1]~4_combout\ & ((\Mux59~0_combout\ & (\AVS_S3_ADDRESS[0]~input_o\)) # (!\Mux59~0_combout\ & ((\AVS_S2_ADDRESS[0]~input_o\))))) # (!\selected_master[1]~4_combout\ & (\Mux59~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~4_combout\,
	datab => \Mux59~0_combout\,
	datac => \AVS_S3_ADDRESS[0]~input_o\,
	datad => \AVS_S2_ADDRESS[0]~input_o\,
	combout => \Mux59~1_combout\);

-- Location: IOIBUF_X89_Y0_N1
\AVS_S0_ADDRESS[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(1),
	o => \AVS_S0_ADDRESS[1]~input_o\);

-- Location: IOIBUF_X74_Y0_N22
\AVS_S2_ADDRESS[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(1),
	o => \AVS_S2_ADDRESS[1]~input_o\);

-- Location: LCCOMB_X77_Y1_N16
\Mux58~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\selected_master[1]~4_combout\ & (((\selected_master[0]~2_combout\) # (\AVS_S2_ADDRESS[1]~input_o\)))) # (!\selected_master[1]~4_combout\ & (\AVS_S0_ADDRESS[1]~input_o\ & (!\selected_master[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~4_combout\,
	datab => \AVS_S0_ADDRESS[1]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S2_ADDRESS[1]~input_o\,
	combout => \Mux58~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\AVS_S3_ADDRESS[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(1),
	o => \AVS_S3_ADDRESS[1]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\AVS_S1_ADDRESS[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(1),
	o => \AVS_S1_ADDRESS[1]~input_o\);

-- Location: LCCOMB_X33_Y1_N28
\Mux58~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (\Mux58~0_combout\ & ((\AVS_S3_ADDRESS[1]~input_o\) # ((!\selected_master[0]~2_combout\)))) # (!\Mux58~0_combout\ & (((\selected_master[0]~2_combout\ & \AVS_S1_ADDRESS[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~0_combout\,
	datab => \AVS_S3_ADDRESS[1]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S1_ADDRESS[1]~input_o\,
	combout => \Mux58~1_combout\);

-- Location: IOIBUF_X45_Y0_N22
\AVS_S2_ADDRESS[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(2),
	o => \AVS_S2_ADDRESS[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\AVS_S0_ADDRESS[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(2),
	o => \AVS_S0_ADDRESS[2]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\AVS_S1_ADDRESS[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(2),
	o => \AVS_S1_ADDRESS[2]~input_o\);

-- Location: LCCOMB_X53_Y1_N0
\Mux57~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\selected_master[0]~2_combout\ & (((\AVS_S1_ADDRESS[2]~input_o\) # (\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (\AVS_S0_ADDRESS[2]~input_o\ & ((!\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S0_ADDRESS[2]~input_o\,
	datac => \AVS_S1_ADDRESS[2]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux57~0_combout\);

-- Location: IOIBUF_X54_Y0_N15
\AVS_S3_ADDRESS[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(2),
	o => \AVS_S3_ADDRESS[2]~input_o\);

-- Location: LCCOMB_X53_Y1_N14
\Mux57~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (\Mux57~0_combout\ & (((\AVS_S3_ADDRESS[2]~input_o\) # (!\selected_master[1]~4_combout\)))) # (!\Mux57~0_combout\ & (\AVS_S2_ADDRESS[2]~input_o\ & ((\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_ADDRESS[2]~input_o\,
	datab => \Mux57~0_combout\,
	datac => \AVS_S3_ADDRESS[2]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux57~1_combout\);

-- Location: IOIBUF_X58_Y0_N15
\AVS_S3_ADDRESS[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(3),
	o => \AVS_S3_ADDRESS[3]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\AVS_S0_ADDRESS[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(3),
	o => \AVS_S0_ADDRESS[3]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\AVS_S2_ADDRESS[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(3),
	o => \AVS_S2_ADDRESS[3]~input_o\);

-- Location: LCCOMB_X53_Y1_N4
\Mux56~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & ((\AVS_S2_ADDRESS[3]~input_o\))) # (!\selected_master[1]~4_combout\ & 
-- (\AVS_S0_ADDRESS[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S0_ADDRESS[3]~input_o\,
	datac => \AVS_S2_ADDRESS[3]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux56~0_combout\);

-- Location: IOIBUF_X60_Y0_N15
\AVS_S1_ADDRESS[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(3),
	o => \AVS_S1_ADDRESS[3]~input_o\);

-- Location: LCCOMB_X53_Y1_N2
\Mux56~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = (\selected_master[0]~2_combout\ & ((\Mux56~0_combout\ & (\AVS_S3_ADDRESS[3]~input_o\)) # (!\Mux56~0_combout\ & ((\AVS_S1_ADDRESS[3]~input_o\))))) # (!\selected_master[0]~2_combout\ & (((\Mux56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S3_ADDRESS[3]~input_o\,
	datac => \Mux56~0_combout\,
	datad => \AVS_S1_ADDRESS[3]~input_o\,
	combout => \Mux56~1_combout\);

-- Location: IOIBUF_X49_Y0_N22
\AVS_S2_ADDRESS[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(4),
	o => \AVS_S2_ADDRESS[4]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\AVS_S1_ADDRESS[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(4),
	o => \AVS_S1_ADDRESS[4]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\AVS_S0_ADDRESS[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(4),
	o => \AVS_S0_ADDRESS[4]~input_o\);

-- Location: LCCOMB_X53_Y1_N28
\Mux55~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\selected_master[0]~2_combout\ & ((\AVS_S1_ADDRESS[4]~input_o\) # ((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (((\AVS_S0_ADDRESS[4]~input_o\ & !\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S1_ADDRESS[4]~input_o\,
	datac => \AVS_S0_ADDRESS[4]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux55~0_combout\);

-- Location: IOIBUF_X58_Y0_N8
\AVS_S3_ADDRESS[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(4),
	o => \AVS_S3_ADDRESS[4]~input_o\);

-- Location: LCCOMB_X53_Y1_N10
\Mux55~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = (\Mux55~0_combout\ & (((\AVS_S3_ADDRESS[4]~input_o\) # (!\selected_master[1]~4_combout\)))) # (!\Mux55~0_combout\ & (\AVS_S2_ADDRESS[4]~input_o\ & ((\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_ADDRESS[4]~input_o\,
	datab => \Mux55~0_combout\,
	datac => \AVS_S3_ADDRESS[4]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux55~1_combout\);

-- Location: IOIBUF_X52_Y0_N15
\AVS_S2_ADDRESS[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(5),
	o => \AVS_S2_ADDRESS[5]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\AVS_S0_ADDRESS[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(5),
	o => \AVS_S0_ADDRESS[5]~input_o\);

-- Location: LCCOMB_X53_Y1_N16
\Mux54~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & (\AVS_S2_ADDRESS[5]~input_o\)) # (!\selected_master[1]~4_combout\ & 
-- ((\AVS_S0_ADDRESS[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S2_ADDRESS[5]~input_o\,
	datac => \AVS_S0_ADDRESS[5]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux54~0_combout\);

-- Location: IOIBUF_X54_Y0_N1
\AVS_S3_ADDRESS[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(5),
	o => \AVS_S3_ADDRESS[5]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\AVS_S1_ADDRESS[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(5),
	o => \AVS_S1_ADDRESS[5]~input_o\);

-- Location: LCCOMB_X53_Y1_N22
\Mux54~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = (\selected_master[0]~2_combout\ & ((\Mux54~0_combout\ & (\AVS_S3_ADDRESS[5]~input_o\)) # (!\Mux54~0_combout\ & ((\AVS_S1_ADDRESS[5]~input_o\))))) # (!\selected_master[0]~2_combout\ & (\Mux54~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \Mux54~0_combout\,
	datac => \AVS_S3_ADDRESS[5]~input_o\,
	datad => \AVS_S1_ADDRESS[5]~input_o\,
	combout => \Mux54~1_combout\);

-- Location: IOIBUF_X89_Y0_N22
\AVS_S3_ADDRESS[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(6),
	o => \AVS_S3_ADDRESS[6]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\AVS_S1_ADDRESS[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(6),
	o => \AVS_S1_ADDRESS[6]~input_o\);

-- Location: IOIBUF_X83_Y0_N15
\AVS_S0_ADDRESS[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(6),
	o => \AVS_S0_ADDRESS[6]~input_o\);

-- Location: LCCOMB_X77_Y1_N14
\Mux53~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\selected_master[0]~2_combout\ & ((\AVS_S1_ADDRESS[6]~input_o\) # ((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (((\AVS_S0_ADDRESS[6]~input_o\ & !\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S1_ADDRESS[6]~input_o\,
	datac => \AVS_S0_ADDRESS[6]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux53~0_combout\);

-- Location: IOIBUF_X74_Y0_N8
\AVS_S2_ADDRESS[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(6),
	o => \AVS_S2_ADDRESS[6]~input_o\);

-- Location: LCCOMB_X77_Y1_N20
\Mux53~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = (\Mux53~0_combout\ & ((\AVS_S3_ADDRESS[6]~input_o\) # ((!\selected_master[1]~4_combout\)))) # (!\Mux53~0_combout\ & (((\AVS_S2_ADDRESS[6]~input_o\ & \selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_ADDRESS[6]~input_o\,
	datab => \Mux53~0_combout\,
	datac => \AVS_S2_ADDRESS[6]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux53~1_combout\);

-- Location: IOIBUF_X0_Y34_N8
\AVS_S3_ADDRESS[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(7),
	o => \AVS_S3_ADDRESS[7]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\AVS_S0_ADDRESS[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(7),
	o => \AVS_S0_ADDRESS[7]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\AVS_S2_ADDRESS[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(7),
	o => \AVS_S2_ADDRESS[7]~input_o\);

-- Location: LCCOMB_X1_Y44_N4
\Mux52~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\selected_master[0]~2_combout\ & (\selected_master[1]~4_combout\)) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & ((\AVS_S2_ADDRESS[7]~input_o\))) # (!\selected_master[1]~4_combout\ & 
-- (\AVS_S0_ADDRESS[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \selected_master[1]~4_combout\,
	datac => \AVS_S0_ADDRESS[7]~input_o\,
	datad => \AVS_S2_ADDRESS[7]~input_o\,
	combout => \Mux52~0_combout\);

-- Location: IOIBUF_X0_Y42_N8
\AVS_S1_ADDRESS[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(7),
	o => \AVS_S1_ADDRESS[7]~input_o\);

-- Location: LCCOMB_X1_Y44_N30
\Mux52~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = (\Mux52~0_combout\ & ((\AVS_S3_ADDRESS[7]~input_o\) # ((!\selected_master[0]~2_combout\)))) # (!\Mux52~0_combout\ & (((\selected_master[0]~2_combout\ & \AVS_S1_ADDRESS[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_ADDRESS[7]~input_o\,
	datab => \Mux52~0_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S1_ADDRESS[7]~input_o\,
	combout => \Mux52~1_combout\);

-- Location: IOIBUF_X0_Y49_N8
\AVS_S0_ADDRESS[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(8),
	o => \AVS_S0_ADDRESS[8]~input_o\);

-- Location: LCCOMB_X1_Y44_N8
\Mux51~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\selected_master[1]~4_combout\ & (((\selected_master[0]~2_combout\)))) # (!\selected_master[1]~4_combout\ & ((\selected_master[0]~2_combout\ & (\AVS_S1_ADDRESS[8]~input_o\)) # (!\selected_master[0]~2_combout\ & 
-- ((\AVS_S0_ADDRESS[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S1_ADDRESS[8]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S0_ADDRESS[8]~input_o\,
	combout => \Mux51~0_combout\);

-- Location: IOIBUF_X115_Y45_N22
\AVS_S2_ADDRESS[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(8),
	o => \AVS_S2_ADDRESS[8]~input_o\);

-- Location: IOIBUF_X115_Y50_N8
\AVS_S3_ADDRESS[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(8),
	o => \AVS_S3_ADDRESS[8]~input_o\);

-- Location: LCCOMB_X114_Y44_N24
\Mux51~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = (\Mux51~0_combout\ & (((\AVS_S3_ADDRESS[8]~input_o\) # (!\selected_master[1]~4_combout\)))) # (!\Mux51~0_combout\ & (\AVS_S2_ADDRESS[8]~input_o\ & ((\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~0_combout\,
	datab => \AVS_S2_ADDRESS[8]~input_o\,
	datac => \AVS_S3_ADDRESS[8]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux51~1_combout\);

-- Location: IOIBUF_X0_Y47_N15
\AVS_S3_ADDRESS[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(9),
	o => \AVS_S3_ADDRESS[9]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\AVS_S1_ADDRESS[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(9),
	o => \AVS_S1_ADDRESS[9]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\AVS_S0_ADDRESS[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(9),
	o => \AVS_S0_ADDRESS[9]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\AVS_S2_ADDRESS[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(9),
	o => \AVS_S2_ADDRESS[9]~input_o\);

-- Location: LCCOMB_X1_Y44_N6
\Mux50~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & ((\AVS_S2_ADDRESS[9]~input_o\))) # (!\selected_master[1]~4_combout\ & 
-- (\AVS_S0_ADDRESS[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S0_ADDRESS[9]~input_o\,
	datac => \selected_master[1]~4_combout\,
	datad => \AVS_S2_ADDRESS[9]~input_o\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X1_Y44_N20
\Mux50~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = (\selected_master[0]~2_combout\ & ((\Mux50~0_combout\ & (\AVS_S3_ADDRESS[9]~input_o\)) # (!\Mux50~0_combout\ & ((\AVS_S1_ADDRESS[9]~input_o\))))) # (!\selected_master[0]~2_combout\ & (((\Mux50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S3_ADDRESS[9]~input_o\,
	datac => \AVS_S1_ADDRESS[9]~input_o\,
	datad => \Mux50~0_combout\,
	combout => \Mux50~1_combout\);

-- Location: IOIBUF_X0_Y50_N15
\AVS_S2_ADDRESS[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(10),
	o => \AVS_S2_ADDRESS[10]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\AVS_S1_ADDRESS[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(10),
	o => \AVS_S1_ADDRESS[10]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\AVS_S0_ADDRESS[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(10),
	o => \AVS_S0_ADDRESS[10]~input_o\);

-- Location: LCCOMB_X1_Y44_N14
\Mux49~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (\selected_master[0]~2_combout\ & ((\AVS_S1_ADDRESS[10]~input_o\) # ((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (((!\selected_master[1]~4_combout\ & \AVS_S0_ADDRESS[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S1_ADDRESS[10]~input_o\,
	datac => \selected_master[1]~4_combout\,
	datad => \AVS_S0_ADDRESS[10]~input_o\,
	combout => \Mux49~0_combout\);

-- Location: IOIBUF_X0_Y47_N1
\AVS_S3_ADDRESS[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(10),
	o => \AVS_S3_ADDRESS[10]~input_o\);

-- Location: LCCOMB_X1_Y44_N16
\Mux49~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = (\selected_master[1]~4_combout\ & ((\Mux49~0_combout\ & ((\AVS_S3_ADDRESS[10]~input_o\))) # (!\Mux49~0_combout\ & (\AVS_S2_ADDRESS[10]~input_o\)))) # (!\selected_master[1]~4_combout\ & (((\Mux49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_ADDRESS[10]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \Mux49~0_combout\,
	datad => \AVS_S3_ADDRESS[10]~input_o\,
	combout => \Mux49~1_combout\);

-- Location: IOIBUF_X0_Y45_N22
\AVS_S3_ADDRESS[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(11),
	o => \AVS_S3_ADDRESS[11]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\AVS_S1_ADDRESS[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(11),
	o => \AVS_S1_ADDRESS[11]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\AVS_S2_ADDRESS[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(11),
	o => \AVS_S2_ADDRESS[11]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\AVS_S0_ADDRESS[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(11),
	o => \AVS_S0_ADDRESS[11]~input_o\);

-- Location: LCCOMB_X1_Y44_N10
\Mux48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & (\AVS_S2_ADDRESS[11]~input_o\)) # (!\selected_master[1]~4_combout\ & 
-- ((\AVS_S0_ADDRESS[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S2_ADDRESS[11]~input_o\,
	datac => \selected_master[1]~4_combout\,
	datad => \AVS_S0_ADDRESS[11]~input_o\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X1_Y44_N12
\Mux48~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = (\selected_master[0]~2_combout\ & ((\Mux48~0_combout\ & (\AVS_S3_ADDRESS[11]~input_o\)) # (!\Mux48~0_combout\ & ((\AVS_S1_ADDRESS[11]~input_o\))))) # (!\selected_master[0]~2_combout\ & (((\Mux48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S3_ADDRESS[11]~input_o\,
	datac => \AVS_S1_ADDRESS[11]~input_o\,
	datad => \Mux48~0_combout\,
	combout => \Mux48~1_combout\);

-- Location: IOIBUF_X0_Y55_N22
\AVS_S2_ADDRESS[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(12),
	o => \AVS_S2_ADDRESS[12]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\AVS_S3_ADDRESS[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(12),
	o => \AVS_S3_ADDRESS[12]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\AVS_S0_ADDRESS[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(12),
	o => \AVS_S0_ADDRESS[12]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\AVS_S1_ADDRESS[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(12),
	o => \AVS_S1_ADDRESS[12]~input_o\);

-- Location: LCCOMB_X1_Y44_N2
\Mux47~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\) # (\AVS_S1_ADDRESS[12]~input_o\)))) # (!\selected_master[0]~2_combout\ & (\AVS_S0_ADDRESS[12]~input_o\ & (!\selected_master[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S0_ADDRESS[12]~input_o\,
	datac => \selected_master[1]~4_combout\,
	datad => \AVS_S1_ADDRESS[12]~input_o\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X1_Y44_N24
\Mux47~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux47~1_combout\ = (\selected_master[1]~4_combout\ & ((\Mux47~0_combout\ & ((\AVS_S3_ADDRESS[12]~input_o\))) # (!\Mux47~0_combout\ & (\AVS_S2_ADDRESS[12]~input_o\)))) # (!\selected_master[1]~4_combout\ & (((\Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_ADDRESS[12]~input_o\,
	datab => \AVS_S3_ADDRESS[12]~input_o\,
	datac => \selected_master[1]~4_combout\,
	datad => \Mux47~0_combout\,
	combout => \Mux47~1_combout\);

-- Location: IOIBUF_X115_Y13_N8
\AVS_S3_ADDRESS[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(13),
	o => \AVS_S3_ADDRESS[13]~input_o\);

-- Location: IOIBUF_X115_Y23_N1
\AVS_S2_ADDRESS[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(13),
	o => \AVS_S2_ADDRESS[13]~input_o\);

-- Location: LCCOMB_X114_Y22_N24
\Mux46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & ((\AVS_S2_ADDRESS[13]~input_o\))) # (!\selected_master[1]~4_combout\ & 
-- (\AVS_S0_ADDRESS[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_ADDRESS[13]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S2_ADDRESS[13]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux46~0_combout\);

-- Location: IOIBUF_X115_Y27_N8
\AVS_S1_ADDRESS[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(13),
	o => \AVS_S1_ADDRESS[13]~input_o\);

-- Location: LCCOMB_X114_Y22_N30
\Mux46~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = (\Mux46~0_combout\ & ((\AVS_S3_ADDRESS[13]~input_o\) # ((!\selected_master[0]~2_combout\)))) # (!\Mux46~0_combout\ & (((\AVS_S1_ADDRESS[13]~input_o\ & \selected_master[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_ADDRESS[13]~input_o\,
	datab => \Mux46~0_combout\,
	datac => \AVS_S1_ADDRESS[13]~input_o\,
	datad => \selected_master[0]~2_combout\,
	combout => \Mux46~1_combout\);

-- Location: IOIBUF_X29_Y0_N22
\AVS_S2_ADDRESS[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(14),
	o => \AVS_S2_ADDRESS[14]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\AVS_S3_ADDRESS[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(14),
	o => \AVS_S3_ADDRESS[14]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\AVS_S0_ADDRESS[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(14),
	o => \AVS_S0_ADDRESS[14]~input_o\);

-- Location: LCCOMB_X17_Y1_N0
\Mux45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\selected_master[0]~2_combout\ & ((\AVS_S1_ADDRESS[14]~input_o\) # ((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (((!\selected_master[1]~4_combout\ & \AVS_S0_ADDRESS[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S1_ADDRESS[14]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \selected_master[1]~4_combout\,
	datad => \AVS_S0_ADDRESS[14]~input_o\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X17_Y1_N14
\Mux45~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = (\selected_master[1]~4_combout\ & ((\Mux45~0_combout\ & ((\AVS_S3_ADDRESS[14]~input_o\))) # (!\Mux45~0_combout\ & (\AVS_S2_ADDRESS[14]~input_o\)))) # (!\selected_master[1]~4_combout\ & (((\Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_ADDRESS[14]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \AVS_S3_ADDRESS[14]~input_o\,
	datad => \Mux45~0_combout\,
	combout => \Mux45~1_combout\);

-- Location: IOIBUF_X83_Y0_N1
\AVS_S0_ADDRESS[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(15),
	o => \AVS_S0_ADDRESS[15]~input_o\);

-- Location: IOIBUF_X87_Y0_N15
\AVS_S2_ADDRESS[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(15),
	o => \AVS_S2_ADDRESS[15]~input_o\);

-- Location: LCCOMB_X77_Y1_N10
\Mux44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\selected_master[1]~4_combout\ & (((\selected_master[0]~2_combout\) # (\AVS_S2_ADDRESS[15]~input_o\)))) # (!\selected_master[1]~4_combout\ & (\AVS_S0_ADDRESS[15]~input_o\ & (!\selected_master[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~4_combout\,
	datab => \AVS_S0_ADDRESS[15]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S2_ADDRESS[15]~input_o\,
	combout => \Mux44~0_combout\);

-- Location: IOIBUF_X79_Y0_N1
\AVS_S3_ADDRESS[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(15),
	o => \AVS_S3_ADDRESS[15]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\AVS_S1_ADDRESS[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(15),
	o => \AVS_S1_ADDRESS[15]~input_o\);

-- Location: LCCOMB_X77_Y1_N24
\Mux44~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = (\Mux44~0_combout\ & ((\AVS_S3_ADDRESS[15]~input_o\) # ((!\selected_master[0]~2_combout\)))) # (!\Mux44~0_combout\ & (((\selected_master[0]~2_combout\ & \AVS_S1_ADDRESS[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~0_combout\,
	datab => \AVS_S3_ADDRESS[15]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S1_ADDRESS[15]~input_o\,
	combout => \Mux44~1_combout\);

-- Location: IOIBUF_X87_Y0_N22
\AVS_S2_ADDRESS[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(16),
	o => \AVS_S2_ADDRESS[16]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\AVS_S3_ADDRESS[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(16),
	o => \AVS_S3_ADDRESS[16]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\AVS_S0_ADDRESS[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(16),
	o => \AVS_S0_ADDRESS[16]~input_o\);

-- Location: LCCOMB_X77_Y1_N30
\Mux43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\selected_master[0]~2_combout\ & ((\AVS_S1_ADDRESS[16]~input_o\) # ((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (((\AVS_S0_ADDRESS[16]~input_o\ & !\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S1_ADDRESS[16]~input_o\,
	datab => \AVS_S0_ADDRESS[16]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X77_Y1_N28
\Mux43~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (\Mux43~0_combout\ & (((\AVS_S3_ADDRESS[16]~input_o\) # (!\selected_master[1]~4_combout\)))) # (!\Mux43~0_combout\ & (\AVS_S2_ADDRESS[16]~input_o\ & ((\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_ADDRESS[16]~input_o\,
	datab => \AVS_S3_ADDRESS[16]~input_o\,
	datac => \Mux43~0_combout\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux43~1_combout\);

-- Location: IOIBUF_X18_Y0_N22
\AVS_S0_ADDRESS[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(17),
	o => \AVS_S0_ADDRESS[17]~input_o\);

-- Location: LCCOMB_X17_Y1_N12
\Mux42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & (\AVS_S2_ADDRESS[17]~input_o\)) # (!\selected_master[1]~4_combout\ & 
-- ((\AVS_S0_ADDRESS[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_ADDRESS[17]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \selected_master[1]~4_combout\,
	datad => \AVS_S0_ADDRESS[17]~input_o\,
	combout => \Mux42~0_combout\);

-- Location: IOIBUF_X20_Y0_N22
\AVS_S1_ADDRESS[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(17),
	o => \AVS_S1_ADDRESS[17]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\AVS_S3_ADDRESS[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(17),
	o => \AVS_S3_ADDRESS[17]~input_o\);

-- Location: LCCOMB_X17_Y1_N26
\Mux42~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (\Mux42~0_combout\ & (((\AVS_S3_ADDRESS[17]~input_o\)) # (!\selected_master[0]~2_combout\))) # (!\Mux42~0_combout\ & (\selected_master[0]~2_combout\ & (\AVS_S1_ADDRESS[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~0_combout\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S1_ADDRESS[17]~input_o\,
	datad => \AVS_S3_ADDRESS[17]~input_o\,
	combout => \Mux42~1_combout\);

-- Location: IOIBUF_X83_Y0_N22
\AVS_S2_ADDRESS[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(18),
	o => \AVS_S2_ADDRESS[18]~input_o\);

-- Location: IOIBUF_X74_Y0_N15
\AVS_S3_ADDRESS[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(18),
	o => \AVS_S3_ADDRESS[18]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\AVS_S1_ADDRESS[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(18),
	o => \AVS_S1_ADDRESS[18]~input_o\);

-- Location: LCCOMB_X77_Y1_N22
\Mux41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\selected_master[0]~2_combout\ & (((\AVS_S1_ADDRESS[18]~input_o\) # (\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (\AVS_S0_ADDRESS[18]~input_o\ & ((!\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_ADDRESS[18]~input_o\,
	datab => \AVS_S1_ADDRESS[18]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X77_Y1_N4
\Mux41~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = (\Mux41~0_combout\ & (((\AVS_S3_ADDRESS[18]~input_o\) # (!\selected_master[1]~4_combout\)))) # (!\Mux41~0_combout\ & (\AVS_S2_ADDRESS[18]~input_o\ & ((\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_ADDRESS[18]~input_o\,
	datab => \AVS_S3_ADDRESS[18]~input_o\,
	datac => \Mux41~0_combout\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux41~1_combout\);

-- Location: IOIBUF_X11_Y0_N15
\AVS_S1_ADDRESS[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(19),
	o => \AVS_S1_ADDRESS[19]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\AVS_S3_ADDRESS[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(19),
	o => \AVS_S3_ADDRESS[19]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\AVS_S2_ADDRESS[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(19),
	o => \AVS_S2_ADDRESS[19]~input_o\);

-- Location: LCCOMB_X17_Y1_N20
\Mux40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & ((\AVS_S2_ADDRESS[19]~input_o\))) # (!\selected_master[1]~4_combout\ & 
-- (\AVS_S0_ADDRESS[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_ADDRESS[19]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \selected_master[1]~4_combout\,
	datad => \AVS_S2_ADDRESS[19]~input_o\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X17_Y1_N18
\Mux40~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\selected_master[0]~2_combout\ & ((\Mux40~0_combout\ & ((\AVS_S3_ADDRESS[19]~input_o\))) # (!\Mux40~0_combout\ & (\AVS_S1_ADDRESS[19]~input_o\)))) # (!\selected_master[0]~2_combout\ & (((\Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S1_ADDRESS[19]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S3_ADDRESS[19]~input_o\,
	datad => \Mux40~0_combout\,
	combout => \Mux40~1_combout\);

-- Location: IOIBUF_X7_Y0_N15
\AVS_S3_ADDRESS[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(20),
	o => \AVS_S3_ADDRESS[20]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\AVS_S2_ADDRESS[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(20),
	o => \AVS_S2_ADDRESS[20]~input_o\);

-- Location: IOIBUF_X7_Y73_N22
\AVS_S1_ADDRESS[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(20),
	o => \AVS_S1_ADDRESS[20]~input_o\);

-- Location: LCCOMB_X12_Y72_N12
\Mux39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\selected_master[1]~4_combout\ & (((\selected_master[0]~2_combout\)))) # (!\selected_master[1]~4_combout\ & ((\selected_master[0]~2_combout\ & ((\AVS_S1_ADDRESS[20]~input_o\))) # (!\selected_master[0]~2_combout\ & 
-- (\AVS_S0_ADDRESS[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_ADDRESS[20]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S1_ADDRESS[20]~input_o\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X17_Y1_N28
\Mux39~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (\selected_master[1]~4_combout\ & ((\Mux39~0_combout\ & (\AVS_S3_ADDRESS[20]~input_o\)) # (!\Mux39~0_combout\ & ((\AVS_S2_ADDRESS[20]~input_o\))))) # (!\selected_master[1]~4_combout\ & (((\Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_ADDRESS[20]~input_o\,
	datab => \AVS_S2_ADDRESS[20]~input_o\,
	datac => \selected_master[1]~4_combout\,
	datad => \Mux39~0_combout\,
	combout => \Mux39~1_combout\);

-- Location: IOIBUF_X9_Y0_N8
\AVS_S2_ADDRESS[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(21),
	o => \AVS_S2_ADDRESS[21]~input_o\);

-- Location: LCCOMB_X17_Y1_N10
\Mux38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & ((\AVS_S2_ADDRESS[21]~input_o\))) # (!\selected_master[1]~4_combout\ & 
-- (\AVS_S0_ADDRESS[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_ADDRESS[21]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \selected_master[1]~4_combout\,
	datad => \AVS_S2_ADDRESS[21]~input_o\,
	combout => \Mux38~0_combout\);

-- Location: IOIBUF_X18_Y0_N8
\AVS_S3_ADDRESS[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(21),
	o => \AVS_S3_ADDRESS[21]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\AVS_S1_ADDRESS[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(21),
	o => \AVS_S1_ADDRESS[21]~input_o\);

-- Location: LCCOMB_X17_Y1_N4
\Mux38~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (\Mux38~0_combout\ & (((\AVS_S3_ADDRESS[21]~input_o\)) # (!\selected_master[0]~2_combout\))) # (!\Mux38~0_combout\ & (\selected_master[0]~2_combout\ & ((\AVS_S1_ADDRESS[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~0_combout\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S3_ADDRESS[21]~input_o\,
	datad => \AVS_S1_ADDRESS[21]~input_o\,
	combout => \Mux38~1_combout\);

-- Location: IOIBUF_X85_Y0_N8
\AVS_S2_ADDRESS[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(22),
	o => \AVS_S2_ADDRESS[22]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\AVS_S3_ADDRESS[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(22),
	o => \AVS_S3_ADDRESS[22]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\AVS_S1_ADDRESS[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(22),
	o => \AVS_S1_ADDRESS[22]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\AVS_S0_ADDRESS[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(22),
	o => \AVS_S0_ADDRESS[22]~input_o\);

-- Location: LCCOMB_X77_Y1_N6
\Mux37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\selected_master[1]~4_combout\ & (((\selected_master[0]~2_combout\)))) # (!\selected_master[1]~4_combout\ & ((\selected_master[0]~2_combout\ & (\AVS_S1_ADDRESS[22]~input_o\)) # (!\selected_master[0]~2_combout\ & 
-- ((\AVS_S0_ADDRESS[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~4_combout\,
	datab => \AVS_S1_ADDRESS[22]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S0_ADDRESS[22]~input_o\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X77_Y1_N0
\Mux37~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\selected_master[1]~4_combout\ & ((\Mux37~0_combout\ & ((\AVS_S3_ADDRESS[22]~input_o\))) # (!\Mux37~0_combout\ & (\AVS_S2_ADDRESS[22]~input_o\)))) # (!\selected_master[1]~4_combout\ & (((\Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~4_combout\,
	datab => \AVS_S2_ADDRESS[22]~input_o\,
	datac => \AVS_S3_ADDRESS[22]~input_o\,
	datad => \Mux37~0_combout\,
	combout => \Mux37~1_combout\);

-- Location: IOIBUF_X115_Y15_N1
\AVS_S0_ADDRESS[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(23),
	o => \AVS_S0_ADDRESS[23]~input_o\);

-- Location: LCCOMB_X114_Y22_N12
\Mux36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & (\AVS_S2_ADDRESS[23]~input_o\)) # (!\selected_master[1]~4_combout\ & 
-- ((\AVS_S0_ADDRESS[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_ADDRESS[23]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S0_ADDRESS[23]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux36~0_combout\);

-- Location: IOIBUF_X115_Y24_N1
\AVS_S1_ADDRESS[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(23),
	o => \AVS_S1_ADDRESS[23]~input_o\);

-- Location: IOIBUF_X115_Y18_N1
\AVS_S3_ADDRESS[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(23),
	o => \AVS_S3_ADDRESS[23]~input_o\);

-- Location: LCCOMB_X114_Y22_N2
\Mux36~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\Mux36~0_combout\ & (((\AVS_S3_ADDRESS[23]~input_o\) # (!\selected_master[0]~2_combout\)))) # (!\Mux36~0_combout\ & (\AVS_S1_ADDRESS[23]~input_o\ & ((\selected_master[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~0_combout\,
	datab => \AVS_S1_ADDRESS[23]~input_o\,
	datac => \AVS_S3_ADDRESS[23]~input_o\,
	datad => \selected_master[0]~2_combout\,
	combout => \Mux36~1_combout\);

-- Location: IOIBUF_X115_Y36_N1
\AVS_S3_ADDRESS[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(24),
	o => \AVS_S3_ADDRESS[24]~input_o\);

-- Location: IOIBUF_X115_Y48_N8
\AVS_S1_ADDRESS[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(24),
	o => \AVS_S1_ADDRESS[24]~input_o\);

-- Location: LCCOMB_X114_Y44_N6
\Mux35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\selected_master[0]~2_combout\ & (((\AVS_S1_ADDRESS[24]~input_o\) # (\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (\AVS_S0_ADDRESS[24]~input_o\ & ((!\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_ADDRESS[24]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S1_ADDRESS[24]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux35~0_combout\);

-- Location: IOIBUF_X115_Y36_N8
\AVS_S2_ADDRESS[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_ADDRESS(24),
	o => \AVS_S2_ADDRESS[24]~input_o\);

-- Location: LCCOMB_X114_Y36_N24
\Mux35~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\Mux35~0_combout\ & ((\AVS_S3_ADDRESS[24]~input_o\) # ((!\selected_master[1]~4_combout\)))) # (!\Mux35~0_combout\ & (((\AVS_S2_ADDRESS[24]~input_o\ & \selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_ADDRESS[24]~input_o\,
	datab => \Mux35~0_combout\,
	datac => \AVS_S2_ADDRESS[24]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux35~1_combout\);

-- Location: IOIBUF_X115_Y29_N1
\AVS_S0_ADDRESS[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_ADDRESS(25),
	o => \AVS_S0_ADDRESS[25]~input_o\);

-- Location: LCCOMB_X114_Y22_N0
\Mux34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\selected_master[1]~4_combout\ & ((\AVS_S2_ADDRESS[25]~input_o\) # ((\selected_master[0]~2_combout\)))) # (!\selected_master[1]~4_combout\ & (((\AVS_S0_ADDRESS[25]~input_o\ & !\selected_master[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_ADDRESS[25]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \AVS_S0_ADDRESS[25]~input_o\,
	datad => \selected_master[0]~2_combout\,
	combout => \Mux34~0_combout\);

-- Location: IOIBUF_X115_Y40_N1
\AVS_S3_ADDRESS[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_ADDRESS(25),
	o => \AVS_S3_ADDRESS[25]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\AVS_S1_ADDRESS[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_ADDRESS(25),
	o => \AVS_S1_ADDRESS[25]~input_o\);

-- Location: LCCOMB_X114_Y44_N20
\Mux34~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\Mux34~0_combout\ & (((\AVS_S3_ADDRESS[25]~input_o\)) # (!\selected_master[0]~2_combout\))) # (!\Mux34~0_combout\ & (\selected_master[0]~2_combout\ & ((\AVS_S1_ADDRESS[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S3_ADDRESS[25]~input_o\,
	datad => \AVS_S1_ADDRESS[25]~input_o\,
	combout => \Mux34~1_combout\);

-- Location: IOIBUF_X115_Y66_N15
\AVS_S0_CHIPSELECT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_CHIPSELECT,
	o => \AVS_S0_CHIPSELECT~input_o\);

-- Location: LCCOMB_X114_Y69_N16
\selected_master[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selected_master[1]~0_combout\ = (!\AVS_S2_CHIPSELECT~input_o\ & (!\AVS_S3_CHIPSELECT~input_o\ & (!\AVS_S1_CHIPSELECT~input_o\ & !\AVS_S0_CHIPSELECT~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_CHIPSELECT~input_o\,
	datab => \AVS_S3_CHIPSELECT~input_o\,
	datac => \AVS_S1_CHIPSELECT~input_o\,
	datad => \AVS_S0_CHIPSELECT~input_o\,
	combout => \selected_master[1]~0_combout\);

-- Location: IOIBUF_X115_Y64_N1
\AVS_S2_READ~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_READ,
	o => \AVS_S2_READ~input_o\);

-- Location: IOIBUF_X115_Y69_N22
\AVS_S1_READ~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_READ,
	o => \AVS_S1_READ~input_o\);

-- Location: LCCOMB_X114_Y69_N22
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\selected_master[0]~2_combout\ & (((\AVS_S1_READ~input_o\) # (\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (\AVS_S0_READ~input_o\ & ((!\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_READ~input_o\,
	datab => \AVS_S1_READ~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X114_Y69_N24
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & ((\AVS_S3_READ~input_o\) # ((!\selected_master[1]~4_combout\)))) # (!\Mux0~0_combout\ & (((\AVS_S2_READ~input_o\ & \selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_READ~input_o\,
	datab => \AVS_S2_READ~input_o\,
	datac => \Mux0~0_combout\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X114_Y69_N20
\AVM_M1_READ~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AVM_M1_READ~2_combout\ = (\Mux0~1_combout\ & ((\change_master~q\ & (!\selected_master[1]~0_combout\)) # (!\change_master~q\ & ((\master_found_r~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~0_combout\,
	datab => \Mux0~1_combout\,
	datac => \master_found_r~q\,
	datad => \change_master~q\,
	combout => \AVM_M1_READ~2_combout\);

-- Location: IOIBUF_X115_Y65_N22
\AVS_S1_WRITE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITE,
	o => \AVS_S1_WRITE~input_o\);

-- Location: IOIBUF_X115_Y69_N15
\AVS_S2_WRITE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITE,
	o => \AVS_S2_WRITE~input_o\);

-- Location: IOIBUF_X115_Y66_N22
\AVS_S0_WRITE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITE,
	o => \AVS_S0_WRITE~input_o\);

-- Location: LCCOMB_X114_Y69_N6
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\selected_master[1]~4_combout\ & ((\AVS_S2_WRITE~input_o\) # ((\selected_master[0]~2_combout\)))) # (!\selected_master[1]~4_combout\ & (((\AVS_S0_WRITE~input_o\ & !\selected_master[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~4_combout\,
	datab => \AVS_S2_WRITE~input_o\,
	datac => \AVS_S0_WRITE~input_o\,
	datad => \selected_master[0]~2_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X114_Y69_N0
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & ((\AVS_S3_WRITE~input_o\) # ((!\selected_master[0]~2_combout\)))) # (!\Mux1~0_combout\ & (((\AVS_S1_WRITE~input_o\ & \selected_master[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_WRITE~input_o\,
	datab => \AVS_S1_WRITE~input_o\,
	datac => \Mux1~0_combout\,
	datad => \selected_master[0]~2_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X114_Y69_N2
\AVM_M1_WRITE~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AVM_M1_WRITE~2_combout\ = (\Mux1~1_combout\ & ((\change_master~q\ & (!\selected_master[1]~0_combout\)) # (!\change_master~q\ & ((\master_found_r~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~0_combout\,
	datab => \master_found_r~q\,
	datac => \Mux1~1_combout\,
	datad => \change_master~q\,
	combout => \AVM_M1_WRITE~2_combout\);

-- Location: IOIBUF_X0_Y44_N8
\AVS_S0_WRITEDATA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(0),
	o => \AVS_S0_WRITEDATA[0]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\AVS_S1_WRITEDATA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(0),
	o => \AVS_S1_WRITEDATA[0]~input_o\);

-- Location: LCCOMB_X1_Y44_N26
\Mux33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\) # (\AVS_S1_WRITEDATA[0]~input_o\)))) # (!\selected_master[0]~2_combout\ & (\AVS_S0_WRITEDATA[0]~input_o\ & (!\selected_master[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S0_WRITEDATA[0]~input_o\,
	datac => \selected_master[1]~4_combout\,
	datad => \AVS_S1_WRITEDATA[0]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: IOIBUF_X0_Y53_N1
\AVS_S3_WRITEDATA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(0),
	o => \AVS_S3_WRITEDATA[0]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\AVS_S2_WRITEDATA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(0),
	o => \AVS_S2_WRITEDATA[0]~input_o\);

-- Location: LCCOMB_X1_Y44_N0
\Mux33~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\Mux33~0_combout\ & (((\AVS_S3_WRITEDATA[0]~input_o\)) # (!\selected_master[1]~4_combout\))) # (!\Mux33~0_combout\ & (\selected_master[1]~4_combout\ & ((\AVS_S2_WRITEDATA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~0_combout\,
	datab => \selected_master[1]~4_combout\,
	datac => \AVS_S3_WRITEDATA[0]~input_o\,
	datad => \AVS_S2_WRITEDATA[0]~input_o\,
	combout => \Mux33~1_combout\);

-- Location: IOIBUF_X115_Y32_N8
\AVS_S3_WRITEDATA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(1),
	o => \AVS_S3_WRITEDATA[1]~input_o\);

-- Location: IOIBUF_X115_Y51_N8
\AVS_S2_WRITEDATA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(1),
	o => \AVS_S2_WRITEDATA[1]~input_o\);

-- Location: LCCOMB_X114_Y44_N22
\Mux32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\selected_master[1]~4_combout\ & (((\selected_master[0]~2_combout\) # (\AVS_S2_WRITEDATA[1]~input_o\)))) # (!\selected_master[1]~4_combout\ & (\AVS_S0_WRITEDATA[1]~input_o\ & (!\selected_master[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_WRITEDATA[1]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S2_WRITEDATA[1]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: IOIBUF_X115_Y33_N1
\AVS_S1_WRITEDATA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(1),
	o => \AVS_S1_WRITEDATA[1]~input_o\);

-- Location: LCCOMB_X114_Y32_N24
\Mux32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux32~0_combout\ & ((\AVS_S3_WRITEDATA[1]~input_o\) # ((!\selected_master[0]~2_combout\)))) # (!\Mux32~0_combout\ & (((\AVS_S1_WRITEDATA[1]~input_o\ & \selected_master[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_WRITEDATA[1]~input_o\,
	datab => \Mux32~0_combout\,
	datac => \AVS_S1_WRITEDATA[1]~input_o\,
	datad => \selected_master[0]~2_combout\,
	combout => \Mux32~1_combout\);

-- Location: IOIBUF_X56_Y0_N22
\AVS_S1_WRITEDATA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(2),
	o => \AVS_S1_WRITEDATA[2]~input_o\);

-- Location: IOIBUF_X42_Y0_N22
\AVS_S0_WRITEDATA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(2),
	o => \AVS_S0_WRITEDATA[2]~input_o\);

-- Location: LCCOMB_X53_Y1_N12
\Mux31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\selected_master[0]~2_combout\ & ((\AVS_S1_WRITEDATA[2]~input_o\) # ((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (((\AVS_S0_WRITEDATA[2]~input_o\ & !\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S1_WRITEDATA[2]~input_o\,
	datac => \AVS_S0_WRITEDATA[2]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux31~0_combout\);

-- Location: IOIBUF_X54_Y0_N8
\AVS_S2_WRITEDATA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(2),
	o => \AVS_S2_WRITEDATA[2]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\AVS_S3_WRITEDATA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(2),
	o => \AVS_S3_WRITEDATA[2]~input_o\);

-- Location: LCCOMB_X53_Y1_N26
\Mux31~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux31~0_combout\ & (((\AVS_S3_WRITEDATA[2]~input_o\) # (!\selected_master[1]~4_combout\)))) # (!\Mux31~0_combout\ & (\AVS_S2_WRITEDATA[2]~input_o\ & ((\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \AVS_S2_WRITEDATA[2]~input_o\,
	datac => \AVS_S3_WRITEDATA[2]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux31~1_combout\);

-- Location: IOIBUF_X42_Y73_N1
\AVS_S3_WRITEDATA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(3),
	o => \AVS_S3_WRITEDATA[3]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\AVS_S0_WRITEDATA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(3),
	o => \AVS_S0_WRITEDATA[3]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\AVS_S2_WRITEDATA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(3),
	o => \AVS_S2_WRITEDATA[3]~input_o\);

-- Location: LCCOMB_X42_Y72_N28
\Mux30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\selected_master[1]~4_combout\ & ((\selected_master[0]~2_combout\) # ((\AVS_S2_WRITEDATA[3]~input_o\)))) # (!\selected_master[1]~4_combout\ & (!\selected_master[0]~2_combout\ & (\AVS_S0_WRITEDATA[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~4_combout\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S0_WRITEDATA[3]~input_o\,
	datad => \AVS_S2_WRITEDATA[3]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: IOIBUF_X45_Y73_N8
\AVS_S1_WRITEDATA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(3),
	o => \AVS_S1_WRITEDATA[3]~input_o\);

-- Location: LCCOMB_X42_Y72_N2
\Mux30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\ & ((\AVS_S3_WRITEDATA[3]~input_o\) # ((!\selected_master[0]~2_combout\)))) # (!\Mux30~0_combout\ & (((\AVS_S1_WRITEDATA[3]~input_o\ & \selected_master[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_WRITEDATA[3]~input_o\,
	datab => \Mux30~0_combout\,
	datac => \AVS_S1_WRITEDATA[3]~input_o\,
	datad => \selected_master[0]~2_combout\,
	combout => \Mux30~1_combout\);

-- Location: IOIBUF_X38_Y73_N15
\AVS_S1_WRITEDATA[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(4),
	o => \AVS_S1_WRITEDATA[4]~input_o\);

-- Location: LCCOMB_X42_Y72_N12
\Mux29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\selected_master[0]~2_combout\ & (((\AVS_S1_WRITEDATA[4]~input_o\) # (\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (\AVS_S0_WRITEDATA[4]~input_o\ & ((!\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_WRITEDATA[4]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S1_WRITEDATA[4]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux29~0_combout\);

-- Location: IOIBUF_X42_Y73_N8
\AVS_S3_WRITEDATA[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(4),
	o => \AVS_S3_WRITEDATA[4]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\AVS_S2_WRITEDATA[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(4),
	o => \AVS_S2_WRITEDATA[4]~input_o\);

-- Location: LCCOMB_X42_Y72_N26
\Mux29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\ & ((\AVS_S3_WRITEDATA[4]~input_o\) # ((!\selected_master[1]~4_combout\)))) # (!\Mux29~0_combout\ & (((\AVS_S2_WRITEDATA[4]~input_o\ & \selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \AVS_S3_WRITEDATA[4]~input_o\,
	datac => \AVS_S2_WRITEDATA[4]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux29~1_combout\);

-- Location: IOIBUF_X47_Y73_N15
\AVS_S1_WRITEDATA[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(5),
	o => \AVS_S1_WRITEDATA[5]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\AVS_S2_WRITEDATA[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(5),
	o => \AVS_S2_WRITEDATA[5]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\AVS_S0_WRITEDATA[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(5),
	o => \AVS_S0_WRITEDATA[5]~input_o\);

-- Location: LCCOMB_X42_Y72_N24
\Mux28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\selected_master[1]~4_combout\ & ((\selected_master[0]~2_combout\) # ((\AVS_S2_WRITEDATA[5]~input_o\)))) # (!\selected_master[1]~4_combout\ & (!\selected_master[0]~2_combout\ & ((\AVS_S0_WRITEDATA[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~4_combout\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S2_WRITEDATA[5]~input_o\,
	datad => \AVS_S0_WRITEDATA[5]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: IOIBUF_X49_Y73_N15
\AVS_S3_WRITEDATA[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(5),
	o => \AVS_S3_WRITEDATA[5]~input_o\);

-- Location: LCCOMB_X42_Y72_N6
\Mux28~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux28~0_combout\ & (((\AVS_S3_WRITEDATA[5]~input_o\) # (!\selected_master[0]~2_combout\)))) # (!\Mux28~0_combout\ & (\AVS_S1_WRITEDATA[5]~input_o\ & ((\selected_master[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S1_WRITEDATA[5]~input_o\,
	datab => \Mux28~0_combout\,
	datac => \AVS_S3_WRITEDATA[5]~input_o\,
	datad => \selected_master[0]~2_combout\,
	combout => \Mux28~1_combout\);

-- Location: IOIBUF_X38_Y73_N1
\AVS_S3_WRITEDATA[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(6),
	o => \AVS_S3_WRITEDATA[6]~input_o\);

-- Location: IOIBUF_X47_Y73_N8
\AVS_S1_WRITEDATA[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(6),
	o => \AVS_S1_WRITEDATA[6]~input_o\);

-- Location: LCCOMB_X42_Y72_N0
\Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\selected_master[0]~2_combout\ & (((\AVS_S1_WRITEDATA[6]~input_o\) # (\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (\AVS_S0_WRITEDATA[6]~input_o\ & ((!\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_WRITEDATA[6]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S1_WRITEDATA[6]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux27~0_combout\);

-- Location: IOIBUF_X35_Y73_N22
\AVS_S2_WRITEDATA[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(6),
	o => \AVS_S2_WRITEDATA[6]~input_o\);

-- Location: LCCOMB_X42_Y72_N18
\Mux27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux27~0_combout\ & ((\AVS_S3_WRITEDATA[6]~input_o\) # ((!\selected_master[1]~4_combout\)))) # (!\Mux27~0_combout\ & (((\AVS_S2_WRITEDATA[6]~input_o\ & \selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_WRITEDATA[6]~input_o\,
	datab => \Mux27~0_combout\,
	datac => \AVS_S2_WRITEDATA[6]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux27~1_combout\);

-- Location: IOIBUF_X52_Y73_N15
\AVS_S1_WRITEDATA[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(7),
	o => \AVS_S1_WRITEDATA[7]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\AVS_S3_WRITEDATA[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(7),
	o => \AVS_S3_WRITEDATA[7]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\AVS_S2_WRITEDATA[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(7),
	o => \AVS_S2_WRITEDATA[7]~input_o\);

-- Location: LCCOMB_X42_Y72_N4
\Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & ((\AVS_S2_WRITEDATA[7]~input_o\))) # (!\selected_master[1]~4_combout\ & 
-- (\AVS_S0_WRITEDATA[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_WRITEDATA[7]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S2_WRITEDATA[7]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X42_Y72_N10
\Mux26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux26~0_combout\ & (((\AVS_S3_WRITEDATA[7]~input_o\) # (!\selected_master[0]~2_combout\)))) # (!\Mux26~0_combout\ & (\AVS_S1_WRITEDATA[7]~input_o\ & ((\selected_master[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S1_WRITEDATA[7]~input_o\,
	datab => \AVS_S3_WRITEDATA[7]~input_o\,
	datac => \Mux26~0_combout\,
	datad => \selected_master[0]~2_combout\,
	combout => \Mux26~1_combout\);

-- Location: IOIBUF_X58_Y73_N15
\AVS_S3_WRITEDATA[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(8),
	o => \AVS_S3_WRITEDATA[8]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\AVS_S2_WRITEDATA[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(8),
	o => \AVS_S2_WRITEDATA[8]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\AVS_S0_WRITEDATA[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(8),
	o => \AVS_S0_WRITEDATA[8]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\AVS_S1_WRITEDATA[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(8),
	o => \AVS_S1_WRITEDATA[8]~input_o\);

-- Location: LCCOMB_X53_Y1_N24
\Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\selected_master[0]~2_combout\ & (((\AVS_S1_WRITEDATA[8]~input_o\) # (\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (\AVS_S0_WRITEDATA[8]~input_o\ & ((!\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S0_WRITEDATA[8]~input_o\,
	datac => \AVS_S1_WRITEDATA[8]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X53_Y1_N18
\Mux25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\selected_master[1]~4_combout\ & ((\Mux25~0_combout\ & (\AVS_S3_WRITEDATA[8]~input_o\)) # (!\Mux25~0_combout\ & ((\AVS_S2_WRITEDATA[8]~input_o\))))) # (!\selected_master[1]~4_combout\ & (((\Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~4_combout\,
	datab => \AVS_S3_WRITEDATA[8]~input_o\,
	datac => \AVS_S2_WRITEDATA[8]~input_o\,
	datad => \Mux25~0_combout\,
	combout => \Mux25~1_combout\);

-- Location: IOIBUF_X115_Y37_N15
\AVS_S3_WRITEDATA[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(9),
	o => \AVS_S3_WRITEDATA[9]~input_o\);

-- Location: IOIBUF_X115_Y41_N1
\AVS_S2_WRITEDATA[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(9),
	o => \AVS_S2_WRITEDATA[9]~input_o\);

-- Location: LCCOMB_X114_Y44_N0
\Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\selected_master[1]~4_combout\ & (((\selected_master[0]~2_combout\) # (\AVS_S2_WRITEDATA[9]~input_o\)))) # (!\selected_master[1]~4_combout\ & (\AVS_S0_WRITEDATA[9]~input_o\ & (!\selected_master[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_WRITEDATA[9]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S2_WRITEDATA[9]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: IOIBUF_X115_Y48_N1
\AVS_S1_WRITEDATA[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(9),
	o => \AVS_S1_WRITEDATA[9]~input_o\);

-- Location: LCCOMB_X114_Y44_N18
\Mux24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux24~0_combout\ & ((\AVS_S3_WRITEDATA[9]~input_o\) # ((!\selected_master[0]~2_combout\)))) # (!\Mux24~0_combout\ & (((\selected_master[0]~2_combout\ & \AVS_S1_WRITEDATA[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_WRITEDATA[9]~input_o\,
	datab => \Mux24~0_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S1_WRITEDATA[9]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: IOIBUF_X115_Y28_N1
\AVS_S2_WRITEDATA[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(10),
	o => \AVS_S2_WRITEDATA[10]~input_o\);

-- Location: IOIBUF_X115_Y23_N8
\AVS_S0_WRITEDATA[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(10),
	o => \AVS_S0_WRITEDATA[10]~input_o\);

-- Location: LCCOMB_X114_Y22_N18
\Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\selected_master[0]~2_combout\ & ((\AVS_S1_WRITEDATA[10]~input_o\) # ((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (((\AVS_S0_WRITEDATA[10]~input_o\ & !\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S1_WRITEDATA[10]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S0_WRITEDATA[10]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux23~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\AVS_S3_WRITEDATA[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(10),
	o => \AVS_S3_WRITEDATA[10]~input_o\);

-- Location: LCCOMB_X114_Y22_N28
\Mux23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\ & (((\AVS_S3_WRITEDATA[10]~input_o\) # (!\selected_master[1]~4_combout\)))) # (!\Mux23~0_combout\ & (\AVS_S2_WRITEDATA[10]~input_o\ & ((\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_WRITEDATA[10]~input_o\,
	datab => \Mux23~0_combout\,
	datac => \AVS_S3_WRITEDATA[10]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux23~1_combout\);

-- Location: IOIBUF_X115_Y35_N15
\AVS_S3_WRITEDATA[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(11),
	o => \AVS_S3_WRITEDATA[11]~input_o\);

-- Location: IOIBUF_X115_Y47_N15
\AVS_S2_WRITEDATA[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(11),
	o => \AVS_S2_WRITEDATA[11]~input_o\);

-- Location: LCCOMB_X114_Y44_N16
\Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & ((\AVS_S2_WRITEDATA[11]~input_o\))) # (!\selected_master[1]~4_combout\ & 
-- (\AVS_S0_WRITEDATA[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_WRITEDATA[11]~input_o\,
	datab => \AVS_S2_WRITEDATA[11]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux22~0_combout\);

-- Location: IOIBUF_X0_Y36_N22
\AVS_S1_WRITEDATA[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(11),
	o => \AVS_S1_WRITEDATA[11]~input_o\);

-- Location: LCCOMB_X114_Y44_N2
\Mux22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux22~0_combout\ & ((\AVS_S3_WRITEDATA[11]~input_o\) # ((!\selected_master[0]~2_combout\)))) # (!\Mux22~0_combout\ & (((\selected_master[0]~2_combout\ & \AVS_S1_WRITEDATA[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_WRITEDATA[11]~input_o\,
	datab => \Mux22~0_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S1_WRITEDATA[11]~input_o\,
	combout => \Mux22~1_combout\);

-- Location: IOIBUF_X115_Y22_N22
\AVS_S0_WRITEDATA[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(12),
	o => \AVS_S0_WRITEDATA[12]~input_o\);

-- Location: LCCOMB_X114_Y22_N26
\Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\selected_master[0]~2_combout\ & ((\AVS_S1_WRITEDATA[12]~input_o\) # ((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (((\AVS_S0_WRITEDATA[12]~input_o\ & !\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S1_WRITEDATA[12]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S0_WRITEDATA[12]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux21~0_combout\);

-- Location: IOIBUF_X115_Y18_N8
\AVS_S2_WRITEDATA[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(12),
	o => \AVS_S2_WRITEDATA[12]~input_o\);

-- Location: IOIBUF_X115_Y26_N15
\AVS_S3_WRITEDATA[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(12),
	o => \AVS_S3_WRITEDATA[12]~input_o\);

-- Location: LCCOMB_X114_Y22_N20
\Mux21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux21~0_combout\ & (((\AVS_S3_WRITEDATA[12]~input_o\)) # (!\selected_master[1]~4_combout\))) # (!\Mux21~0_combout\ & (\selected_master[1]~4_combout\ & (\AVS_S2_WRITEDATA[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \selected_master[1]~4_combout\,
	datac => \AVS_S2_WRITEDATA[12]~input_o\,
	datad => \AVS_S3_WRITEDATA[12]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: IOIBUF_X115_Y44_N1
\AVS_S2_WRITEDATA[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(13),
	o => \AVS_S2_WRITEDATA[13]~input_o\);

-- Location: LCCOMB_X114_Y44_N12
\Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & ((\AVS_S2_WRITEDATA[13]~input_o\))) # (!\selected_master[1]~4_combout\ & 
-- (\AVS_S0_WRITEDATA[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_WRITEDATA[13]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S2_WRITEDATA[13]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux20~0_combout\);

-- Location: IOIBUF_X115_Y52_N8
\AVS_S1_WRITEDATA[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(13),
	o => \AVS_S1_WRITEDATA[13]~input_o\);

-- Location: IOIBUF_X115_Y46_N8
\AVS_S3_WRITEDATA[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(13),
	o => \AVS_S3_WRITEDATA[13]~input_o\);

-- Location: LCCOMB_X114_Y44_N26
\Mux20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux20~0_combout\ & (((\AVS_S3_WRITEDATA[13]~input_o\) # (!\selected_master[0]~2_combout\)))) # (!\Mux20~0_combout\ & (\AVS_S1_WRITEDATA[13]~input_o\ & (\selected_master[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \AVS_S1_WRITEDATA[13]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S3_WRITEDATA[13]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: IOIBUF_X115_Y21_N15
\AVS_S2_WRITEDATA[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(14),
	o => \AVS_S2_WRITEDATA[14]~input_o\);

-- Location: IOIBUF_X115_Y28_N8
\AVS_S0_WRITEDATA[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(14),
	o => \AVS_S0_WRITEDATA[14]~input_o\);

-- Location: LCCOMB_X114_Y22_N14
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\selected_master[0]~2_combout\ & ((\AVS_S1_WRITEDATA[14]~input_o\) # ((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (((\AVS_S0_WRITEDATA[14]~input_o\ & !\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S1_WRITEDATA[14]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S0_WRITEDATA[14]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux19~0_combout\);

-- Location: IOIBUF_X115_Y20_N1
\AVS_S3_WRITEDATA[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(14),
	o => \AVS_S3_WRITEDATA[14]~input_o\);

-- Location: LCCOMB_X114_Y22_N16
\Mux19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux19~0_combout\ & (((\AVS_S3_WRITEDATA[14]~input_o\) # (!\selected_master[1]~4_combout\)))) # (!\Mux19~0_combout\ & (\AVS_S2_WRITEDATA[14]~input_o\ & ((\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_WRITEDATA[14]~input_o\,
	datab => \Mux19~0_combout\,
	datac => \AVS_S3_WRITEDATA[14]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux19~1_combout\);

-- Location: IOIBUF_X115_Y41_N8
\AVS_S3_WRITEDATA[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(15),
	o => \AVS_S3_WRITEDATA[15]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\AVS_S2_WRITEDATA[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(15),
	o => \AVS_S2_WRITEDATA[15]~input_o\);

-- Location: LCCOMB_X114_Y44_N28
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & ((\AVS_S2_WRITEDATA[15]~input_o\))) # (!\selected_master[1]~4_combout\ & 
-- (\AVS_S0_WRITEDATA[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_WRITEDATA[15]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S2_WRITEDATA[15]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux18~0_combout\);

-- Location: IOIBUF_X115_Y34_N15
\AVS_S1_WRITEDATA[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(15),
	o => \AVS_S1_WRITEDATA[15]~input_o\);

-- Location: LCCOMB_X114_Y44_N14
\Mux18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\ & ((\AVS_S3_WRITEDATA[15]~input_o\) # ((!\selected_master[0]~2_combout\)))) # (!\Mux18~0_combout\ & (((\selected_master[0]~2_combout\ & \AVS_S1_WRITEDATA[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_WRITEDATA[15]~input_o\,
	datab => \Mux18~0_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S1_WRITEDATA[15]~input_o\,
	combout => \Mux18~1_combout\);

-- Location: IOIBUF_X9_Y73_N8
\AVS_S1_WRITEDATA[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(16),
	o => \AVS_S1_WRITEDATA[16]~input_o\);

-- Location: LCCOMB_X12_Y72_N30
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\selected_master[1]~4_combout\ & (((\selected_master[0]~2_combout\)))) # (!\selected_master[1]~4_combout\ & ((\selected_master[0]~2_combout\ & ((\AVS_S1_WRITEDATA[16]~input_o\))) # (!\selected_master[0]~2_combout\ & 
-- (\AVS_S0_WRITEDATA[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_WRITEDATA[16]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S1_WRITEDATA[16]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: IOIBUF_X16_Y73_N8
\AVS_S3_WRITEDATA[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(16),
	o => \AVS_S3_WRITEDATA[16]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\AVS_S2_WRITEDATA[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(16),
	o => \AVS_S2_WRITEDATA[16]~input_o\);

-- Location: LCCOMB_X12_Y72_N16
\Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\ & ((\AVS_S3_WRITEDATA[16]~input_o\) # ((!\selected_master[1]~4_combout\)))) # (!\Mux17~0_combout\ & (((\AVS_S2_WRITEDATA[16]~input_o\ & \selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~0_combout\,
	datab => \AVS_S3_WRITEDATA[16]~input_o\,
	datac => \AVS_S2_WRITEDATA[16]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux17~1_combout\);

-- Location: IOIBUF_X27_Y0_N22
\AVS_S0_WRITEDATA[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(17),
	o => \AVS_S0_WRITEDATA[17]~input_o\);

-- Location: LCCOMB_X17_Y1_N22
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & (\AVS_S2_WRITEDATA[17]~input_o\)) # (!\selected_master[1]~4_combout\ & 
-- ((\AVS_S0_WRITEDATA[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_WRITEDATA[17]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \selected_master[1]~4_combout\,
	datad => \AVS_S0_WRITEDATA[17]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: IOIBUF_X5_Y0_N22
\AVS_S1_WRITEDATA[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(17),
	o => \AVS_S1_WRITEDATA[17]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\AVS_S3_WRITEDATA[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(17),
	o => \AVS_S3_WRITEDATA[17]~input_o\);

-- Location: LCCOMB_X17_Y1_N24
\Mux16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & (((\AVS_S3_WRITEDATA[17]~input_o\)) # (!\selected_master[0]~2_combout\))) # (!\Mux16~0_combout\ & (\selected_master[0]~2_combout\ & (\AVS_S1_WRITEDATA[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S1_WRITEDATA[17]~input_o\,
	datad => \AVS_S3_WRITEDATA[17]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: IOIBUF_X5_Y73_N22
\AVS_S2_WRITEDATA[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(18),
	o => \AVS_S2_WRITEDATA[18]~input_o\);

-- Location: IOIBUF_X1_Y73_N22
\AVS_S0_WRITEDATA[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(18),
	o => \AVS_S0_WRITEDATA[18]~input_o\);

-- Location: LCCOMB_X12_Y72_N18
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\selected_master[1]~4_combout\ & (((\selected_master[0]~2_combout\)))) # (!\selected_master[1]~4_combout\ & ((\selected_master[0]~2_combout\ & (\AVS_S1_WRITEDATA[18]~input_o\)) # (!\selected_master[0]~2_combout\ & 
-- ((\AVS_S0_WRITEDATA[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S1_WRITEDATA[18]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S0_WRITEDATA[18]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: IOIBUF_X23_Y73_N22
\AVS_S3_WRITEDATA[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(18),
	o => \AVS_S3_WRITEDATA[18]~input_o\);

-- Location: LCCOMB_X12_Y72_N24
\Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\ & (((\AVS_S3_WRITEDATA[18]~input_o\) # (!\selected_master[1]~4_combout\)))) # (!\Mux15~0_combout\ & (\AVS_S2_WRITEDATA[18]~input_o\ & ((\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_WRITEDATA[18]~input_o\,
	datab => \Mux15~0_combout\,
	datac => \AVS_S3_WRITEDATA[18]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux15~1_combout\);

-- Location: IOIBUF_X16_Y73_N22
\AVS_S0_WRITEDATA[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(19),
	o => \AVS_S0_WRITEDATA[19]~input_o\);

-- Location: LCCOMB_X12_Y72_N26
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\selected_master[1]~4_combout\ & ((\AVS_S2_WRITEDATA[19]~input_o\) # ((\selected_master[0]~2_combout\)))) # (!\selected_master[1]~4_combout\ & (((!\selected_master[0]~2_combout\ & \AVS_S0_WRITEDATA[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_WRITEDATA[19]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S0_WRITEDATA[19]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: IOIBUF_X13_Y73_N22
\AVS_S3_WRITEDATA[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(19),
	o => \AVS_S3_WRITEDATA[19]~input_o\);

-- Location: IOIBUF_X20_Y73_N22
\AVS_S1_WRITEDATA[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(19),
	o => \AVS_S1_WRITEDATA[19]~input_o\);

-- Location: LCCOMB_X12_Y72_N8
\Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & ((\AVS_S3_WRITEDATA[19]~input_o\) # ((!\selected_master[0]~2_combout\)))) # (!\Mux14~0_combout\ & (((\selected_master[0]~2_combout\ & \AVS_S1_WRITEDATA[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \AVS_S3_WRITEDATA[19]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S1_WRITEDATA[19]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: IOIBUF_X20_Y73_N1
\AVS_S3_WRITEDATA[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(20),
	o => \AVS_S3_WRITEDATA[20]~input_o\);

-- Location: IOIBUF_X20_Y73_N8
\AVS_S0_WRITEDATA[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(20),
	o => \AVS_S0_WRITEDATA[20]~input_o\);

-- Location: LCCOMB_X12_Y72_N2
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\selected_master[1]~4_combout\ & (((\selected_master[0]~2_combout\)))) # (!\selected_master[1]~4_combout\ & ((\selected_master[0]~2_combout\ & (\AVS_S1_WRITEDATA[20]~input_o\)) # (!\selected_master[0]~2_combout\ & 
-- ((\AVS_S0_WRITEDATA[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S1_WRITEDATA[20]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S0_WRITEDATA[20]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: IOIBUF_X5_Y73_N8
\AVS_S2_WRITEDATA[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(20),
	o => \AVS_S2_WRITEDATA[20]~input_o\);

-- Location: LCCOMB_X12_Y72_N4
\Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & ((\AVS_S3_WRITEDATA[20]~input_o\) # ((!\selected_master[1]~4_combout\)))) # (!\Mux13~0_combout\ & (((\AVS_S2_WRITEDATA[20]~input_o\ & \selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_WRITEDATA[20]~input_o\,
	datab => \Mux13~0_combout\,
	datac => \AVS_S2_WRITEDATA[20]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux13~1_combout\);

-- Location: IOIBUF_X0_Y13_N8
\AVS_S3_WRITEDATA[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(21),
	o => \AVS_S3_WRITEDATA[21]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\AVS_S1_WRITEDATA[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(21),
	o => \AVS_S1_WRITEDATA[21]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\AVS_S2_WRITEDATA[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(21),
	o => \AVS_S2_WRITEDATA[21]~input_o\);

-- Location: LCCOMB_X1_Y11_N0
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\selected_master[1]~4_combout\ & (((\selected_master[0]~2_combout\) # (\AVS_S2_WRITEDATA[21]~input_o\)))) # (!\selected_master[1]~4_combout\ & (\AVS_S0_WRITEDATA[21]~input_o\ & (!\selected_master[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_WRITEDATA[21]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S2_WRITEDATA[21]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X1_Y11_N18
\Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\selected_master[0]~2_combout\ & ((\Mux12~0_combout\ & (\AVS_S3_WRITEDATA[21]~input_o\)) # (!\Mux12~0_combout\ & ((\AVS_S1_WRITEDATA[21]~input_o\))))) # (!\selected_master[0]~2_combout\ & (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_WRITEDATA[21]~input_o\,
	datab => \AVS_S1_WRITEDATA[21]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: IOIBUF_X49_Y0_N15
\AVS_S3_WRITEDATA[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(22),
	o => \AVS_S3_WRITEDATA[22]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\AVS_S2_WRITEDATA[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(22),
	o => \AVS_S2_WRITEDATA[22]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\AVS_S0_WRITEDATA[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(22),
	o => \AVS_S0_WRITEDATA[22]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\AVS_S1_WRITEDATA[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(22),
	o => \AVS_S1_WRITEDATA[22]~input_o\);

-- Location: LCCOMB_X53_Y1_N20
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\selected_master[0]~2_combout\ & (((\AVS_S1_WRITEDATA[22]~input_o\) # (\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (\AVS_S0_WRITEDATA[22]~input_o\ & ((!\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S0_WRITEDATA[22]~input_o\,
	datac => \AVS_S1_WRITEDATA[22]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X53_Y1_N30
\Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\selected_master[1]~4_combout\ & ((\Mux11~0_combout\ & (\AVS_S3_WRITEDATA[22]~input_o\)) # (!\Mux11~0_combout\ & ((\AVS_S2_WRITEDATA[22]~input_o\))))) # (!\selected_master[1]~4_combout\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~4_combout\,
	datab => \AVS_S3_WRITEDATA[22]~input_o\,
	datac => \AVS_S2_WRITEDATA[22]~input_o\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: IOIBUF_X0_Y53_N8
\AVS_S1_WRITEDATA[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(23),
	o => \AVS_S1_WRITEDATA[23]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\AVS_S2_WRITEDATA[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(23),
	o => \AVS_S2_WRITEDATA[23]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\AVS_S0_WRITEDATA[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(23),
	o => \AVS_S0_WRITEDATA[23]~input_o\);

-- Location: LCCOMB_X1_Y44_N22
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\selected_master[0]~2_combout\ & (\selected_master[1]~4_combout\)) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & (\AVS_S2_WRITEDATA[23]~input_o\)) # (!\selected_master[1]~4_combout\ & 
-- ((\AVS_S0_WRITEDATA[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \selected_master[1]~4_combout\,
	datac => \AVS_S2_WRITEDATA[23]~input_o\,
	datad => \AVS_S0_WRITEDATA[23]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: IOIBUF_X0_Y44_N22
\AVS_S3_WRITEDATA[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(23),
	o => \AVS_S3_WRITEDATA[23]~input_o\);

-- Location: LCCOMB_X1_Y44_N28
\Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\selected_master[0]~2_combout\ & ((\Mux10~0_combout\ & ((\AVS_S3_WRITEDATA[23]~input_o\))) # (!\Mux10~0_combout\ & (\AVS_S1_WRITEDATA[23]~input_o\)))) # (!\selected_master[0]~2_combout\ & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[0]~2_combout\,
	datab => \AVS_S1_WRITEDATA[23]~input_o\,
	datac => \Mux10~0_combout\,
	datad => \AVS_S3_WRITEDATA[23]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: IOIBUF_X85_Y0_N1
\AVS_S2_WRITEDATA[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(24),
	o => \AVS_S2_WRITEDATA[24]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\AVS_S3_WRITEDATA[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(24),
	o => \AVS_S3_WRITEDATA[24]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\AVS_S1_WRITEDATA[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(24),
	o => \AVS_S1_WRITEDATA[24]~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\AVS_S0_WRITEDATA[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(24),
	o => \AVS_S0_WRITEDATA[24]~input_o\);

-- Location: LCCOMB_X77_Y1_N26
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\selected_master[1]~4_combout\ & (((\selected_master[0]~2_combout\)))) # (!\selected_master[1]~4_combout\ & ((\selected_master[0]~2_combout\ & (\AVS_S1_WRITEDATA[24]~input_o\)) # (!\selected_master[0]~2_combout\ & 
-- ((\AVS_S0_WRITEDATA[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~4_combout\,
	datab => \AVS_S1_WRITEDATA[24]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S0_WRITEDATA[24]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X77_Y1_N12
\Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (((\AVS_S3_WRITEDATA[24]~input_o\) # (!\selected_master[1]~4_combout\)))) # (!\Mux9~0_combout\ & (\AVS_S2_WRITEDATA[24]~input_o\ & ((\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_WRITEDATA[24]~input_o\,
	datab => \AVS_S3_WRITEDATA[24]~input_o\,
	datac => \Mux9~0_combout\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux9~1_combout\);

-- Location: IOIBUF_X115_Y31_N1
\AVS_S0_WRITEDATA[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(25),
	o => \AVS_S0_WRITEDATA[25]~input_o\);

-- Location: LCCOMB_X114_Y22_N22
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\selected_master[1]~4_combout\ & ((\AVS_S2_WRITEDATA[25]~input_o\) # ((\selected_master[0]~2_combout\)))) # (!\selected_master[1]~4_combout\ & (((\AVS_S0_WRITEDATA[25]~input_o\ & !\selected_master[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_WRITEDATA[25]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \AVS_S0_WRITEDATA[25]~input_o\,
	datad => \selected_master[0]~2_combout\,
	combout => \Mux8~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\AVS_S3_WRITEDATA[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(25),
	o => \AVS_S3_WRITEDATA[25]~input_o\);

-- Location: IOIBUF_X115_Y25_N15
\AVS_S1_WRITEDATA[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(25),
	o => \AVS_S1_WRITEDATA[25]~input_o\);

-- Location: LCCOMB_X114_Y22_N4
\Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & (((\AVS_S3_WRITEDATA[25]~input_o\)) # (!\selected_master[0]~2_combout\))) # (!\Mux8~0_combout\ & (\selected_master[0]~2_combout\ & ((\AVS_S1_WRITEDATA[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S3_WRITEDATA[25]~input_o\,
	datad => \AVS_S1_WRITEDATA[25]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: IOIBUF_X52_Y73_N8
\AVS_S3_WRITEDATA[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(26),
	o => \AVS_S3_WRITEDATA[26]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\AVS_S1_WRITEDATA[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(26),
	o => \AVS_S1_WRITEDATA[26]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\AVS_S0_WRITEDATA[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(26),
	o => \AVS_S0_WRITEDATA[26]~input_o\);

-- Location: LCCOMB_X42_Y72_N20
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\selected_master[1]~4_combout\ & (\selected_master[0]~2_combout\)) # (!\selected_master[1]~4_combout\ & ((\selected_master[0]~2_combout\ & (\AVS_S1_WRITEDATA[26]~input_o\)) # (!\selected_master[0]~2_combout\ & 
-- ((\AVS_S0_WRITEDATA[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selected_master[1]~4_combout\,
	datab => \selected_master[0]~2_combout\,
	datac => \AVS_S1_WRITEDATA[26]~input_o\,
	datad => \AVS_S0_WRITEDATA[26]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X47_Y73_N1
\AVS_S2_WRITEDATA[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(26),
	o => \AVS_S2_WRITEDATA[26]~input_o\);

-- Location: LCCOMB_X42_Y72_N22
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & ((\AVS_S3_WRITEDATA[26]~input_o\) # ((!\selected_master[1]~4_combout\)))) # (!\Mux7~0_combout\ & (((\AVS_S2_WRITEDATA[26]~input_o\ & \selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S3_WRITEDATA[26]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \AVS_S2_WRITEDATA[26]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux7~1_combout\);

-- Location: IOIBUF_X115_Y24_N8
\AVS_S2_WRITEDATA[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(27),
	o => \AVS_S2_WRITEDATA[27]~input_o\);

-- Location: LCCOMB_X114_Y22_N10
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\selected_master[1]~4_combout\ & (((\AVS_S2_WRITEDATA[27]~input_o\) # (\selected_master[0]~2_combout\)))) # (!\selected_master[1]~4_combout\ & (\AVS_S0_WRITEDATA[27]~input_o\ & ((!\selected_master[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_WRITEDATA[27]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \AVS_S2_WRITEDATA[27]~input_o\,
	datad => \selected_master[0]~2_combout\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X115_Y16_N1
\AVS_S1_WRITEDATA[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(27),
	o => \AVS_S1_WRITEDATA[27]~input_o\);

-- Location: IOIBUF_X115_Y19_N1
\AVS_S3_WRITEDATA[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(27),
	o => \AVS_S3_WRITEDATA[27]~input_o\);

-- Location: LCCOMB_X114_Y22_N8
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (((\AVS_S3_WRITEDATA[27]~input_o\) # (!\selected_master[0]~2_combout\)))) # (!\Mux6~0_combout\ & (\AVS_S1_WRITEDATA[27]~input_o\ & ((\selected_master[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \AVS_S1_WRITEDATA[27]~input_o\,
	datac => \AVS_S3_WRITEDATA[27]~input_o\,
	datad => \selected_master[0]~2_combout\,
	combout => \Mux6~1_combout\);

-- Location: IOIBUF_X23_Y73_N8
\AVS_S2_WRITEDATA[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(28),
	o => \AVS_S2_WRITEDATA[28]~input_o\);

-- Location: IOIBUF_X13_Y73_N15
\AVS_S1_WRITEDATA[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(28),
	o => \AVS_S1_WRITEDATA[28]~input_o\);

-- Location: LCCOMB_X12_Y72_N14
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\selected_master[1]~4_combout\ & (((\selected_master[0]~2_combout\)))) # (!\selected_master[1]~4_combout\ & ((\selected_master[0]~2_combout\ & ((\AVS_S1_WRITEDATA[28]~input_o\))) # (!\selected_master[0]~2_combout\ & 
-- (\AVS_S0_WRITEDATA[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_WRITEDATA[28]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S1_WRITEDATA[28]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X9_Y73_N1
\AVS_S3_WRITEDATA[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(28),
	o => \AVS_S3_WRITEDATA[28]~input_o\);

-- Location: LCCOMB_X12_Y72_N0
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\selected_master[1]~4_combout\ & ((\Mux5~0_combout\ & ((\AVS_S3_WRITEDATA[28]~input_o\))) # (!\Mux5~0_combout\ & (\AVS_S2_WRITEDATA[28]~input_o\)))) # (!\selected_master[1]~4_combout\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_WRITEDATA[28]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \Mux5~0_combout\,
	datad => \AVS_S3_WRITEDATA[28]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: IOIBUF_X3_Y73_N22
\AVS_S0_WRITEDATA[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(29),
	o => \AVS_S0_WRITEDATA[29]~input_o\);

-- Location: LCCOMB_X12_Y72_N10
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\selected_master[1]~4_combout\ & ((\AVS_S2_WRITEDATA[29]~input_o\) # ((\selected_master[0]~2_combout\)))) # (!\selected_master[1]~4_combout\ & (((!\selected_master[0]~2_combout\ & \AVS_S0_WRITEDATA[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S2_WRITEDATA[29]~input_o\,
	datab => \selected_master[1]~4_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S0_WRITEDATA[29]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X18_Y73_N15
\AVS_S3_WRITEDATA[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(29),
	o => \AVS_S3_WRITEDATA[29]~input_o\);

-- Location: IOIBUF_X23_Y73_N1
\AVS_S1_WRITEDATA[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(29),
	o => \AVS_S1_WRITEDATA[29]~input_o\);

-- Location: LCCOMB_X12_Y72_N28
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & ((\AVS_S3_WRITEDATA[29]~input_o\) # ((!\selected_master[0]~2_combout\)))) # (!\Mux4~0_combout\ & (((\selected_master[0]~2_combout\ & \AVS_S1_WRITEDATA[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \AVS_S3_WRITEDATA[29]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S1_WRITEDATA[29]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: IOIBUF_X25_Y73_N15
\AVS_S0_WRITEDATA[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S0_WRITEDATA(30),
	o => \AVS_S0_WRITEDATA[30]~input_o\);

-- Location: LCCOMB_X12_Y72_N22
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\selected_master[0]~2_combout\ & ((\AVS_S1_WRITEDATA[30]~input_o\) # ((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & (((\AVS_S0_WRITEDATA[30]~input_o\ & !\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S1_WRITEDATA[30]~input_o\,
	datab => \AVS_S0_WRITEDATA[30]~input_o\,
	datac => \selected_master[0]~2_combout\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X13_Y73_N1
\AVS_S2_WRITEDATA[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(30),
	o => \AVS_S2_WRITEDATA[30]~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\AVS_S3_WRITEDATA[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(30),
	o => \AVS_S3_WRITEDATA[30]~input_o\);

-- Location: LCCOMB_X12_Y72_N20
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\AVS_S3_WRITEDATA[30]~input_o\) # (!\selected_master[1]~4_combout\)))) # (!\Mux3~0_combout\ & (\AVS_S2_WRITEDATA[30]~input_o\ & ((\selected_master[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \AVS_S2_WRITEDATA[30]~input_o\,
	datac => \AVS_S3_WRITEDATA[30]~input_o\,
	datad => \selected_master[1]~4_combout\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X29_Y0_N15
\AVS_S1_WRITEDATA[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S1_WRITEDATA(31),
	o => \AVS_S1_WRITEDATA[31]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\AVS_S2_WRITEDATA[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S2_WRITEDATA(31),
	o => \AVS_S2_WRITEDATA[31]~input_o\);

-- Location: LCCOMB_X17_Y1_N2
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\selected_master[0]~2_combout\ & (((\selected_master[1]~4_combout\)))) # (!\selected_master[0]~2_combout\ & ((\selected_master[1]~4_combout\ & ((\AVS_S2_WRITEDATA[31]~input_o\))) # (!\selected_master[1]~4_combout\ & 
-- (\AVS_S0_WRITEDATA[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S0_WRITEDATA[31]~input_o\,
	datab => \selected_master[0]~2_combout\,
	datac => \selected_master[1]~4_combout\,
	datad => \AVS_S2_WRITEDATA[31]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X31_Y0_N8
\AVS_S3_WRITEDATA[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AVS_S3_WRITEDATA(31),
	o => \AVS_S3_WRITEDATA[31]~input_o\);

-- Location: LCCOMB_X17_Y1_N8
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\AVS_S3_WRITEDATA[31]~input_o\) # (!\selected_master[0]~2_combout\)))) # (!\Mux2~0_combout\ & (\AVS_S1_WRITEDATA[31]~input_o\ & (\selected_master[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AVS_S1_WRITEDATA[31]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \selected_master[0]~2_combout\,
	datad => \AVS_S3_WRITEDATA[31]~input_o\,
	combout => \Mux2~1_combout\);

ww_AVS_S0_READDATA(0) <= \AVS_S0_READDATA[0]~output_o\;

ww_AVS_S0_READDATA(1) <= \AVS_S0_READDATA[1]~output_o\;

ww_AVS_S0_READDATA(2) <= \AVS_S0_READDATA[2]~output_o\;

ww_AVS_S0_READDATA(3) <= \AVS_S0_READDATA[3]~output_o\;

ww_AVS_S0_READDATA(4) <= \AVS_S0_READDATA[4]~output_o\;

ww_AVS_S0_READDATA(5) <= \AVS_S0_READDATA[5]~output_o\;

ww_AVS_S0_READDATA(6) <= \AVS_S0_READDATA[6]~output_o\;

ww_AVS_S0_READDATA(7) <= \AVS_S0_READDATA[7]~output_o\;

ww_AVS_S0_READDATA(8) <= \AVS_S0_READDATA[8]~output_o\;

ww_AVS_S0_READDATA(9) <= \AVS_S0_READDATA[9]~output_o\;

ww_AVS_S0_READDATA(10) <= \AVS_S0_READDATA[10]~output_o\;

ww_AVS_S0_READDATA(11) <= \AVS_S0_READDATA[11]~output_o\;

ww_AVS_S0_READDATA(12) <= \AVS_S0_READDATA[12]~output_o\;

ww_AVS_S0_READDATA(13) <= \AVS_S0_READDATA[13]~output_o\;

ww_AVS_S0_READDATA(14) <= \AVS_S0_READDATA[14]~output_o\;

ww_AVS_S0_READDATA(15) <= \AVS_S0_READDATA[15]~output_o\;

ww_AVS_S0_READDATA(16) <= \AVS_S0_READDATA[16]~output_o\;

ww_AVS_S0_READDATA(17) <= \AVS_S0_READDATA[17]~output_o\;

ww_AVS_S0_READDATA(18) <= \AVS_S0_READDATA[18]~output_o\;

ww_AVS_S0_READDATA(19) <= \AVS_S0_READDATA[19]~output_o\;

ww_AVS_S0_READDATA(20) <= \AVS_S0_READDATA[20]~output_o\;

ww_AVS_S0_READDATA(21) <= \AVS_S0_READDATA[21]~output_o\;

ww_AVS_S0_READDATA(22) <= \AVS_S0_READDATA[22]~output_o\;

ww_AVS_S0_READDATA(23) <= \AVS_S0_READDATA[23]~output_o\;

ww_AVS_S0_READDATA(24) <= \AVS_S0_READDATA[24]~output_o\;

ww_AVS_S0_READDATA(25) <= \AVS_S0_READDATA[25]~output_o\;

ww_AVS_S0_READDATA(26) <= \AVS_S0_READDATA[26]~output_o\;

ww_AVS_S0_READDATA(27) <= \AVS_S0_READDATA[27]~output_o\;

ww_AVS_S0_READDATA(28) <= \AVS_S0_READDATA[28]~output_o\;

ww_AVS_S0_READDATA(29) <= \AVS_S0_READDATA[29]~output_o\;

ww_AVS_S0_READDATA(30) <= \AVS_S0_READDATA[30]~output_o\;

ww_AVS_S0_READDATA(31) <= \AVS_S0_READDATA[31]~output_o\;

ww_AVS_S0_READDATAVALID <= \AVS_S0_READDATAVALID~output_o\;

ww_AVS_S0_WAITREQUEST <= \AVS_S0_WAITREQUEST~output_o\;

ww_AVS_S1_READDATA(0) <= \AVS_S1_READDATA[0]~output_o\;

ww_AVS_S1_READDATA(1) <= \AVS_S1_READDATA[1]~output_o\;

ww_AVS_S1_READDATA(2) <= \AVS_S1_READDATA[2]~output_o\;

ww_AVS_S1_READDATA(3) <= \AVS_S1_READDATA[3]~output_o\;

ww_AVS_S1_READDATA(4) <= \AVS_S1_READDATA[4]~output_o\;

ww_AVS_S1_READDATA(5) <= \AVS_S1_READDATA[5]~output_o\;

ww_AVS_S1_READDATA(6) <= \AVS_S1_READDATA[6]~output_o\;

ww_AVS_S1_READDATA(7) <= \AVS_S1_READDATA[7]~output_o\;

ww_AVS_S1_READDATA(8) <= \AVS_S1_READDATA[8]~output_o\;

ww_AVS_S1_READDATA(9) <= \AVS_S1_READDATA[9]~output_o\;

ww_AVS_S1_READDATA(10) <= \AVS_S1_READDATA[10]~output_o\;

ww_AVS_S1_READDATA(11) <= \AVS_S1_READDATA[11]~output_o\;

ww_AVS_S1_READDATA(12) <= \AVS_S1_READDATA[12]~output_o\;

ww_AVS_S1_READDATA(13) <= \AVS_S1_READDATA[13]~output_o\;

ww_AVS_S1_READDATA(14) <= \AVS_S1_READDATA[14]~output_o\;

ww_AVS_S1_READDATA(15) <= \AVS_S1_READDATA[15]~output_o\;

ww_AVS_S1_READDATA(16) <= \AVS_S1_READDATA[16]~output_o\;

ww_AVS_S1_READDATA(17) <= \AVS_S1_READDATA[17]~output_o\;

ww_AVS_S1_READDATA(18) <= \AVS_S1_READDATA[18]~output_o\;

ww_AVS_S1_READDATA(19) <= \AVS_S1_READDATA[19]~output_o\;

ww_AVS_S1_READDATA(20) <= \AVS_S1_READDATA[20]~output_o\;

ww_AVS_S1_READDATA(21) <= \AVS_S1_READDATA[21]~output_o\;

ww_AVS_S1_READDATA(22) <= \AVS_S1_READDATA[22]~output_o\;

ww_AVS_S1_READDATA(23) <= \AVS_S1_READDATA[23]~output_o\;

ww_AVS_S1_READDATA(24) <= \AVS_S1_READDATA[24]~output_o\;

ww_AVS_S1_READDATA(25) <= \AVS_S1_READDATA[25]~output_o\;

ww_AVS_S1_READDATA(26) <= \AVS_S1_READDATA[26]~output_o\;

ww_AVS_S1_READDATA(27) <= \AVS_S1_READDATA[27]~output_o\;

ww_AVS_S1_READDATA(28) <= \AVS_S1_READDATA[28]~output_o\;

ww_AVS_S1_READDATA(29) <= \AVS_S1_READDATA[29]~output_o\;

ww_AVS_S1_READDATA(30) <= \AVS_S1_READDATA[30]~output_o\;

ww_AVS_S1_READDATA(31) <= \AVS_S1_READDATA[31]~output_o\;

ww_AVS_S1_READDATAVALID <= \AVS_S1_READDATAVALID~output_o\;

ww_AVS_S1_WAITREQUEST <= \AVS_S1_WAITREQUEST~output_o\;

ww_AVS_S2_READDATA(0) <= \AVS_S2_READDATA[0]~output_o\;

ww_AVS_S2_READDATA(1) <= \AVS_S2_READDATA[1]~output_o\;

ww_AVS_S2_READDATA(2) <= \AVS_S2_READDATA[2]~output_o\;

ww_AVS_S2_READDATA(3) <= \AVS_S2_READDATA[3]~output_o\;

ww_AVS_S2_READDATA(4) <= \AVS_S2_READDATA[4]~output_o\;

ww_AVS_S2_READDATA(5) <= \AVS_S2_READDATA[5]~output_o\;

ww_AVS_S2_READDATA(6) <= \AVS_S2_READDATA[6]~output_o\;

ww_AVS_S2_READDATA(7) <= \AVS_S2_READDATA[7]~output_o\;

ww_AVS_S2_READDATA(8) <= \AVS_S2_READDATA[8]~output_o\;

ww_AVS_S2_READDATA(9) <= \AVS_S2_READDATA[9]~output_o\;

ww_AVS_S2_READDATA(10) <= \AVS_S2_READDATA[10]~output_o\;

ww_AVS_S2_READDATA(11) <= \AVS_S2_READDATA[11]~output_o\;

ww_AVS_S2_READDATA(12) <= \AVS_S2_READDATA[12]~output_o\;

ww_AVS_S2_READDATA(13) <= \AVS_S2_READDATA[13]~output_o\;

ww_AVS_S2_READDATA(14) <= \AVS_S2_READDATA[14]~output_o\;

ww_AVS_S2_READDATA(15) <= \AVS_S2_READDATA[15]~output_o\;

ww_AVS_S2_READDATA(16) <= \AVS_S2_READDATA[16]~output_o\;

ww_AVS_S2_READDATA(17) <= \AVS_S2_READDATA[17]~output_o\;

ww_AVS_S2_READDATA(18) <= \AVS_S2_READDATA[18]~output_o\;

ww_AVS_S2_READDATA(19) <= \AVS_S2_READDATA[19]~output_o\;

ww_AVS_S2_READDATA(20) <= \AVS_S2_READDATA[20]~output_o\;

ww_AVS_S2_READDATA(21) <= \AVS_S2_READDATA[21]~output_o\;

ww_AVS_S2_READDATA(22) <= \AVS_S2_READDATA[22]~output_o\;

ww_AVS_S2_READDATA(23) <= \AVS_S2_READDATA[23]~output_o\;

ww_AVS_S2_READDATA(24) <= \AVS_S2_READDATA[24]~output_o\;

ww_AVS_S2_READDATA(25) <= \AVS_S2_READDATA[25]~output_o\;

ww_AVS_S2_READDATA(26) <= \AVS_S2_READDATA[26]~output_o\;

ww_AVS_S2_READDATA(27) <= \AVS_S2_READDATA[27]~output_o\;

ww_AVS_S2_READDATA(28) <= \AVS_S2_READDATA[28]~output_o\;

ww_AVS_S2_READDATA(29) <= \AVS_S2_READDATA[29]~output_o\;

ww_AVS_S2_READDATA(30) <= \AVS_S2_READDATA[30]~output_o\;

ww_AVS_S2_READDATA(31) <= \AVS_S2_READDATA[31]~output_o\;

ww_AVS_S2_READDATAVALID <= \AVS_S2_READDATAVALID~output_o\;

ww_AVS_S2_WAITREQUEST <= \AVS_S2_WAITREQUEST~output_o\;

ww_AVS_S3_READDATA(0) <= \AVS_S3_READDATA[0]~output_o\;

ww_AVS_S3_READDATA(1) <= \AVS_S3_READDATA[1]~output_o\;

ww_AVS_S3_READDATA(2) <= \AVS_S3_READDATA[2]~output_o\;

ww_AVS_S3_READDATA(3) <= \AVS_S3_READDATA[3]~output_o\;

ww_AVS_S3_READDATA(4) <= \AVS_S3_READDATA[4]~output_o\;

ww_AVS_S3_READDATA(5) <= \AVS_S3_READDATA[5]~output_o\;

ww_AVS_S3_READDATA(6) <= \AVS_S3_READDATA[6]~output_o\;

ww_AVS_S3_READDATA(7) <= \AVS_S3_READDATA[7]~output_o\;

ww_AVS_S3_READDATA(8) <= \AVS_S3_READDATA[8]~output_o\;

ww_AVS_S3_READDATA(9) <= \AVS_S3_READDATA[9]~output_o\;

ww_AVS_S3_READDATA(10) <= \AVS_S3_READDATA[10]~output_o\;

ww_AVS_S3_READDATA(11) <= \AVS_S3_READDATA[11]~output_o\;

ww_AVS_S3_READDATA(12) <= \AVS_S3_READDATA[12]~output_o\;

ww_AVS_S3_READDATA(13) <= \AVS_S3_READDATA[13]~output_o\;

ww_AVS_S3_READDATA(14) <= \AVS_S3_READDATA[14]~output_o\;

ww_AVS_S3_READDATA(15) <= \AVS_S3_READDATA[15]~output_o\;

ww_AVS_S3_READDATA(16) <= \AVS_S3_READDATA[16]~output_o\;

ww_AVS_S3_READDATA(17) <= \AVS_S3_READDATA[17]~output_o\;

ww_AVS_S3_READDATA(18) <= \AVS_S3_READDATA[18]~output_o\;

ww_AVS_S3_READDATA(19) <= \AVS_S3_READDATA[19]~output_o\;

ww_AVS_S3_READDATA(20) <= \AVS_S3_READDATA[20]~output_o\;

ww_AVS_S3_READDATA(21) <= \AVS_S3_READDATA[21]~output_o\;

ww_AVS_S3_READDATA(22) <= \AVS_S3_READDATA[22]~output_o\;

ww_AVS_S3_READDATA(23) <= \AVS_S3_READDATA[23]~output_o\;

ww_AVS_S3_READDATA(24) <= \AVS_S3_READDATA[24]~output_o\;

ww_AVS_S3_READDATA(25) <= \AVS_S3_READDATA[25]~output_o\;

ww_AVS_S3_READDATA(26) <= \AVS_S3_READDATA[26]~output_o\;

ww_AVS_S3_READDATA(27) <= \AVS_S3_READDATA[27]~output_o\;

ww_AVS_S3_READDATA(28) <= \AVS_S3_READDATA[28]~output_o\;

ww_AVS_S3_READDATA(29) <= \AVS_S3_READDATA[29]~output_o\;

ww_AVS_S3_READDATA(30) <= \AVS_S3_READDATA[30]~output_o\;

ww_AVS_S3_READDATA(31) <= \AVS_S3_READDATA[31]~output_o\;

ww_AVS_S3_READDATAVALID <= \AVS_S3_READDATAVALID~output_o\;

ww_AVS_S3_WAITREQUEST <= \AVS_S3_WAITREQUEST~output_o\;

ww_AVM_M1_ADDRESS(0) <= \AVM_M1_ADDRESS[0]~output_o\;

ww_AVM_M1_ADDRESS(1) <= \AVM_M1_ADDRESS[1]~output_o\;

ww_AVM_M1_ADDRESS(2) <= \AVM_M1_ADDRESS[2]~output_o\;

ww_AVM_M1_ADDRESS(3) <= \AVM_M1_ADDRESS[3]~output_o\;

ww_AVM_M1_ADDRESS(4) <= \AVM_M1_ADDRESS[4]~output_o\;

ww_AVM_M1_ADDRESS(5) <= \AVM_M1_ADDRESS[5]~output_o\;

ww_AVM_M1_ADDRESS(6) <= \AVM_M1_ADDRESS[6]~output_o\;

ww_AVM_M1_ADDRESS(7) <= \AVM_M1_ADDRESS[7]~output_o\;

ww_AVM_M1_ADDRESS(8) <= \AVM_M1_ADDRESS[8]~output_o\;

ww_AVM_M1_ADDRESS(9) <= \AVM_M1_ADDRESS[9]~output_o\;

ww_AVM_M1_ADDRESS(10) <= \AVM_M1_ADDRESS[10]~output_o\;

ww_AVM_M1_ADDRESS(11) <= \AVM_M1_ADDRESS[11]~output_o\;

ww_AVM_M1_ADDRESS(12) <= \AVM_M1_ADDRESS[12]~output_o\;

ww_AVM_M1_ADDRESS(13) <= \AVM_M1_ADDRESS[13]~output_o\;

ww_AVM_M1_ADDRESS(14) <= \AVM_M1_ADDRESS[14]~output_o\;

ww_AVM_M1_ADDRESS(15) <= \AVM_M1_ADDRESS[15]~output_o\;

ww_AVM_M1_ADDRESS(16) <= \AVM_M1_ADDRESS[16]~output_o\;

ww_AVM_M1_ADDRESS(17) <= \AVM_M1_ADDRESS[17]~output_o\;

ww_AVM_M1_ADDRESS(18) <= \AVM_M1_ADDRESS[18]~output_o\;

ww_AVM_M1_ADDRESS(19) <= \AVM_M1_ADDRESS[19]~output_o\;

ww_AVM_M1_ADDRESS(20) <= \AVM_M1_ADDRESS[20]~output_o\;

ww_AVM_M1_ADDRESS(21) <= \AVM_M1_ADDRESS[21]~output_o\;

ww_AVM_M1_ADDRESS(22) <= \AVM_M1_ADDRESS[22]~output_o\;

ww_AVM_M1_ADDRESS(23) <= \AVM_M1_ADDRESS[23]~output_o\;

ww_AVM_M1_ADDRESS(24) <= \AVM_M1_ADDRESS[24]~output_o\;

ww_AVM_M1_ADDRESS(25) <= \AVM_M1_ADDRESS[25]~output_o\;

ww_AVM_M1_ADDRESS(26) <= \AVM_M1_ADDRESS[26]~output_o\;

ww_AVM_M1_ADDRESS(27) <= \AVM_M1_ADDRESS[27]~output_o\;

ww_AVM_M1_READ <= \AVM_M1_READ~output_o\;

ww_AVM_M1_WRITE <= \AVM_M1_WRITE~output_o\;

ww_AVM_M1_WRITEDATA(0) <= \AVM_M1_WRITEDATA[0]~output_o\;

ww_AVM_M1_WRITEDATA(1) <= \AVM_M1_WRITEDATA[1]~output_o\;

ww_AVM_M1_WRITEDATA(2) <= \AVM_M1_WRITEDATA[2]~output_o\;

ww_AVM_M1_WRITEDATA(3) <= \AVM_M1_WRITEDATA[3]~output_o\;

ww_AVM_M1_WRITEDATA(4) <= \AVM_M1_WRITEDATA[4]~output_o\;

ww_AVM_M1_WRITEDATA(5) <= \AVM_M1_WRITEDATA[5]~output_o\;

ww_AVM_M1_WRITEDATA(6) <= \AVM_M1_WRITEDATA[6]~output_o\;

ww_AVM_M1_WRITEDATA(7) <= \AVM_M1_WRITEDATA[7]~output_o\;

ww_AVM_M1_WRITEDATA(8) <= \AVM_M1_WRITEDATA[8]~output_o\;

ww_AVM_M1_WRITEDATA(9) <= \AVM_M1_WRITEDATA[9]~output_o\;

ww_AVM_M1_WRITEDATA(10) <= \AVM_M1_WRITEDATA[10]~output_o\;

ww_AVM_M1_WRITEDATA(11) <= \AVM_M1_WRITEDATA[11]~output_o\;

ww_AVM_M1_WRITEDATA(12) <= \AVM_M1_WRITEDATA[12]~output_o\;

ww_AVM_M1_WRITEDATA(13) <= \AVM_M1_WRITEDATA[13]~output_o\;

ww_AVM_M1_WRITEDATA(14) <= \AVM_M1_WRITEDATA[14]~output_o\;

ww_AVM_M1_WRITEDATA(15) <= \AVM_M1_WRITEDATA[15]~output_o\;

ww_AVM_M1_WRITEDATA(16) <= \AVM_M1_WRITEDATA[16]~output_o\;

ww_AVM_M1_WRITEDATA(17) <= \AVM_M1_WRITEDATA[17]~output_o\;

ww_AVM_M1_WRITEDATA(18) <= \AVM_M1_WRITEDATA[18]~output_o\;

ww_AVM_M1_WRITEDATA(19) <= \AVM_M1_WRITEDATA[19]~output_o\;

ww_AVM_M1_WRITEDATA(20) <= \AVM_M1_WRITEDATA[20]~output_o\;

ww_AVM_M1_WRITEDATA(21) <= \AVM_M1_WRITEDATA[21]~output_o\;

ww_AVM_M1_WRITEDATA(22) <= \AVM_M1_WRITEDATA[22]~output_o\;

ww_AVM_M1_WRITEDATA(23) <= \AVM_M1_WRITEDATA[23]~output_o\;

ww_AVM_M1_WRITEDATA(24) <= \AVM_M1_WRITEDATA[24]~output_o\;

ww_AVM_M1_WRITEDATA(25) <= \AVM_M1_WRITEDATA[25]~output_o\;

ww_AVM_M1_WRITEDATA(26) <= \AVM_M1_WRITEDATA[26]~output_o\;

ww_AVM_M1_WRITEDATA(27) <= \AVM_M1_WRITEDATA[27]~output_o\;

ww_AVM_M1_WRITEDATA(28) <= \AVM_M1_WRITEDATA[28]~output_o\;

ww_AVM_M1_WRITEDATA(29) <= \AVM_M1_WRITEDATA[29]~output_o\;

ww_AVM_M1_WRITEDATA(30) <= \AVM_M1_WRITEDATA[30]~output_o\;

ww_AVM_M1_WRITEDATA(31) <= \AVM_M1_WRITEDATA[31]~output_o\;

ww_AVM_M1_BYTEENABLE(0) <= \AVM_M1_BYTEENABLE[0]~output_o\;

ww_AVM_M1_BYTEENABLE(1) <= \AVM_M1_BYTEENABLE[1]~output_o\;

ww_AVM_M1_BYTEENABLE(2) <= \AVM_M1_BYTEENABLE[2]~output_o\;

ww_AVM_M1_BYTEENABLE(3) <= \AVM_M1_BYTEENABLE[3]~output_o\;
END structure;


