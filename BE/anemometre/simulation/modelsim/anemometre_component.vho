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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/14/2023 00:38:26"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counting IS
    PORT (
	data_anemometre : OUT std_logic_vector(7 DOWNTO 0);
	clk_50M : IN std_logic;
	reset : IN std_logic;
	freq_in : IN std_logic
	);
END counting;

-- Design Ports Information
-- data_anemometre[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50M	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_in	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counting IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_anemometre : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk_50M : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_freq_in : std_logic;
SIGNAL \inst|clk_1prime~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_anemometre[7]~output_o\ : std_logic;
SIGNAL \data_anemometre[6]~output_o\ : std_logic;
SIGNAL \data_anemometre[5]~output_o\ : std_logic;
SIGNAL \data_anemometre[4]~output_o\ : std_logic;
SIGNAL \data_anemometre[3]~output_o\ : std_logic;
SIGNAL \data_anemometre[2]~output_o\ : std_logic;
SIGNAL \data_anemometre[1]~output_o\ : std_logic;
SIGNAL \data_anemometre[0]~output_o\ : std_logic;
SIGNAL \clk_50M~input_o\ : std_logic;
SIGNAL \clk_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~97_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst|Add0~5_cout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~96_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~95_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~94_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~93_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~85_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~84_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~92_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~90_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~75_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Add0~77_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|Add0~76_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Add0~89_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|Add0~81_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|Add0~83_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|Add0~82_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|Add0~88_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|Add0~87_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|Add0~80_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|Add0~79_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|Add0~86_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|Add0~78_combout\ : std_logic;
SIGNAL \inst|Add0~49\ : std_logic;
SIGNAL \inst|Add0~50_combout\ : std_logic;
SIGNAL \inst|Add0~72_combout\ : std_logic;
SIGNAL \inst|Add0~51\ : std_logic;
SIGNAL \inst|Add0~52_combout\ : std_logic;
SIGNAL \inst|Add0~71_combout\ : std_logic;
SIGNAL \inst|Add0~53\ : std_logic;
SIGNAL \inst|Add0~54_combout\ : std_logic;
SIGNAL \inst|Add0~70_combout\ : std_logic;
SIGNAL \inst|Add0~55\ : std_logic;
SIGNAL \inst|Add0~56_combout\ : std_logic;
SIGNAL \inst|Add0~69_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Add0~57\ : std_logic;
SIGNAL \inst|Add0~58_combout\ : std_logic;
SIGNAL \inst|Add0~68_combout\ : std_logic;
SIGNAL \inst|Add0~59\ : std_logic;
SIGNAL \inst|Add0~60_combout\ : std_logic;
SIGNAL \inst|Add0~67_combout\ : std_logic;
SIGNAL \inst|Add0~61\ : std_logic;
SIGNAL \inst|Add0~62_combout\ : std_logic;
SIGNAL \inst|Add0~66_combout\ : std_logic;
SIGNAL \inst|Add0~63\ : std_logic;
SIGNAL \inst|Add0~64_combout\ : std_logic;
SIGNAL \inst|Add0~98_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~10_combout\ : std_logic;
SIGNAL \inst|Add0~65\ : std_logic;
SIGNAL \inst|Add0~73_combout\ : std_logic;
SIGNAL \inst|Add0~99_combout\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~91_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|clk_1prime~0_combout\ : std_logic;
SIGNAL \inst|clk_1prime~feeder_combout\ : std_logic;
SIGNAL \inst|clk_1prime~q\ : std_logic;
SIGNAL \inst|clk_1prime~clkctrl_outclk\ : std_logic;
SIGNAL \freq_in~input_o\ : std_logic;
SIGNAL \inst1|cpt1[0]~8_combout\ : std_logic;
SIGNAL \inst1|cpt1[0]~9\ : std_logic;
SIGNAL \inst1|cpt1[1]~10_combout\ : std_logic;
SIGNAL \inst1|cpt1[1]~11\ : std_logic;
SIGNAL \inst1|cpt1[2]~12_combout\ : std_logic;
SIGNAL \inst1|cpt1[2]~13\ : std_logic;
SIGNAL \inst1|cpt1[3]~14_combout\ : std_logic;
SIGNAL \inst1|cpt1[3]~15\ : std_logic;
SIGNAL \inst1|cpt1[4]~16_combout\ : std_logic;
SIGNAL \inst1|cpt1[4]~17\ : std_logic;
SIGNAL \inst1|cpt1[5]~18_combout\ : std_logic;
SIGNAL \inst1|cpt1[5]~19\ : std_logic;
SIGNAL \inst1|cpt1[6]~20_combout\ : std_logic;
SIGNAL \inst1|cpt1[6]~21\ : std_logic;
SIGNAL \inst1|cpt1[7]~22_combout\ : std_logic;
SIGNAL \inst1|s_cpt1[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_cpt1[7]~0_combout\ : std_logic;
SIGNAL \inst1|cpt2[0]~8_combout\ : std_logic;
SIGNAL \inst1|cpt2[0]~9\ : std_logic;
SIGNAL \inst1|cpt2[1]~10_combout\ : std_logic;
SIGNAL \inst1|cpt2[1]~11\ : std_logic;
SIGNAL \inst1|cpt2[2]~12_combout\ : std_logic;
SIGNAL \inst1|cpt2[2]~13\ : std_logic;
SIGNAL \inst1|cpt2[3]~14_combout\ : std_logic;
SIGNAL \inst1|cpt2[3]~15\ : std_logic;
SIGNAL \inst1|cpt2[4]~16_combout\ : std_logic;
SIGNAL \inst1|cpt2[4]~17\ : std_logic;
SIGNAL \inst1|cpt2[5]~18_combout\ : std_logic;
SIGNAL \inst1|cpt2[5]~19\ : std_logic;
SIGNAL \inst1|cpt2[6]~20_combout\ : std_logic;
SIGNAL \inst1|cpt2[6]~21\ : std_logic;
SIGNAL \inst1|cpt2[7]~22_combout\ : std_logic;
SIGNAL \inst1|s_cpt2[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_cpt2[7]~0_combout\ : std_logic;
SIGNAL \inst1|s_cpt2[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_cpt1[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_cpt1[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_cpt2[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_cpt1[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_cpt2[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_cpt2[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_cpt1[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_cpt2[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_cpt2[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_cpt2[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|cpt3[0]~9\ : std_logic;
SIGNAL \inst1|cpt3[1]~11\ : std_logic;
SIGNAL \inst1|cpt3[2]~13\ : std_logic;
SIGNAL \inst1|cpt3[3]~15\ : std_logic;
SIGNAL \inst1|cpt3[4]~17\ : std_logic;
SIGNAL \inst1|cpt3[5]~19\ : std_logic;
SIGNAL \inst1|cpt3[6]~21\ : std_logic;
SIGNAL \inst1|cpt3[7]~22_combout\ : std_logic;
SIGNAL \inst1|cpt3[6]~20_combout\ : std_logic;
SIGNAL \inst1|cpt3[5]~18_combout\ : std_logic;
SIGNAL \inst1|cpt3[4]~16_combout\ : std_logic;
SIGNAL \inst1|cpt3[3]~14_combout\ : std_logic;
SIGNAL \inst1|cpt3[2]~12_combout\ : std_logic;
SIGNAL \inst1|cpt3[1]~10_combout\ : std_logic;
SIGNAL \inst1|cpt3[0]~8_combout\ : std_logic;
SIGNAL \inst1|cpt3[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|cpt3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|cpt2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|cpt1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|s_cpt2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|compteur\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|s_cpt1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALT_INV_clk_1prime~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

data_anemometre <= ww_data_anemometre;
ww_clk_50M <= clk_50M;
ww_reset <= reset;
ww_freq_in <= freq_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|clk_1prime~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clk_1prime~q\);

\clk_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50M~input_o\);
\inst|ALT_INV_clk_1prime~q\ <= NOT \inst|clk_1prime~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y10_N23
\data_anemometre[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cpt3\(7),
	devoe => ww_devoe,
	o => \data_anemometre[7]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\data_anemometre[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cpt3\(6),
	devoe => ww_devoe,
	o => \data_anemometre[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\data_anemometre[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cpt3\(5),
	devoe => ww_devoe,
	o => \data_anemometre[5]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\data_anemometre[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cpt3\(4),
	devoe => ww_devoe,
	o => \data_anemometre[4]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\data_anemometre[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cpt3\(3),
	devoe => ww_devoe,
	o => \data_anemometre[3]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\data_anemometre[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cpt3\(2),
	devoe => ww_devoe,
	o => \data_anemometre[2]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\data_anemometre[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cpt3\(1),
	devoe => ww_devoe,
	o => \data_anemometre[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\data_anemometre[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|cpt3\(0),
	devoe => ww_devoe,
	o => \data_anemometre[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk_50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50M,
	o => \clk_50M~input_o\);

-- Location: CLKCTRL_G18
\clk_50M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50M~inputclkctrl_outclk\);

-- Location: LCCOMB_X36_Y10_N4
\inst|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~97_combout\ = (!\inst|compteur\(0) & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(0),
	datab => \inst|compteur\(31),
	datac => \inst|LessThan0~5_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Add0~97_combout\);

-- Location: IOIBUF_X53_Y14_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X37_Y10_N27
\inst|compteur[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \inst|Add0~97_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(0));

-- Location: LCCOMB_X37_Y10_N0
\inst|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~5_cout\ = CARRY(!\inst|compteur\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(0),
	datad => VCC,
	cout => \inst|Add0~5_cout\);

-- Location: LCCOMB_X37_Y10_N2
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|compteur\(1) & (!\inst|Add0~5_cout\)) # (!\inst|compteur\(1) & ((\inst|Add0~5_cout\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5_cout\) # (!\inst|compteur\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(1),
	datad => VCC,
	cin => \inst|Add0~5_cout\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X36_Y10_N26
\inst|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~96_combout\ = (\inst|Add0~6_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~6_combout\,
	datab => \inst|compteur\(31),
	datac => \inst|LessThan0~5_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Add0~96_combout\);

-- Location: FF_X37_Y10_N25
\inst|compteur[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \inst|Add0~96_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(1));

-- Location: LCCOMB_X37_Y10_N4
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|compteur\(2) & (\inst|Add0~7\ $ (GND))) # (!\inst|compteur\(2) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|compteur\(2) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(2),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X36_Y10_N16
\inst|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~95_combout\ = (\inst|Add0~8_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datab => \inst|compteur\(31),
	datac => \inst|LessThan0~5_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Add0~95_combout\);

-- Location: FF_X37_Y10_N1
\inst|compteur[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \inst|Add0~95_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(2));

-- Location: LCCOMB_X37_Y10_N6
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|compteur\(3) & (!\inst|Add0~9\)) # (!\inst|compteur\(3) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|compteur\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(3),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X36_Y10_N6
\inst|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~94_combout\ = (\inst|Add0~10_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~10_combout\,
	datab => \inst|compteur\(31),
	datac => \inst|LessThan0~5_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Add0~94_combout\);

-- Location: FF_X37_Y10_N3
\inst|compteur[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \inst|Add0~94_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(3));

-- Location: LCCOMB_X37_Y10_N8
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|compteur\(4) & (\inst|Add0~11\ $ (GND))) # (!\inst|compteur\(4) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|compteur\(4) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(4),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X36_Y10_N0
\inst|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~93_combout\ = (\inst|Add0~12_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~12_combout\,
	datab => \inst|compteur\(31),
	datac => \inst|LessThan0~5_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Add0~93_combout\);

-- Location: FF_X37_Y10_N21
\inst|compteur[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \inst|Add0~93_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(4));

-- Location: LCCOMB_X37_Y10_N10
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|compteur\(5) & (!\inst|Add0~13\)) # (!\inst|compteur\(5) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|compteur\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(5),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X38_Y10_N10
\inst|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~85_combout\ = (\inst|Add0~14_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(31),
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|Add0~14_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Add0~85_combout\);

-- Location: FF_X37_Y10_N13
\inst|compteur[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \inst|Add0~85_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(5));

-- Location: LCCOMB_X37_Y10_N12
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|compteur\(6) & (\inst|Add0~15\ $ (GND))) # (!\inst|compteur\(6) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|compteur\(6) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(6),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X38_Y10_N28
\inst|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~84_combout\ = (\inst|Add0~16_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(31),
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|Add0~16_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Add0~84_combout\);

-- Location: FF_X38_Y10_N29
\inst|compteur[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~84_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(6));

-- Location: LCCOMB_X37_Y10_N14
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|compteur\(7) & (!\inst|Add0~17\)) # (!\inst|compteur\(7) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|compteur\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(7),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X36_Y10_N14
\inst|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~92_combout\ = (\inst|Add0~18_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(31),
	datab => \inst|Add0~18_combout\,
	datac => \inst|LessThan0~5_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Add0~92_combout\);

-- Location: FF_X37_Y10_N7
\inst|compteur[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \inst|Add0~92_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(7));

-- Location: LCCOMB_X37_Y10_N16
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|compteur\(8) & (\inst|Add0~19\ $ (GND))) # (!\inst|compteur\(8) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|compteur\(8) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(8),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X37_Y10_N18
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|compteur\(9) & (!\inst|Add0~21\)) # (!\inst|compteur\(9) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|compteur\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(9),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X38_Y10_N22
\inst|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~90_combout\ = (\inst|Add0~22_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(31),
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|Add0~22_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Add0~90_combout\);

-- Location: FF_X38_Y10_N23
\inst|compteur[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~90_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(9));

-- Location: LCCOMB_X37_Y10_N20
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|compteur\(10) & (\inst|Add0~23\ $ (GND))) # (!\inst|compteur\(10) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|compteur\(10) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(10),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X37_Y12_N14
\inst|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~75_combout\ = (\inst|Add0~24_combout\ & ((\inst|compteur\(31)) # ((\inst|Equal0~10_combout\ & \inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~10_combout\,
	datab => \inst|compteur\(31),
	datac => \inst|Add0~24_combout\,
	datad => \inst|LessThan0~5_combout\,
	combout => \inst|Add0~75_combout\);

-- Location: FF_X37_Y12_N15
\inst|compteur[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~75_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(10));

-- Location: LCCOMB_X37_Y10_N22
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|compteur\(11) & (!\inst|Add0~25\)) # (!\inst|compteur\(11) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|compteur\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(11),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X37_Y12_N2
\inst|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~77_combout\ = (\inst|Add0~26_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~5_combout\,
	datab => \inst|compteur\(31),
	datac => \inst|Equal0~10_combout\,
	datad => \inst|Add0~26_combout\,
	combout => \inst|Add0~77_combout\);

-- Location: FF_X37_Y12_N3
\inst|compteur[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~77_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(11));

-- Location: LCCOMB_X37_Y10_N24
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|compteur\(12) & (\inst|Add0~27\ $ (GND))) # (!\inst|compteur\(12) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|compteur\(12) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(12),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X37_Y12_N24
\inst|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~76_combout\ = (\inst|Add0~28_combout\ & ((\inst|compteur\(31)) # ((\inst|Equal0~10_combout\ & \inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~10_combout\,
	datab => \inst|compteur\(31),
	datac => \inst|Add0~28_combout\,
	datad => \inst|LessThan0~5_combout\,
	combout => \inst|Add0~76_combout\);

-- Location: FF_X37_Y12_N25
\inst|compteur[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~76_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(12));

-- Location: LCCOMB_X37_Y10_N26
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|compteur\(13) & (!\inst|Add0~29\)) # (!\inst|compteur\(13) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|compteur\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(13),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X38_Y10_N8
\inst|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~89_combout\ = (\inst|Add0~30_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(31),
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|Add0~30_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Add0~89_combout\);

-- Location: FF_X38_Y10_N9
\inst|compteur[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~89_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(13));

-- Location: LCCOMB_X38_Y10_N26
\inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = ((!\inst|compteur\(12) & (!\inst|compteur\(11) & !\inst|compteur\(10)))) # (!\inst|compteur\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(12),
	datab => \inst|compteur\(13),
	datac => \inst|compteur\(11),
	datad => \inst|compteur\(10),
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X38_Y10_N2
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (((!\inst|compteur\(6) & !\inst|compteur\(5))) # (!\inst|compteur\(7))) # (!\inst|compteur\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(8),
	datab => \inst|compteur\(6),
	datac => \inst|compteur\(7),
	datad => \inst|compteur\(5),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X38_Y10_N16
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (!\inst|compteur\(11) & (!\inst|compteur\(9) & (!\inst|compteur\(12) & \inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(11),
	datab => \inst|compteur\(9),
	datac => \inst|compteur\(12),
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X37_Y10_N28
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|compteur\(14) & (\inst|Add0~31\ $ (GND))) # (!\inst|compteur\(14) & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|compteur\(14) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(14),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X38_Y10_N20
\inst|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~81_combout\ = (\inst|Add0~32_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(31),
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|Add0~32_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Add0~81_combout\);

-- Location: FF_X38_Y10_N21
\inst|compteur[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~81_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(14));

-- Location: LCCOMB_X37_Y10_N30
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|compteur\(15) & (!\inst|Add0~33\)) # (!\inst|compteur\(15) & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|compteur\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(15),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X36_Y10_N12
\inst|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~83_combout\ = (\inst|Add0~34_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~34_combout\,
	datab => \inst|compteur\(31),
	datac => \inst|LessThan0~5_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Add0~83_combout\);

-- Location: FF_X36_Y10_N13
\inst|compteur[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~83_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(15));

-- Location: LCCOMB_X37_Y9_N0
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|compteur\(16) & (\inst|Add0~35\ $ (GND))) # (!\inst|compteur\(16) & (!\inst|Add0~35\ & VCC))
-- \inst|Add0~37\ = CARRY((\inst|compteur\(16) & !\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(16),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X38_Y9_N0
\inst|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~82_combout\ = (\inst|Add0~36_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(31),
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|Add0~36_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Add0~82_combout\);

-- Location: FF_X38_Y9_N1
\inst|compteur[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~82_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(16));

-- Location: LCCOMB_X37_Y9_N2
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|compteur\(17) & (!\inst|Add0~37\)) # (!\inst|compteur\(17) & ((\inst|Add0~37\) # (GND)))
-- \inst|Add0~39\ = CARRY((!\inst|Add0~37\) # (!\inst|compteur\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(17),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: LCCOMB_X38_Y10_N18
\inst|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~88_combout\ = (\inst|Add0~38_combout\ & ((\inst|compteur\(31)) # ((\inst|Equal0~10_combout\ & \inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~10_combout\,
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|compteur\(31),
	datad => \inst|Add0~38_combout\,
	combout => \inst|Add0~88_combout\);

-- Location: FF_X38_Y10_N19
\inst|compteur[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~88_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(17));

-- Location: LCCOMB_X37_Y9_N4
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|compteur\(18) & (\inst|Add0~39\ $ (GND))) # (!\inst|compteur\(18) & (!\inst|Add0~39\ & VCC))
-- \inst|Add0~41\ = CARRY((\inst|compteur\(18) & !\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(18),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: LCCOMB_X38_Y10_N30
\inst|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~87_combout\ = (\inst|Add0~40_combout\ & ((\inst|compteur\(31)) # ((\inst|Equal0~10_combout\ & \inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~10_combout\,
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|compteur\(31),
	datad => \inst|Add0~40_combout\,
	combout => \inst|Add0~87_combout\);

-- Location: FF_X38_Y10_N31
\inst|compteur[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~87_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(18));

-- Location: LCCOMB_X37_Y9_N6
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|compteur\(19) & (!\inst|Add0~41\)) # (!\inst|compteur\(19) & ((\inst|Add0~41\) # (GND)))
-- \inst|Add0~43\ = CARRY((!\inst|Add0~41\) # (!\inst|compteur\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(19),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X37_Y12_N12
\inst|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~80_combout\ = (\inst|Add0~42_combout\ & ((\inst|compteur\(31)) # ((\inst|Equal0~10_combout\ & \inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~10_combout\,
	datab => \inst|compteur\(31),
	datac => \inst|Add0~42_combout\,
	datad => \inst|LessThan0~5_combout\,
	combout => \inst|Add0~80_combout\);

-- Location: FF_X37_Y12_N13
\inst|compteur[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~80_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(19));

-- Location: LCCOMB_X37_Y9_N8
\inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|compteur\(20) & (\inst|Add0~43\ $ (GND))) # (!\inst|compteur\(20) & (!\inst|Add0~43\ & VCC))
-- \inst|Add0~45\ = CARRY((\inst|compteur\(20) & !\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(20),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: LCCOMB_X37_Y12_N30
\inst|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~79_combout\ = (\inst|Add0~44_combout\ & ((\inst|compteur\(31)) # ((\inst|Equal0~10_combout\ & \inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~10_combout\,
	datab => \inst|compteur\(31),
	datac => \inst|Add0~44_combout\,
	datad => \inst|LessThan0~5_combout\,
	combout => \inst|Add0~79_combout\);

-- Location: FF_X37_Y12_N31
\inst|compteur[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~79_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(20));

-- Location: LCCOMB_X37_Y12_N22
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|compteur\(20) & !\inst|compteur\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|compteur\(20),
	datad => \inst|compteur\(19),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y10_N4
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = ((\inst|LessThan0~0_combout\ & ((!\inst|compteur\(17)) # (!\inst|compteur\(18))))) # (!\inst|compteur\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(18),
	datab => \inst|compteur\(17),
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|compteur\(21),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X38_Y10_N6
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (!\inst|compteur\(15) & (!\inst|compteur\(14) & (\inst|LessThan0~0_combout\ & !\inst|compteur\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(15),
	datab => \inst|compteur\(14),
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|compteur\(16),
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X38_Y10_N0
\inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = (\inst|LessThan0~1_combout\) # ((\inst|Equal0~4_combout\ & ((\inst|LessThan0~4_combout\) # (\inst|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~4_combout\,
	datab => \inst|LessThan0~3_combout\,
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X37_Y9_N10
\inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|compteur\(21) & (!\inst|Add0~45\)) # (!\inst|compteur\(21) & ((\inst|Add0~45\) # (GND)))
-- \inst|Add0~47\ = CARRY((!\inst|Add0~45\) # (!\inst|compteur\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(21),
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: LCCOMB_X38_Y9_N18
\inst|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~86_combout\ = (\inst|Add0~46_combout\ & ((\inst|compteur\(31)) # ((\inst|Equal0~10_combout\ & \inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~10_combout\,
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|compteur\(31),
	datad => \inst|Add0~46_combout\,
	combout => \inst|Add0~86_combout\);

-- Location: FF_X38_Y9_N19
\inst|compteur[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~86_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(21));

-- Location: LCCOMB_X37_Y9_N12
\inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (\inst|compteur\(22) & (\inst|Add0~47\ $ (GND))) # (!\inst|compteur\(22) & (!\inst|Add0~47\ & VCC))
-- \inst|Add0~49\ = CARRY((\inst|compteur\(22) & !\inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(22),
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: LCCOMB_X37_Y12_N18
\inst|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~78_combout\ = (\inst|Add0~48_combout\ & ((\inst|compteur\(31)) # ((\inst|Equal0~10_combout\ & \inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~10_combout\,
	datab => \inst|compteur\(31),
	datac => \inst|Add0~48_combout\,
	datad => \inst|LessThan0~5_combout\,
	combout => \inst|Add0~78_combout\);

-- Location: FF_X37_Y12_N19
\inst|compteur[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~78_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(22));

-- Location: LCCOMB_X37_Y9_N14
\inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = (\inst|compteur\(23) & (!\inst|Add0~49\)) # (!\inst|compteur\(23) & ((\inst|Add0~49\) # (GND)))
-- \inst|Add0~51\ = CARRY((!\inst|Add0~49\) # (!\inst|compteur\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(23),
	datad => VCC,
	cin => \inst|Add0~49\,
	combout => \inst|Add0~50_combout\,
	cout => \inst|Add0~51\);

-- Location: LCCOMB_X37_Y12_N26
\inst|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~72_combout\ = (\inst|Add0~50_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~5_combout\,
	datab => \inst|compteur\(31),
	datac => \inst|Equal0~10_combout\,
	datad => \inst|Add0~50_combout\,
	combout => \inst|Add0~72_combout\);

-- Location: FF_X37_Y12_N27
\inst|compteur[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~72_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(23));

-- Location: LCCOMB_X37_Y9_N16
\inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~52_combout\ = (\inst|compteur\(24) & (\inst|Add0~51\ $ (GND))) # (!\inst|compteur\(24) & (!\inst|Add0~51\ & VCC))
-- \inst|Add0~53\ = CARRY((\inst|compteur\(24) & !\inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(24),
	datad => VCC,
	cin => \inst|Add0~51\,
	combout => \inst|Add0~52_combout\,
	cout => \inst|Add0~53\);

-- Location: LCCOMB_X37_Y12_N20
\inst|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~71_combout\ = (\inst|Add0~52_combout\ & ((\inst|compteur\(31)) # ((\inst|Equal0~10_combout\ & \inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~10_combout\,
	datab => \inst|compteur\(31),
	datac => \inst|Add0~52_combout\,
	datad => \inst|LessThan0~5_combout\,
	combout => \inst|Add0~71_combout\);

-- Location: FF_X37_Y12_N21
\inst|compteur[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~71_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(24));

-- Location: LCCOMB_X37_Y9_N18
\inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~54_combout\ = (\inst|compteur\(25) & (!\inst|Add0~53\)) # (!\inst|compteur\(25) & ((\inst|Add0~53\) # (GND)))
-- \inst|Add0~55\ = CARRY((!\inst|Add0~53\) # (!\inst|compteur\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(25),
	datad => VCC,
	cin => \inst|Add0~53\,
	combout => \inst|Add0~54_combout\,
	cout => \inst|Add0~55\);

-- Location: LCCOMB_X37_Y12_N10
\inst|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~70_combout\ = (\inst|Add0~54_combout\ & ((\inst|compteur\(31)) # ((\inst|Equal0~10_combout\ & \inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~10_combout\,
	datab => \inst|compteur\(31),
	datac => \inst|LessThan0~5_combout\,
	datad => \inst|Add0~54_combout\,
	combout => \inst|Add0~70_combout\);

-- Location: FF_X37_Y12_N11
\inst|compteur[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~70_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(25));

-- Location: LCCOMB_X37_Y9_N20
\inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~56_combout\ = (\inst|compteur\(26) & (\inst|Add0~55\ $ (GND))) # (!\inst|compteur\(26) & (!\inst|Add0~55\ & VCC))
-- \inst|Add0~57\ = CARRY((\inst|compteur\(26) & !\inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(26),
	datad => VCC,
	cin => \inst|Add0~55\,
	combout => \inst|Add0~56_combout\,
	cout => \inst|Add0~57\);

-- Location: LCCOMB_X37_Y12_N0
\inst|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~69_combout\ = (\inst|Add0~56_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~5_combout\,
	datab => \inst|compteur\(31),
	datac => \inst|Equal0~10_combout\,
	datad => \inst|Add0~56_combout\,
	combout => \inst|Add0~69_combout\);

-- Location: FF_X37_Y12_N1
\inst|compteur[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~69_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(26));

-- Location: LCCOMB_X37_Y12_N28
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|compteur\(25) & (!\inst|compteur\(26) & (!\inst|compteur\(23) & !\inst|compteur\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(25),
	datab => \inst|compteur\(26),
	datac => \inst|compteur\(23),
	datad => \inst|compteur\(24),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y9_N22
\inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~58_combout\ = (\inst|compteur\(27) & (!\inst|Add0~57\)) # (!\inst|compteur\(27) & ((\inst|Add0~57\) # (GND)))
-- \inst|Add0~59\ = CARRY((!\inst|Add0~57\) # (!\inst|compteur\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(27),
	datad => VCC,
	cin => \inst|Add0~57\,
	combout => \inst|Add0~58_combout\,
	cout => \inst|Add0~59\);

-- Location: LCCOMB_X38_Y9_N22
\inst|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~68_combout\ = (\inst|Add0~58_combout\ & ((\inst|compteur\(31)) # ((\inst|Equal0~10_combout\ & \inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~10_combout\,
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|compteur\(31),
	datad => \inst|Add0~58_combout\,
	combout => \inst|Add0~68_combout\);

-- Location: FF_X38_Y9_N23
\inst|compteur[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~68_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(27));

-- Location: LCCOMB_X37_Y9_N24
\inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~60_combout\ = (\inst|compteur\(28) & (\inst|Add0~59\ $ (GND))) # (!\inst|compteur\(28) & (!\inst|Add0~59\ & VCC))
-- \inst|Add0~61\ = CARRY((\inst|compteur\(28) & !\inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(28),
	datad => VCC,
	cin => \inst|Add0~59\,
	combout => \inst|Add0~60_combout\,
	cout => \inst|Add0~61\);

-- Location: LCCOMB_X38_Y9_N28
\inst|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~67_combout\ = (\inst|Add0~60_combout\ & ((\inst|compteur\(31)) # ((\inst|Equal0~10_combout\ & \inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~10_combout\,
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|compteur\(31),
	datad => \inst|Add0~60_combout\,
	combout => \inst|Add0~67_combout\);

-- Location: FF_X38_Y9_N29
\inst|compteur[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~67_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(28));

-- Location: LCCOMB_X37_Y9_N26
\inst|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~62_combout\ = (\inst|compteur\(29) & (!\inst|Add0~61\)) # (!\inst|compteur\(29) & ((\inst|Add0~61\) # (GND)))
-- \inst|Add0~63\ = CARRY((!\inst|Add0~61\) # (!\inst|compteur\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(29),
	datad => VCC,
	cin => \inst|Add0~61\,
	combout => \inst|Add0~62_combout\,
	cout => \inst|Add0~63\);

-- Location: LCCOMB_X38_Y9_N30
\inst|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~66_combout\ = (\inst|Add0~62_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(31),
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|Add0~62_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Add0~66_combout\);

-- Location: FF_X38_Y9_N31
\inst|compteur[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~66_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(29));

-- Location: LCCOMB_X37_Y9_N28
\inst|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~64_combout\ = (\inst|compteur\(30) & (\inst|Add0~63\ $ (GND))) # (!\inst|compteur\(30) & (!\inst|Add0~63\ & VCC))
-- \inst|Add0~65\ = CARRY((\inst|compteur\(30) & !\inst|Add0~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(30),
	datad => VCC,
	cin => \inst|Add0~63\,
	combout => \inst|Add0~64_combout\,
	cout => \inst|Add0~65\);

-- Location: LCCOMB_X38_Y9_N20
\inst|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~98_combout\ = (\inst|Add0~64_combout\ & ((\inst|compteur\(31)) # ((\inst|Equal0~10_combout\ & \inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~10_combout\,
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|compteur\(31),
	datad => \inst|Add0~64_combout\,
	combout => \inst|Add0~98_combout\);

-- Location: FF_X38_Y9_N21
\inst|compteur[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~98_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(30));

-- Location: LCCOMB_X38_Y9_N16
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|compteur\(27) & (!\inst|compteur\(30) & (!\inst|compteur\(29) & !\inst|compteur\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(27),
	datab => \inst|compteur\(30),
	datac => \inst|compteur\(29),
	datad => \inst|compteur\(28),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y12_N8
\inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~10_combout\ = (!\inst|compteur\(22) & (\inst|Equal0~1_combout\ & \inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(22),
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~10_combout\);

-- Location: LCCOMB_X37_Y9_N30
\inst|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~73_combout\ = \inst|Add0~65\ $ (\inst|compteur\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|compteur\(31),
	cin => \inst|Add0~65\,
	combout => \inst|Add0~73_combout\);

-- Location: LCCOMB_X38_Y9_N26
\inst|Add0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~99_combout\ = (\inst|Add0~73_combout\ & ((\inst|compteur\(31)) # ((\inst|Equal0~10_combout\ & \inst|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~10_combout\,
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|compteur\(31),
	datad => \inst|Add0~73_combout\,
	combout => \inst|Add0~99_combout\);

-- Location: FF_X38_Y9_N27
\inst|compteur[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~99_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(31));

-- Location: LCCOMB_X38_Y10_N12
\inst|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~91_combout\ = (\inst|Add0~20_combout\ & ((\inst|compteur\(31)) # ((\inst|LessThan0~5_combout\ & \inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(31),
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|Add0~20_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Add0~91_combout\);

-- Location: FF_X38_Y10_N13
\inst|compteur[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|Add0~91_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|compteur\(8));

-- Location: LCCOMB_X38_Y10_N14
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (!\inst|compteur\(8) & (!\inst|compteur\(9) & (!\inst|compteur\(13) & !\inst|compteur\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(8),
	datab => \inst|compteur\(9),
	datac => \inst|compteur\(13),
	datad => \inst|compteur\(17),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X38_Y10_N24
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (!\inst|compteur\(5) & (!\inst|compteur\(6) & (!\inst|compteur\(18) & !\inst|compteur\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(5),
	datab => \inst|compteur\(6),
	datac => \inst|compteur\(18),
	datad => \inst|compteur\(21),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X39_Y10_N22
\inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (\inst|Equal0~6_combout\ & (\inst|Equal0~4_combout\ & \inst|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~6_combout\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|Equal0~5_combout\,
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X36_Y10_N10
\inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = (!\inst|compteur\(4) & (!\inst|compteur\(2) & (!\inst|compteur\(3) & !\inst|compteur\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(4),
	datab => \inst|compteur\(2),
	datac => \inst|compteur\(3),
	datad => \inst|compteur\(7),
	combout => \inst|Equal0~8_combout\);

-- Location: LCCOMB_X36_Y10_N24
\inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~9_combout\ = (!\inst|compteur\(1) & (!\inst|compteur\(0) & \inst|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|compteur\(1),
	datac => \inst|compteur\(0),
	datad => \inst|Equal0~8_combout\,
	combout => \inst|Equal0~9_combout\);

-- Location: LCCOMB_X37_Y12_N4
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|compteur\(12) & (!\inst|compteur\(11) & (!\inst|compteur\(10) & !\inst|compteur\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|compteur\(12),
	datab => \inst|compteur\(11),
	datac => \inst|compteur\(10),
	datad => \inst|compteur\(31),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y12_N16
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|Equal0~1_combout\ & (!\inst|compteur\(22) & (\inst|Equal0~2_combout\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|compteur\(22),
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y10_N28
\inst|clk_1prime~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_1prime~0_combout\ = \inst|clk_1prime~q\ $ (((\inst|Equal0~7_combout\ & (\inst|Equal0~9_combout\ & \inst|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~7_combout\,
	datab => \inst|Equal0~9_combout\,
	datac => \inst|Equal0~3_combout\,
	datad => \inst|clk_1prime~q\,
	combout => \inst|clk_1prime~0_combout\);

-- Location: LCCOMB_X39_Y10_N30
\inst|clk_1prime~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_1prime~feeder_combout\ = \inst|clk_1prime~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_1prime~0_combout\,
	combout => \inst|clk_1prime~feeder_combout\);

-- Location: FF_X39_Y10_N31
\inst|clk_1prime\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \inst|clk_1prime~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_1prime~q\);

-- Location: CLKCTRL_G6
\inst|clk_1prime~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clk_1prime~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clk_1prime~clkctrl_outclk\);

-- Location: IOIBUF_X1_Y34_N8
\freq_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_freq_in,
	o => \freq_in~input_o\);

-- Location: LCCOMB_X28_Y28_N16
\inst1|cpt1[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt1[0]~8_combout\ = \inst1|cpt1\(0) $ (VCC)
-- \inst1|cpt1[0]~9\ = CARRY(\inst1|cpt1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cpt1\(0),
	datad => VCC,
	combout => \inst1|cpt1[0]~8_combout\,
	cout => \inst1|cpt1[0]~9\);

-- Location: FF_X28_Y28_N17
\inst1|cpt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|cpt1[0]~8_combout\,
	clrn => \reset~input_o\,
	sclr => \inst|ALT_INV_clk_1prime~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt1\(0));

-- Location: LCCOMB_X28_Y28_N18
\inst1|cpt1[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt1[1]~10_combout\ = (\inst1|cpt1\(1) & (!\inst1|cpt1[0]~9\)) # (!\inst1|cpt1\(1) & ((\inst1|cpt1[0]~9\) # (GND)))
-- \inst1|cpt1[1]~11\ = CARRY((!\inst1|cpt1[0]~9\) # (!\inst1|cpt1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cpt1\(1),
	datad => VCC,
	cin => \inst1|cpt1[0]~9\,
	combout => \inst1|cpt1[1]~10_combout\,
	cout => \inst1|cpt1[1]~11\);

-- Location: FF_X28_Y28_N19
\inst1|cpt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|cpt1[1]~10_combout\,
	clrn => \reset~input_o\,
	sclr => \inst|ALT_INV_clk_1prime~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt1\(1));

-- Location: LCCOMB_X28_Y28_N20
\inst1|cpt1[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt1[2]~12_combout\ = (\inst1|cpt1\(2) & (\inst1|cpt1[1]~11\ $ (GND))) # (!\inst1|cpt1\(2) & (!\inst1|cpt1[1]~11\ & VCC))
-- \inst1|cpt1[2]~13\ = CARRY((\inst1|cpt1\(2) & !\inst1|cpt1[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cpt1\(2),
	datad => VCC,
	cin => \inst1|cpt1[1]~11\,
	combout => \inst1|cpt1[2]~12_combout\,
	cout => \inst1|cpt1[2]~13\);

-- Location: FF_X28_Y28_N21
\inst1|cpt1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|cpt1[2]~12_combout\,
	clrn => \reset~input_o\,
	sclr => \inst|ALT_INV_clk_1prime~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt1\(2));

-- Location: LCCOMB_X28_Y28_N22
\inst1|cpt1[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt1[3]~14_combout\ = (\inst1|cpt1\(3) & (!\inst1|cpt1[2]~13\)) # (!\inst1|cpt1\(3) & ((\inst1|cpt1[2]~13\) # (GND)))
-- \inst1|cpt1[3]~15\ = CARRY((!\inst1|cpt1[2]~13\) # (!\inst1|cpt1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpt1\(3),
	datad => VCC,
	cin => \inst1|cpt1[2]~13\,
	combout => \inst1|cpt1[3]~14_combout\,
	cout => \inst1|cpt1[3]~15\);

-- Location: FF_X28_Y28_N23
\inst1|cpt1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|cpt1[3]~14_combout\,
	clrn => \reset~input_o\,
	sclr => \inst|ALT_INV_clk_1prime~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt1\(3));

-- Location: LCCOMB_X28_Y28_N24
\inst1|cpt1[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt1[4]~16_combout\ = (\inst1|cpt1\(4) & (\inst1|cpt1[3]~15\ $ (GND))) # (!\inst1|cpt1\(4) & (!\inst1|cpt1[3]~15\ & VCC))
-- \inst1|cpt1[4]~17\ = CARRY((\inst1|cpt1\(4) & !\inst1|cpt1[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cpt1\(4),
	datad => VCC,
	cin => \inst1|cpt1[3]~15\,
	combout => \inst1|cpt1[4]~16_combout\,
	cout => \inst1|cpt1[4]~17\);

-- Location: FF_X28_Y28_N25
\inst1|cpt1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|cpt1[4]~16_combout\,
	clrn => \reset~input_o\,
	sclr => \inst|ALT_INV_clk_1prime~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt1\(4));

-- Location: LCCOMB_X28_Y28_N26
\inst1|cpt1[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt1[5]~18_combout\ = (\inst1|cpt1\(5) & (!\inst1|cpt1[4]~17\)) # (!\inst1|cpt1\(5) & ((\inst1|cpt1[4]~17\) # (GND)))
-- \inst1|cpt1[5]~19\ = CARRY((!\inst1|cpt1[4]~17\) # (!\inst1|cpt1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpt1\(5),
	datad => VCC,
	cin => \inst1|cpt1[4]~17\,
	combout => \inst1|cpt1[5]~18_combout\,
	cout => \inst1|cpt1[5]~19\);

-- Location: FF_X28_Y28_N27
\inst1|cpt1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|cpt1[5]~18_combout\,
	clrn => \reset~input_o\,
	sclr => \inst|ALT_INV_clk_1prime~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt1\(5));

-- Location: LCCOMB_X28_Y28_N28
\inst1|cpt1[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt1[6]~20_combout\ = (\inst1|cpt1\(6) & (\inst1|cpt1[5]~19\ $ (GND))) # (!\inst1|cpt1\(6) & (!\inst1|cpt1[5]~19\ & VCC))
-- \inst1|cpt1[6]~21\ = CARRY((\inst1|cpt1\(6) & !\inst1|cpt1[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cpt1\(6),
	datad => VCC,
	cin => \inst1|cpt1[5]~19\,
	combout => \inst1|cpt1[6]~20_combout\,
	cout => \inst1|cpt1[6]~21\);

-- Location: FF_X28_Y28_N29
\inst1|cpt1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|cpt1[6]~20_combout\,
	clrn => \reset~input_o\,
	sclr => \inst|ALT_INV_clk_1prime~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt1\(6));

-- Location: LCCOMB_X28_Y28_N30
\inst1|cpt1[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt1[7]~22_combout\ = \inst1|cpt1[6]~21\ $ (\inst1|cpt1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cpt1\(7),
	cin => \inst1|cpt1[6]~21\,
	combout => \inst1|cpt1[7]~22_combout\);

-- Location: FF_X28_Y28_N31
\inst1|cpt1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|cpt1[7]~22_combout\,
	clrn => \reset~input_o\,
	sclr => \inst|ALT_INV_clk_1prime~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt1\(7));

-- Location: LCCOMB_X31_Y30_N26
\inst1|s_cpt1[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cpt1[7]~feeder_combout\ = \inst1|cpt1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cpt1\(7),
	combout => \inst1|s_cpt1[7]~feeder_combout\);

-- Location: LCCOMB_X31_Y30_N24
\inst1|s_cpt1[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cpt1[7]~0_combout\ = (\reset~input_o\ & !\inst|clk_1prime~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \inst|clk_1prime~q\,
	combout => \inst1|s_cpt1[7]~0_combout\);

-- Location: FF_X31_Y30_N27
\inst1|s_cpt1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|s_cpt1[7]~feeder_combout\,
	ena => \inst1|s_cpt1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cpt1\(7));

-- Location: LCCOMB_X29_Y28_N6
\inst1|cpt2[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt2[0]~8_combout\ = \inst1|cpt2\(0) $ (VCC)
-- \inst1|cpt2[0]~9\ = CARRY(\inst1|cpt2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpt2\(0),
	datad => VCC,
	combout => \inst1|cpt2[0]~8_combout\,
	cout => \inst1|cpt2[0]~9\);

-- Location: FF_X29_Y28_N7
\inst1|cpt2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|cpt2[0]~8_combout\,
	clrn => \reset~input_o\,
	sclr => \inst|clk_1prime~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt2\(0));

-- Location: LCCOMB_X29_Y28_N8
\inst1|cpt2[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt2[1]~10_combout\ = (\inst1|cpt2\(1) & (!\inst1|cpt2[0]~9\)) # (!\inst1|cpt2\(1) & ((\inst1|cpt2[0]~9\) # (GND)))
-- \inst1|cpt2[1]~11\ = CARRY((!\inst1|cpt2[0]~9\) # (!\inst1|cpt2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cpt2\(1),
	datad => VCC,
	cin => \inst1|cpt2[0]~9\,
	combout => \inst1|cpt2[1]~10_combout\,
	cout => \inst1|cpt2[1]~11\);

-- Location: FF_X29_Y28_N9
\inst1|cpt2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|cpt2[1]~10_combout\,
	clrn => \reset~input_o\,
	sclr => \inst|clk_1prime~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt2\(1));

-- Location: LCCOMB_X29_Y28_N10
\inst1|cpt2[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt2[2]~12_combout\ = (\inst1|cpt2\(2) & (\inst1|cpt2[1]~11\ $ (GND))) # (!\inst1|cpt2\(2) & (!\inst1|cpt2[1]~11\ & VCC))
-- \inst1|cpt2[2]~13\ = CARRY((\inst1|cpt2\(2) & !\inst1|cpt2[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpt2\(2),
	datad => VCC,
	cin => \inst1|cpt2[1]~11\,
	combout => \inst1|cpt2[2]~12_combout\,
	cout => \inst1|cpt2[2]~13\);

-- Location: FF_X29_Y28_N11
\inst1|cpt2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|cpt2[2]~12_combout\,
	clrn => \reset~input_o\,
	sclr => \inst|clk_1prime~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt2\(2));

-- Location: LCCOMB_X29_Y28_N12
\inst1|cpt2[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt2[3]~14_combout\ = (\inst1|cpt2\(3) & (!\inst1|cpt2[2]~13\)) # (!\inst1|cpt2\(3) & ((\inst1|cpt2[2]~13\) # (GND)))
-- \inst1|cpt2[3]~15\ = CARRY((!\inst1|cpt2[2]~13\) # (!\inst1|cpt2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpt2\(3),
	datad => VCC,
	cin => \inst1|cpt2[2]~13\,
	combout => \inst1|cpt2[3]~14_combout\,
	cout => \inst1|cpt2[3]~15\);

-- Location: FF_X29_Y28_N13
\inst1|cpt2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|cpt2[3]~14_combout\,
	clrn => \reset~input_o\,
	sclr => \inst|clk_1prime~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt2\(3));

-- Location: LCCOMB_X29_Y28_N14
\inst1|cpt2[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt2[4]~16_combout\ = (\inst1|cpt2\(4) & (\inst1|cpt2[3]~15\ $ (GND))) # (!\inst1|cpt2\(4) & (!\inst1|cpt2[3]~15\ & VCC))
-- \inst1|cpt2[4]~17\ = CARRY((\inst1|cpt2\(4) & !\inst1|cpt2[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cpt2\(4),
	datad => VCC,
	cin => \inst1|cpt2[3]~15\,
	combout => \inst1|cpt2[4]~16_combout\,
	cout => \inst1|cpt2[4]~17\);

-- Location: FF_X29_Y28_N15
\inst1|cpt2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|cpt2[4]~16_combout\,
	clrn => \reset~input_o\,
	sclr => \inst|clk_1prime~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt2\(4));

-- Location: LCCOMB_X29_Y28_N16
\inst1|cpt2[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt2[5]~18_combout\ = (\inst1|cpt2\(5) & (!\inst1|cpt2[4]~17\)) # (!\inst1|cpt2\(5) & ((\inst1|cpt2[4]~17\) # (GND)))
-- \inst1|cpt2[5]~19\ = CARRY((!\inst1|cpt2[4]~17\) # (!\inst1|cpt2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cpt2\(5),
	datad => VCC,
	cin => \inst1|cpt2[4]~17\,
	combout => \inst1|cpt2[5]~18_combout\,
	cout => \inst1|cpt2[5]~19\);

-- Location: FF_X29_Y28_N17
\inst1|cpt2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|cpt2[5]~18_combout\,
	clrn => \reset~input_o\,
	sclr => \inst|clk_1prime~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt2\(5));

-- Location: LCCOMB_X29_Y28_N18
\inst1|cpt2[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt2[6]~20_combout\ = (\inst1|cpt2\(6) & (\inst1|cpt2[5]~19\ $ (GND))) # (!\inst1|cpt2\(6) & (!\inst1|cpt2[5]~19\ & VCC))
-- \inst1|cpt2[6]~21\ = CARRY((\inst1|cpt2\(6) & !\inst1|cpt2[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cpt2\(6),
	datad => VCC,
	cin => \inst1|cpt2[5]~19\,
	combout => \inst1|cpt2[6]~20_combout\,
	cout => \inst1|cpt2[6]~21\);

-- Location: FF_X29_Y28_N19
\inst1|cpt2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|cpt2[6]~20_combout\,
	clrn => \reset~input_o\,
	sclr => \inst|clk_1prime~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt2\(6));

-- Location: LCCOMB_X29_Y28_N20
\inst1|cpt2[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt2[7]~22_combout\ = \inst1|cpt2[6]~21\ $ (\inst1|cpt2\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cpt2\(7),
	cin => \inst1|cpt2[6]~21\,
	combout => \inst1|cpt2[7]~22_combout\);

-- Location: FF_X29_Y28_N21
\inst1|cpt2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|cpt2[7]~22_combout\,
	clrn => \reset~input_o\,
	sclr => \inst|clk_1prime~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt2\(7));

-- Location: LCCOMB_X32_Y30_N12
\inst1|s_cpt2[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cpt2[7]~feeder_combout\ = \inst1|cpt2\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cpt2\(7),
	combout => \inst1|s_cpt2[7]~feeder_combout\);

-- Location: LCCOMB_X32_Y30_N20
\inst1|s_cpt2[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cpt2[7]~0_combout\ = (\inst|clk_1prime~q\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_1prime~q\,
	datad => \reset~input_o\,
	combout => \inst1|s_cpt2[7]~0_combout\);

-- Location: FF_X32_Y30_N13
\inst1|s_cpt2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|s_cpt2[7]~feeder_combout\,
	ena => \inst1|s_cpt2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cpt2\(7));

-- Location: LCCOMB_X32_Y30_N10
\inst1|s_cpt2[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cpt2[6]~feeder_combout\ = \inst1|cpt2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cpt2\(6),
	combout => \inst1|s_cpt2[6]~feeder_combout\);

-- Location: FF_X32_Y30_N11
\inst1|s_cpt2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|s_cpt2[6]~feeder_combout\,
	ena => \inst1|s_cpt2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cpt2\(6));

-- Location: LCCOMB_X31_Y30_N28
\inst1|s_cpt1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cpt1[6]~feeder_combout\ = \inst1|cpt1\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cpt1\(6),
	combout => \inst1|s_cpt1[6]~feeder_combout\);

-- Location: FF_X31_Y30_N29
\inst1|s_cpt1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|s_cpt1[6]~feeder_combout\,
	ena => \inst1|s_cpt1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cpt1\(6));

-- Location: LCCOMB_X31_Y30_N22
\inst1|s_cpt1[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cpt1[5]~feeder_combout\ = \inst1|cpt1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cpt1\(5),
	combout => \inst1|s_cpt1[5]~feeder_combout\);

-- Location: FF_X31_Y30_N23
\inst1|s_cpt1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|s_cpt1[5]~feeder_combout\,
	ena => \inst1|s_cpt1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cpt1\(5));

-- Location: LCCOMB_X32_Y30_N24
\inst1|s_cpt2[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cpt2[5]~feeder_combout\ = \inst1|cpt2\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cpt2\(5),
	combout => \inst1|s_cpt2[5]~feeder_combout\);

-- Location: FF_X32_Y30_N25
\inst1|s_cpt2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|s_cpt2[5]~feeder_combout\,
	ena => \inst1|s_cpt2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cpt2\(5));

-- Location: LCCOMB_X31_Y30_N0
\inst1|s_cpt1[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cpt1[4]~feeder_combout\ = \inst1|cpt1\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cpt1\(4),
	combout => \inst1|s_cpt1[4]~feeder_combout\);

-- Location: FF_X31_Y30_N1
\inst1|s_cpt1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|s_cpt1[4]~feeder_combout\,
	ena => \inst1|s_cpt1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cpt1\(4));

-- Location: LCCOMB_X32_Y30_N2
\inst1|s_cpt2[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cpt2[4]~feeder_combout\ = \inst1|cpt2\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cpt2\(4),
	combout => \inst1|s_cpt2[4]~feeder_combout\);

-- Location: FF_X32_Y30_N3
\inst1|s_cpt2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|s_cpt2[4]~feeder_combout\,
	ena => \inst1|s_cpt2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cpt2\(4));

-- Location: LCCOMB_X32_Y30_N4
\inst1|s_cpt2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cpt2[3]~feeder_combout\ = \inst1|cpt2\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cpt2\(3),
	combout => \inst1|s_cpt2[3]~feeder_combout\);

-- Location: FF_X32_Y30_N5
\inst1|s_cpt2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|s_cpt2[3]~feeder_combout\,
	ena => \inst1|s_cpt2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cpt2\(3));

-- Location: LCCOMB_X31_Y30_N30
\inst1|s_cpt1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cpt1[3]~feeder_combout\ = \inst1|cpt1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cpt1\(3),
	combout => \inst1|s_cpt1[3]~feeder_combout\);

-- Location: FF_X31_Y30_N31
\inst1|s_cpt1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|s_cpt1[3]~feeder_combout\,
	ena => \inst1|s_cpt1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cpt1\(3));

-- Location: FF_X31_Y30_N11
\inst1|s_cpt1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	asdata => \inst1|cpt1\(2),
	sload => VCC,
	ena => \inst1|s_cpt1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cpt1\(2));

-- Location: LCCOMB_X32_Y30_N22
\inst1|s_cpt2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cpt2[2]~feeder_combout\ = \inst1|cpt2\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cpt2\(2),
	combout => \inst1|s_cpt2[2]~feeder_combout\);

-- Location: FF_X32_Y30_N23
\inst1|s_cpt2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|s_cpt2[2]~feeder_combout\,
	ena => \inst1|s_cpt2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cpt2\(2));

-- Location: LCCOMB_X32_Y30_N0
\inst1|s_cpt2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cpt2[1]~feeder_combout\ = \inst1|cpt2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cpt2\(1),
	combout => \inst1|s_cpt2[1]~feeder_combout\);

-- Location: FF_X32_Y30_N1
\inst1|s_cpt2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|s_cpt2[1]~feeder_combout\,
	ena => \inst1|s_cpt2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cpt2\(1));

-- Location: FF_X31_Y30_N9
\inst1|s_cpt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	asdata => \inst1|cpt1\(1),
	sload => VCC,
	ena => \inst1|s_cpt1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cpt1\(1));

-- Location: FF_X31_Y30_N7
\inst1|s_cpt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	asdata => \inst1|cpt1\(0),
	sload => VCC,
	ena => \inst1|s_cpt1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cpt1\(0));

-- Location: LCCOMB_X32_Y30_N30
\inst1|s_cpt2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_cpt2[0]~feeder_combout\ = \inst1|cpt2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cpt2\(0),
	combout => \inst1|s_cpt2[0]~feeder_combout\);

-- Location: FF_X32_Y30_N31
\inst1|s_cpt2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_in~input_o\,
	d => \inst1|s_cpt2[0]~feeder_combout\,
	ena => \inst1|s_cpt2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_cpt2\(0));

-- Location: LCCOMB_X31_Y30_N6
\inst1|cpt3[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt3[0]~8_combout\ = (\inst1|s_cpt1\(0) & (\inst1|s_cpt2\(0) $ (VCC))) # (!\inst1|s_cpt1\(0) & (\inst1|s_cpt2\(0) & VCC))
-- \inst1|cpt3[0]~9\ = CARRY((\inst1|s_cpt1\(0) & \inst1|s_cpt2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_cpt1\(0),
	datab => \inst1|s_cpt2\(0),
	datad => VCC,
	combout => \inst1|cpt3[0]~8_combout\,
	cout => \inst1|cpt3[0]~9\);

-- Location: LCCOMB_X31_Y30_N8
\inst1|cpt3[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt3[1]~10_combout\ = (\inst1|s_cpt2\(1) & ((\inst1|s_cpt1\(1) & (\inst1|cpt3[0]~9\ & VCC)) # (!\inst1|s_cpt1\(1) & (!\inst1|cpt3[0]~9\)))) # (!\inst1|s_cpt2\(1) & ((\inst1|s_cpt1\(1) & (!\inst1|cpt3[0]~9\)) # (!\inst1|s_cpt1\(1) & 
-- ((\inst1|cpt3[0]~9\) # (GND)))))
-- \inst1|cpt3[1]~11\ = CARRY((\inst1|s_cpt2\(1) & (!\inst1|s_cpt1\(1) & !\inst1|cpt3[0]~9\)) # (!\inst1|s_cpt2\(1) & ((!\inst1|cpt3[0]~9\) # (!\inst1|s_cpt1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_cpt2\(1),
	datab => \inst1|s_cpt1\(1),
	datad => VCC,
	cin => \inst1|cpt3[0]~9\,
	combout => \inst1|cpt3[1]~10_combout\,
	cout => \inst1|cpt3[1]~11\);

-- Location: LCCOMB_X31_Y30_N10
\inst1|cpt3[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt3[2]~12_combout\ = ((\inst1|s_cpt1\(2) $ (\inst1|s_cpt2\(2) $ (!\inst1|cpt3[1]~11\)))) # (GND)
-- \inst1|cpt3[2]~13\ = CARRY((\inst1|s_cpt1\(2) & ((\inst1|s_cpt2\(2)) # (!\inst1|cpt3[1]~11\))) # (!\inst1|s_cpt1\(2) & (\inst1|s_cpt2\(2) & !\inst1|cpt3[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_cpt1\(2),
	datab => \inst1|s_cpt2\(2),
	datad => VCC,
	cin => \inst1|cpt3[1]~11\,
	combout => \inst1|cpt3[2]~12_combout\,
	cout => \inst1|cpt3[2]~13\);

-- Location: LCCOMB_X31_Y30_N12
\inst1|cpt3[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt3[3]~14_combout\ = (\inst1|s_cpt2\(3) & ((\inst1|s_cpt1\(3) & (\inst1|cpt3[2]~13\ & VCC)) # (!\inst1|s_cpt1\(3) & (!\inst1|cpt3[2]~13\)))) # (!\inst1|s_cpt2\(3) & ((\inst1|s_cpt1\(3) & (!\inst1|cpt3[2]~13\)) # (!\inst1|s_cpt1\(3) & 
-- ((\inst1|cpt3[2]~13\) # (GND)))))
-- \inst1|cpt3[3]~15\ = CARRY((\inst1|s_cpt2\(3) & (!\inst1|s_cpt1\(3) & !\inst1|cpt3[2]~13\)) # (!\inst1|s_cpt2\(3) & ((!\inst1|cpt3[2]~13\) # (!\inst1|s_cpt1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_cpt2\(3),
	datab => \inst1|s_cpt1\(3),
	datad => VCC,
	cin => \inst1|cpt3[2]~13\,
	combout => \inst1|cpt3[3]~14_combout\,
	cout => \inst1|cpt3[3]~15\);

-- Location: LCCOMB_X31_Y30_N14
\inst1|cpt3[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt3[4]~16_combout\ = ((\inst1|s_cpt1\(4) $ (\inst1|s_cpt2\(4) $ (!\inst1|cpt3[3]~15\)))) # (GND)
-- \inst1|cpt3[4]~17\ = CARRY((\inst1|s_cpt1\(4) & ((\inst1|s_cpt2\(4)) # (!\inst1|cpt3[3]~15\))) # (!\inst1|s_cpt1\(4) & (\inst1|s_cpt2\(4) & !\inst1|cpt3[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_cpt1\(4),
	datab => \inst1|s_cpt2\(4),
	datad => VCC,
	cin => \inst1|cpt3[3]~15\,
	combout => \inst1|cpt3[4]~16_combout\,
	cout => \inst1|cpt3[4]~17\);

-- Location: LCCOMB_X31_Y30_N16
\inst1|cpt3[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt3[5]~18_combout\ = (\inst1|s_cpt1\(5) & ((\inst1|s_cpt2\(5) & (\inst1|cpt3[4]~17\ & VCC)) # (!\inst1|s_cpt2\(5) & (!\inst1|cpt3[4]~17\)))) # (!\inst1|s_cpt1\(5) & ((\inst1|s_cpt2\(5) & (!\inst1|cpt3[4]~17\)) # (!\inst1|s_cpt2\(5) & 
-- ((\inst1|cpt3[4]~17\) # (GND)))))
-- \inst1|cpt3[5]~19\ = CARRY((\inst1|s_cpt1\(5) & (!\inst1|s_cpt2\(5) & !\inst1|cpt3[4]~17\)) # (!\inst1|s_cpt1\(5) & ((!\inst1|cpt3[4]~17\) # (!\inst1|s_cpt2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_cpt1\(5),
	datab => \inst1|s_cpt2\(5),
	datad => VCC,
	cin => \inst1|cpt3[4]~17\,
	combout => \inst1|cpt3[5]~18_combout\,
	cout => \inst1|cpt3[5]~19\);

-- Location: LCCOMB_X31_Y30_N18
\inst1|cpt3[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt3[6]~20_combout\ = ((\inst1|s_cpt2\(6) $ (\inst1|s_cpt1\(6) $ (!\inst1|cpt3[5]~19\)))) # (GND)
-- \inst1|cpt3[6]~21\ = CARRY((\inst1|s_cpt2\(6) & ((\inst1|s_cpt1\(6)) # (!\inst1|cpt3[5]~19\))) # (!\inst1|s_cpt2\(6) & (\inst1|s_cpt1\(6) & !\inst1|cpt3[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_cpt2\(6),
	datab => \inst1|s_cpt1\(6),
	datad => VCC,
	cin => \inst1|cpt3[5]~19\,
	combout => \inst1|cpt3[6]~20_combout\,
	cout => \inst1|cpt3[6]~21\);

-- Location: LCCOMB_X31_Y30_N20
\inst1|cpt3[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt3[7]~22_combout\ = \inst1|s_cpt1\(7) $ (\inst1|s_cpt2\(7) $ (\inst1|cpt3[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_cpt1\(7),
	datab => \inst1|s_cpt2\(7),
	cin => \inst1|cpt3[6]~21\,
	combout => \inst1|cpt3[7]~22_combout\);

-- Location: FF_X31_Y30_N21
\inst1|cpt3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_1prime~clkctrl_outclk\,
	d => \inst1|cpt3[7]~22_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt3\(7));

-- Location: FF_X31_Y30_N19
\inst1|cpt3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_1prime~clkctrl_outclk\,
	d => \inst1|cpt3[6]~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt3\(6));

-- Location: FF_X31_Y30_N17
\inst1|cpt3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_1prime~clkctrl_outclk\,
	d => \inst1|cpt3[5]~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt3\(5));

-- Location: FF_X31_Y30_N15
\inst1|cpt3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_1prime~clkctrl_outclk\,
	d => \inst1|cpt3[4]~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt3\(4));

-- Location: FF_X31_Y30_N13
\inst1|cpt3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_1prime~clkctrl_outclk\,
	d => \inst1|cpt3[3]~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt3\(3));

-- Location: FF_X31_Y30_N25
\inst1|cpt3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_1prime~clkctrl_outclk\,
	asdata => \inst1|cpt3[2]~12_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt3\(2));

-- Location: FF_X31_Y30_N3
\inst1|cpt3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_1prime~clkctrl_outclk\,
	asdata => \inst1|cpt3[1]~10_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt3\(1));

-- Location: LCCOMB_X31_Y30_N4
\inst1|cpt3[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cpt3[0]~feeder_combout\ = \inst1|cpt3[0]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cpt3[0]~8_combout\,
	combout => \inst1|cpt3[0]~feeder_combout\);

-- Location: FF_X31_Y30_N5
\inst1|cpt3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_1prime~clkctrl_outclk\,
	d => \inst1|cpt3[0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cpt3\(0));

ww_data_anemometre(7) <= \data_anemometre[7]~output_o\;

ww_data_anemometre(6) <= \data_anemometre[6]~output_o\;

ww_data_anemometre(5) <= \data_anemometre[5]~output_o\;

ww_data_anemometre(4) <= \data_anemometre[4]~output_o\;

ww_data_anemometre(3) <= \data_anemometre[3]~output_o\;

ww_data_anemometre(2) <= \data_anemometre[2]~output_o\;

ww_data_anemometre(1) <= \data_anemometre[1]~output_o\;

ww_data_anemometre(0) <= \data_anemometre[0]~output_o\;
END structure;


