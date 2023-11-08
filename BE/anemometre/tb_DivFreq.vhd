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
-- Generated on "11/08/2023 21:53:34"
                                                            
-- Vhdl Test Bench template for design  :  DivFreq
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tb_DivFreq IS
END tb_DivFreq;
ARCHITECTURE DivFreq_arch OF tb_DivFreq IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_1 : STD_LOGIC:='0';
SIGNAL clk_50M : STD_LOGIC:='0';
SIGNAL reset : STD_LOGIC:='0';
COMPONENT DivFreq
	PORT (
	clk_1 : BUFFER STD_LOGIC;
	clk_50M : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DivFreq
	PORT MAP (
-- list connections between master ports and signals
	clk_1 => clk_1,
	clk_50M => clk_50M,
	reset => reset
	);

arst_process : process
begin 
reset <= '1'; wait for 100 ms;
reset <= '0'; wait;
end process;

clk_process : process
begin


clk_50M <= not clk_50M;
wait for 10 ns;

end process;

	
END DivFreq_arch;
