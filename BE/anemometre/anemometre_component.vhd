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
-- CREATED		"Tue Nov 07 23:33:41 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY anemometre_component IS 
	PORT
	(
		clk_50M :  IN  STD_LOGIC;
		a_reset :  IN  STD_LOGIC;
		freq_in :  IN  STD_LOGIC;
		d_out :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END anemometre_component;

ARCHITECTURE bdf_type OF anemometre_component IS 

COMPONENT divfreq
	PORT(clk_50M : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 clk_1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT counter
GENERIC (count : INTEGER
			);
	PORT(clk_50M : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 clk_1 : IN STD_LOGIC;
		 rst_edge : IN STD_LOGIC;
		 sortie : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT basculed
	PORT(arazb : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 en : IN STD_LOGIC;
		 d_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 d_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT detect_front
	PORT(clk_50M : IN STD_LOGIC;
		 freq_in : IN STD_LOGIC;
		 rst : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



b2v_inst : divfreq
PORT MAP(clk_50M => clk_50M,
		 reset => a_reset,
		 clk_1 => SYNTHESIZED_WIRE_4);


b2v_inst4 : counter
GENERIC MAP(count => 8
			)
PORT MAP(clk_50M => clk_50M,
		 reset => a_reset,
		 clk_1 => SYNTHESIZED_WIRE_4,
		 rst_edge => SYNTHESIZED_WIRE_1,
		 sortie => SYNTHESIZED_WIRE_3);


b2v_inst5 : basculed
PORT MAP(arazb => a_reset,
		 clk => clk_50M,
		 en => SYNTHESIZED_WIRE_4,
		 d_in => SYNTHESIZED_WIRE_3,
		 d_out => d_out);


b2v_inst6 : detect_front
PORT MAP(clk_50M => clk_50M,
		 freq_in => freq_in,
		 rst => SYNTHESIZED_WIRE_1);


END bdf_type;