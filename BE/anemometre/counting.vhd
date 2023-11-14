-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Mon Nov 13 21:45:50 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY counting IS 
	PORT
	(
		clk_50M :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		freq_in :  IN  STD_LOGIC;
		data_anemometre :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END counting;

ARCHITECTURE bdf_type OF counting IS 

COMPONENT divfreq
	PORT(clk_50M : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 clk_1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT count
	PORT(clk_1 : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 freq_in : IN STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;


BEGIN 



b2v_inst : divfreq
PORT MAP(clk_50M => clk_50M,
		 reset => reset,
		 clk_1 => SYNTHESIZED_WIRE_0);


b2v_inst1 : count
PORT MAP(clk_1 => SYNTHESIZED_WIRE_0,
		 rst => reset,
		 freq_in => freq_in,
		 count => data_anemometre);


END bdf_type;