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
-- CREATED		"Wed Dec 06 23:09:28 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY sopc_anemometre IS 
	PORT
	(
		clk_50M :  IN  STD_LOGIC;
		chipselect : in std_logic;
		write_n		: in std_logic;
		reset :  IN  STD_LOGIC;
		write_data  : in std_logic_vector(31 downto 0);
		
		read_data :   out std_logic_vector(31 downto 0);
		address :   std_logic_vector(1 downto 0)
		
		
	);
END sopc_anemometre;

ARCHITECTURE bdf_type OF sopc_anemometre IS 
		signal continu :    STD_LOGIC;
		signal start_stop :    STD_LOGIC;
		signal freq_in :    STD_LOGIC;
		signal data_valid :    STD_LOGIC;
		signal data_anemometre :   STD_LOGIC_VECTOR(7 DOWNTO 0);

COMPONENT counting
	PORT(clk_50M : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 continu : IN STD_LOGIC;
		 start_stop : IN STD_LOGIC;
		 freq_in : IN STD_LOGIC;
		 data_valid : OUT STD_LOGIC;
		 data_anemometre : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;



BEGIN 



b2v_inst : counting
PORT MAP(clk_50M => clk_50M,
		 reset => reset,
		 continu => continu,
		 start_stop => start_stop,
		 freq_in => freq_in,
		 data_valid => data_valid,
		 data_anemometre => data_anemometre);

-- Interface Lecture registre
process_read : process(address)
begin
	case address is
	when "00" => read_data <= "0000000000000000000000" & data_valid & '0' & data_anemometre;
	when others => read_data <= (others => '0');
	end case;
	end process process_read;

END bdf_type;