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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/13/2023 21:46:29"
                                                            
-- Vhdl Test Bench template for design  :  counting
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY counting_vhd_tst IS
END counting_vhd_tst;
ARCHITECTURE counting_arch OF counting_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50M : STD_LOGIC:='0';
SIGNAL data_anemometre : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL freq_in : STD_LOGIC:='0';
SIGNAL reset : STD_LOGIC:='0';
COMPONENT counting
	PORT (
	clk_50M : IN STD_LOGIC;
	data_anemometre : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	freq_in : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : counting
	PORT MAP (
-- list connections between master ports and signals
	clk_50M => clk_50M,
	data_anemometre => data_anemometre,
	freq_in => freq_in,
	reset => reset
	);
	
	
-- Clock generation process
  clk_gen_proc: PROCESS
  BEGIN
	  wait for 10 ns;
    clk_50M <= NOT clk_50M;
  END PROCESS clk_gen_proc;

  freq_in_gen_proc: PROCESS
  BEGIN
	  wait for 5 us;
    freq_in <= NOT freq_in;
  END PROCESS freq_in_gen_proc;
  
  rst_gen_proc : PROCESS
  begin 
	wait for 5 ns;
	reset <= '0';
 END PROCESS rst_gen_proc;
                                          
END counting_arch;
