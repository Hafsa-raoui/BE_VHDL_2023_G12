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
-- Generated on "11/08/2023 00:12:23"
                                                            
-- Vhdl Test Bench template for design  :  anemometre_component
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY anemometre_component_vhd_tst IS
END anemometre_component_vhd_tst;
ARCHITECTURE anemometre_component_arch OF anemometre_component_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a_reset : STD_LOGIC;
SIGNAL clk_50M : STD_LOGIC;
SIGNAL d_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL freq_in : STD_LOGIC;
COMPONENT anemometre_component
	PORT (
	a_reset : IN STD_LOGIC;
	clk_50M : IN STD_LOGIC;
	d_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	freq_in : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : anemometre_component
	PORT MAP (
-- list connections between master ports and signals
	a_reset => a_reset,
	clk_50M => clk_50M,
	d_out => d_out,
	freq_in => freq_in
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END anemometre_component_arch;
