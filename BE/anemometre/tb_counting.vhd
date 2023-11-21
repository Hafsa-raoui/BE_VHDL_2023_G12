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
-- Generated on "11/16/2023 00:11:37"
                                                            
-- Vhdl Test Bench template for design  :  counting
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tb_counting IS
END tb_counting ;
ARCHITECTURE counting_arch OF tb_counting IS
-- constants  
constant clk_period : time := 20 ns; 
constant clk_freq_in : time := 10 ms;                                              
-- signals                                                   
SIGNAL clk_50M : STD_LOGIC:='0';
SIGNAL data_anemometre : STD_LOGIC_VECTOR(7 DOWNTO 0):=(others =>'0');
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
clk_process : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once
			clk_50M <= '0';
			wait for clk_period/2;
			clk_50M <= '1';
			wait for clk_period/2;                                                     
END PROCESS clk_process; 

freq_in_process : PROCESS
-- variable declarations                                     
BEGIN
			freq_in <= '0';
			wait for clk_freq_in/2;
			freq_in <= '1';
			wait for clk_freq_in/2;
			
			---
			freq_in <= '0';
			wait for 2.5 ms;
			freq_in <= '1';
			wait for 2.5 ms;
			---
			freq_in <= '0';
			wait for 1000 ms;
			freq_in <= '1';
			wait for 1000 ms;
			
END PROCESS freq_in_process;			

stim_proc : process
begin
	reset <= '0';
	wait for 30 ns;
	reset <= '1';
	
	wait;
end process;                                          
END counting_arch;
