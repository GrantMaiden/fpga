-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "01/27/2014 23:18:54"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test IS
    PORT (
	CLOCK_REF : OUT std_logic;
	CLOCK_50 : IN std_logic;
	LED_LATCH : OUT std_logic;
	LED_DRIVER_RESET : IN std_logic;
	LED_DRIVER_ENABLE : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LED_SDI : OUT std_logic;
	LED_SCLK : OUT std_logic;
	LED_nOE : OUT std_logic;
	LED : OUT std_logic_vector(7 DOWNTO 0)
	);
END test;

-- Design Ports Information
-- CLOCK_REF	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_LATCH	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_DRIVER_RESET	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_DRIVER_ENABLE	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_SDI	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_SCLK	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_nOE	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_REF : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LED_LATCH : std_logic;
SIGNAL ww_LED_DRIVER_RESET : std_logic;
SIGNAL ww_LED_DRIVER_ENABLE : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LED_SDI : std_logic;
SIGNAL ww_LED_SCLK : std_logic;
SIGNAL ww_LED_nOE : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LED_DRIVER_RESET~input_o\ : std_logic;
SIGNAL \LED_DRIVER_ENABLE~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|pos[0]~8_combout\ : std_logic;
SIGNAL \inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|Selector7~0_combout\ : std_logic;
SIGNAL \inst5|sdi_state.state_sdi_clock_setup~q\ : std_logic;
SIGNAL \inst5|sdi_state.state_sdi_clock_high~feeder_combout\ : std_logic;
SIGNAL \inst5|sdi_state.state_sdi_clock_high~q\ : std_logic;
SIGNAL \inst5|sdi_state.state_sdi_clock_low~feeder_combout\ : std_logic;
SIGNAL \inst5|sdi_state.state_sdi_clock_low~q\ : std_logic;
SIGNAL \inst5|Add1~0_combout\ : std_logic;
SIGNAL \inst5|delay_ticks~4_combout\ : std_logic;
SIGNAL \inst5|Selector9~2_combout\ : std_logic;
SIGNAL \inst5|sdi_state.state_sdi_latching~q\ : std_logic;
SIGNAL \inst5|sdi_state.state_sdi_done_latching~q\ : std_logic;
SIGNAL \inst5|Selector4~0_combout\ : std_logic;
SIGNAL \inst5|sdi_state.state_sdi_brightness_delay~q\ : std_logic;
SIGNAL \inst5|Add1~1\ : std_logic;
SIGNAL \inst5|Add1~2_combout\ : std_logic;
SIGNAL \inst5|Add1~3\ : std_logic;
SIGNAL \inst5|Add1~4_combout\ : std_logic;
SIGNAL \inst5|Add1~5\ : std_logic;
SIGNAL \inst5|Add1~6_combout\ : std_logic;
SIGNAL \inst5|Add1~7\ : std_logic;
SIGNAL \inst5|Add1~8_combout\ : std_logic;
SIGNAL \inst5|Add1~9\ : std_logic;
SIGNAL \inst5|Add1~10_combout\ : std_logic;
SIGNAL \inst5|Add1~11\ : std_logic;
SIGNAL \inst5|Add1~12_combout\ : std_logic;
SIGNAL \inst5|delay_ticks~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Add1~13\ : std_logic;
SIGNAL \inst5|Add1~14_combout\ : std_logic;
SIGNAL \inst5|Add1~15\ : std_logic;
SIGNAL \inst5|Add1~16_combout\ : std_logic;
SIGNAL \inst5|delay_ticks~2_combout\ : std_logic;
SIGNAL \inst5|Add1~17\ : std_logic;
SIGNAL \inst5|Add1~18_combout\ : std_logic;
SIGNAL \inst5|Add1~19\ : std_logic;
SIGNAL \inst5|Add1~20_combout\ : std_logic;
SIGNAL \inst5|delay_ticks~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Add1~21\ : std_logic;
SIGNAL \inst5|Add1~22_combout\ : std_logic;
SIGNAL \inst5|delay_ticks~0_combout\ : std_logic;
SIGNAL \inst5|Add1~23\ : std_logic;
SIGNAL \inst5|Add1~24_combout\ : std_logic;
SIGNAL \inst5|Add1~25\ : std_logic;
SIGNAL \inst5|Add1~26_combout\ : std_logic;
SIGNAL \inst5|Add1~27\ : std_logic;
SIGNAL \inst5|Add1~28_combout\ : std_logic;
SIGNAL \inst5|Add1~29\ : std_logic;
SIGNAL \inst5|Add1~30_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|Add1~31\ : std_logic;
SIGNAL \inst5|Add1~32_combout\ : std_logic;
SIGNAL \inst5|delay_ticks~5_combout\ : std_logic;
SIGNAL \inst5|Add1~33\ : std_logic;
SIGNAL \inst5|Add1~34_combout\ : std_logic;
SIGNAL \inst5|delay_ticks~6_combout\ : std_logic;
SIGNAL \inst5|Add1~35\ : std_logic;
SIGNAL \inst5|Add1~36_combout\ : std_logic;
SIGNAL \inst5|Add1~37\ : std_logic;
SIGNAL \inst5|Add1~38_combout\ : std_logic;
SIGNAL \inst5|Equal0~5_combout\ : std_logic;
SIGNAL \inst5|Add1~39\ : std_logic;
SIGNAL \inst5|Add1~40_combout\ : std_logic;
SIGNAL \inst5|Add1~41\ : std_logic;
SIGNAL \inst5|Add1~42_combout\ : std_logic;
SIGNAL \inst5|Add1~43\ : std_logic;
SIGNAL \inst5|Add1~44_combout\ : std_logic;
SIGNAL \inst5|Add1~45\ : std_logic;
SIGNAL \inst5|Add1~46_combout\ : std_logic;
SIGNAL \inst5|Add1~47\ : std_logic;
SIGNAL \inst5|Add1~48_combout\ : std_logic;
SIGNAL \inst5|Add1~49\ : std_logic;
SIGNAL \inst5|Add1~50_combout\ : std_logic;
SIGNAL \inst5|Add1~51\ : std_logic;
SIGNAL \inst5|Add1~52_combout\ : std_logic;
SIGNAL \inst5|Add1~53\ : std_logic;
SIGNAL \inst5|Add1~54_combout\ : std_logic;
SIGNAL \inst5|Add1~55\ : std_logic;
SIGNAL \inst5|Add1~56_combout\ : std_logic;
SIGNAL \inst5|Add1~57\ : std_logic;
SIGNAL \inst5|Add1~58_combout\ : std_logic;
SIGNAL \inst5|Add1~59\ : std_logic;
SIGNAL \inst5|Add1~60_combout\ : std_logic;
SIGNAL \inst5|Add1~61\ : std_logic;
SIGNAL \inst5|Add1~62_combout\ : std_logic;
SIGNAL \inst5|Equal0~8_combout\ : std_logic;
SIGNAL \inst5|Equal0~7_combout\ : std_logic;
SIGNAL \inst5|Equal0~6_combout\ : std_logic;
SIGNAL \inst5|Equal0~9_combout\ : std_logic;
SIGNAL \inst5|Selector0~0_combout\ : std_logic;
SIGNAL \inst5|sdi_state.state_sdi_idle~q\ : std_logic;
SIGNAL \inst5|WideOr1~0_combout\ : std_logic;
SIGNAL \inst5|sdi_state.state_sdi_shifting~q\ : std_logic;
SIGNAL \inst5|pos[0]~9\ : std_logic;
SIGNAL \inst5|pos[1]~10_combout\ : std_logic;
SIGNAL \inst5|pos[1]~11\ : std_logic;
SIGNAL \inst5|pos[2]~12_combout\ : std_logic;
SIGNAL \inst5|pos[2]~13\ : std_logic;
SIGNAL \inst5|pos[3]~14_combout\ : std_logic;
SIGNAL \inst5|pos[3]~15\ : std_logic;
SIGNAL \inst5|pos[4]~16_combout\ : std_logic;
SIGNAL \inst5|pos[4]~17\ : std_logic;
SIGNAL \inst5|pos[5]~18_combout\ : std_logic;
SIGNAL \inst5|pos[5]~19\ : std_logic;
SIGNAL \inst5|pos[6]~20_combout\ : std_logic;
SIGNAL \inst5|pos[6]~21\ : std_logic;
SIGNAL \inst5|pos[7]~22_combout\ : std_logic;
SIGNAL \inst5|Selector9~0_combout\ : std_logic;
SIGNAL \inst5|Selector9~1_combout\ : std_logic;
SIGNAL \inst5|latch_enable~q\ : std_logic;
SIGNAL \inst5|Selector8~0_combout\ : std_logic;
SIGNAL \inst5|Selector8~1_combout\ : std_logic;
SIGNAL \inst5|sclk_enable~q\ : std_logic;
SIGNAL \inst5|latch~combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst2|counter_out[0]~78_combout\ : std_logic;
SIGNAL \inst2|counter_out[1]~26_combout\ : std_logic;
SIGNAL \inst2|counter_out[1]~27\ : std_logic;
SIGNAL \inst2|counter_out[2]~28_combout\ : std_logic;
SIGNAL \inst2|counter_out[2]~29\ : std_logic;
SIGNAL \inst2|counter_out[3]~30_combout\ : std_logic;
SIGNAL \inst2|counter_out[3]~31\ : std_logic;
SIGNAL \inst2|counter_out[4]~32_combout\ : std_logic;
SIGNAL \inst2|counter_out[4]~33\ : std_logic;
SIGNAL \inst2|counter_out[5]~34_combout\ : std_logic;
SIGNAL \inst2|counter_out[5]~35\ : std_logic;
SIGNAL \inst2|counter_out[6]~36_combout\ : std_logic;
SIGNAL \inst2|counter_out[6]~37\ : std_logic;
SIGNAL \inst2|counter_out[7]~38_combout\ : std_logic;
SIGNAL \inst2|counter_out[7]~39\ : std_logic;
SIGNAL \inst2|counter_out[8]~40_combout\ : std_logic;
SIGNAL \inst2|counter_out[8]~41\ : std_logic;
SIGNAL \inst2|counter_out[9]~42_combout\ : std_logic;
SIGNAL \inst2|counter_out[9]~43\ : std_logic;
SIGNAL \inst2|counter_out[10]~44_combout\ : std_logic;
SIGNAL \inst2|counter_out[10]~45\ : std_logic;
SIGNAL \inst2|counter_out[11]~46_combout\ : std_logic;
SIGNAL \inst2|counter_out[11]~47\ : std_logic;
SIGNAL \inst2|counter_out[12]~48_combout\ : std_logic;
SIGNAL \inst2|counter_out[12]~49\ : std_logic;
SIGNAL \inst2|counter_out[13]~50_combout\ : std_logic;
SIGNAL \inst2|counter_out[13]~51\ : std_logic;
SIGNAL \inst2|counter_out[14]~52_combout\ : std_logic;
SIGNAL \inst2|counter_out[14]~53\ : std_logic;
SIGNAL \inst2|counter_out[15]~54_combout\ : std_logic;
SIGNAL \inst2|counter_out[15]~55\ : std_logic;
SIGNAL \inst2|counter_out[16]~56_combout\ : std_logic;
SIGNAL \inst2|counter_out[16]~57\ : std_logic;
SIGNAL \inst2|counter_out[17]~58_combout\ : std_logic;
SIGNAL \inst2|counter_out[17]~59\ : std_logic;
SIGNAL \inst2|counter_out[18]~60_combout\ : std_logic;
SIGNAL \inst2|counter_out[18]~61\ : std_logic;
SIGNAL \inst2|counter_out[19]~62_combout\ : std_logic;
SIGNAL \inst2|counter_out[19]~63\ : std_logic;
SIGNAL \inst2|counter_out[20]~64_combout\ : std_logic;
SIGNAL \inst2|counter_out[20]~65\ : std_logic;
SIGNAL \inst2|counter_out[21]~66_combout\ : std_logic;
SIGNAL \inst2|counter_out[21]~67\ : std_logic;
SIGNAL \inst2|counter_out[22]~68_combout\ : std_logic;
SIGNAL \inst2|counter_out[22]~69\ : std_logic;
SIGNAL \inst2|counter_out[23]~70_combout\ : std_logic;
SIGNAL \inst2|counter_out[23]~71\ : std_logic;
SIGNAL \inst2|counter_out[24]~72_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|counter_out[24]~73\ : std_logic;
SIGNAL \inst2|counter_out[25]~74_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst2|counter_out[25]~75\ : std_logic;
SIGNAL \inst2|counter_out[26]~76_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst5|Mux0~1_combout\ : std_logic;
SIGNAL \inst5|Selector10~0_combout\ : std_logic;
SIGNAL \inst5|Selector10~1_combout\ : std_logic;
SIGNAL \inst5|data~q\ : std_logic;
SIGNAL \inst5|sclk~combout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst5|delay_ticks\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst5|pos\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|counter_out\ : std_logic_vector(31 DOWNTO 0);

BEGIN

CLOCK_REF <= ww_CLOCK_REF;
ww_CLOCK_50 <= CLOCK_50;
LED_LATCH <= ww_LED_LATCH;
ww_LED_DRIVER_RESET <= LED_DRIVER_RESET;
ww_LED_DRIVER_ENABLE <= LED_DRIVER_ENABLE;
ww_KEY <= KEY;
LED_SDI <= ww_LED_SDI;
LED_SCLK <= ww_LED_SCLK;
LED_nOE <= ww_LED_nOE;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: IOOBUF_X53_Y15_N9
\CLOCK_REF~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_CLOCK_REF);

-- Location: IOOBUF_X40_Y0_N16
\LED_LATCH~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|latch~combout\,
	devoe => ww_devoe,
	o => ww_LED_LATCH);

-- Location: IOOBUF_X45_Y0_N16
\LED_SDI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|data~q\,
	devoe => ww_devoe,
	o => ww_LED_SDI);

-- Location: IOOBUF_X53_Y21_N23
\LED_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sclk~combout\,
	devoe => ww_devoe,
	o => ww_LED_SCLK);

-- Location: IOOBUF_X36_Y0_N9
\LED_nOE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED_nOE);

-- Location: IOOBUF_X0_Y10_N23
\LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_LED(7));

-- Location: IOOBUF_X0_Y28_N9
\LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|LPM_MUX_component|auto_generated|result_node[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_LED(6));

-- Location: IOOBUF_X0_Y26_N16
\LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_LED(5));

-- Location: IOOBUF_X0_Y25_N9
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|LPM_MUX_component|auto_generated|result_node[0]~3_combout\,
	devoe => ww_devoe,
	o => ww_LED(4));

-- Location: IOOBUF_X40_Y34_N2
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_LED(3));

-- Location: IOOBUF_X49_Y34_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|LPM_MUX_component|auto_generated|result_node[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_LED(2));

-- Location: IOOBUF_X49_Y34_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_LED(1));

-- Location: IOOBUF_X38_Y34_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|LPM_MUX_component|auto_generated|result_node[0]~3_combout\,
	devoe => ww_devoe,
	o => ww_LED(0));

-- Location: IOIBUF_X27_Y0_N22
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_4
\inst|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 60,
	c0_initial => 1,
	c0_low => 60,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 10,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5561,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X44_Y26_N16
\inst5|pos[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pos[0]~8_combout\ = \inst5|pos\(0) $ (VCC)
-- \inst5|pos[0]~9\ = CARRY(\inst5|pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pos\(0),
	datad => VCC,
	combout => \inst5|pos[0]~8_combout\,
	cout => \inst5|pos[0]~9\);

-- Location: LCCOMB_X44_Y26_N0
\inst5|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~0_combout\ = (\inst5|pos\(3)) # ((\inst5|pos\(4)) # ((\inst5|pos\(5)) # (\inst5|pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pos\(3),
	datab => \inst5|pos\(4),
	datac => \inst5|pos\(5),
	datad => \inst5|pos\(6),
	combout => \inst5|LessThan0~0_combout\);

-- Location: LCCOMB_X44_Y26_N14
\inst5|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~1_combout\ = (\inst5|pos\(7)) # (\inst5|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|pos\(7),
	datad => \inst5|LessThan0~0_combout\,
	combout => \inst5|LessThan0~1_combout\);

-- Location: LCCOMB_X44_Y26_N12
\inst5|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector7~0_combout\ = (!\inst5|pos\(7) & (!\inst5|LessThan0~0_combout\ & \inst5|sdi_state.state_sdi_shifting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pos\(7),
	datab => \inst5|LessThan0~0_combout\,
	datac => \inst5|sdi_state.state_sdi_shifting~q\,
	combout => \inst5|Selector7~0_combout\);

-- Location: FF_X44_Y26_N13
\inst5|sdi_state.state_sdi_clock_setup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sdi_state.state_sdi_clock_setup~q\);

-- Location: LCCOMB_X44_Y29_N16
\inst5|sdi_state.state_sdi_clock_high~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sdi_state.state_sdi_clock_high~feeder_combout\ = \inst5|sdi_state.state_sdi_clock_setup~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|sdi_state.state_sdi_clock_setup~q\,
	combout => \inst5|sdi_state.state_sdi_clock_high~feeder_combout\);

-- Location: FF_X44_Y29_N17
\inst5|sdi_state.state_sdi_clock_high\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|sdi_state.state_sdi_clock_high~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sdi_state.state_sdi_clock_high~q\);

-- Location: LCCOMB_X44_Y29_N30
\inst5|sdi_state.state_sdi_clock_low~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sdi_state.state_sdi_clock_low~feeder_combout\ = \inst5|sdi_state.state_sdi_clock_high~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|sdi_state.state_sdi_clock_high~q\,
	combout => \inst5|sdi_state.state_sdi_clock_low~feeder_combout\);

-- Location: FF_X44_Y29_N31
\inst5|sdi_state.state_sdi_clock_low\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|sdi_state.state_sdi_clock_low~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sdi_state.state_sdi_clock_low~q\);

-- Location: LCCOMB_X45_Y29_N0
\inst5|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~0_combout\ = \inst5|delay_ticks\(0) $ (VCC)
-- \inst5|Add1~1\ = CARRY(\inst5|delay_ticks\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(0),
	datad => VCC,
	combout => \inst5|Add1~0_combout\,
	cout => \inst5|Add1~1\);

-- Location: LCCOMB_X44_Y29_N12
\inst5|delay_ticks~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|delay_ticks~4_combout\ = (\inst5|Add1~0_combout\ & ((!\inst5|Equal0~9_combout\) # (!\inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~4_combout\,
	datab => \inst5|Equal0~9_combout\,
	datac => \inst5|Add1~0_combout\,
	combout => \inst5|delay_ticks~4_combout\);

-- Location: LCCOMB_X44_Y26_N6
\inst5|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector9~2_combout\ = (\inst5|sdi_state.state_sdi_shifting~q\ & ((\inst5|pos\(7)) # (\inst5|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pos\(7),
	datab => \inst5|LessThan0~0_combout\,
	datac => \inst5|sdi_state.state_sdi_shifting~q\,
	combout => \inst5|Selector9~2_combout\);

-- Location: FF_X44_Y26_N7
\inst5|sdi_state.state_sdi_latching\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sdi_state.state_sdi_latching~q\);

-- Location: FF_X45_Y25_N21
\inst5|sdi_state.state_sdi_done_latching\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|sdi_state.state_sdi_latching~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sdi_state.state_sdi_done_latching~q\);

-- Location: LCCOMB_X44_Y29_N2
\inst5|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector4~0_combout\ = (\inst5|sdi_state.state_sdi_done_latching~q\) # ((\inst5|sdi_state.state_sdi_brightness_delay~q\ & ((!\inst5|Equal0~9_combout\) # (!\inst5|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~4_combout\,
	datab => \inst5|Equal0~9_combout\,
	datac => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	datad => \inst5|sdi_state.state_sdi_done_latching~q\,
	combout => \inst5|Selector4~0_combout\);

-- Location: FF_X44_Y29_N3
\inst5|sdi_state.state_sdi_brightness_delay\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sdi_state.state_sdi_brightness_delay~q\);

-- Location: FF_X44_Y29_N13
\inst5|delay_ticks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|delay_ticks~4_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(0));

-- Location: LCCOMB_X45_Y29_N2
\inst5|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~2_combout\ = (\inst5|delay_ticks\(1) & (!\inst5|Add1~1\)) # (!\inst5|delay_ticks\(1) & ((\inst5|Add1~1\) # (GND)))
-- \inst5|Add1~3\ = CARRY((!\inst5|Add1~1\) # (!\inst5|delay_ticks\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(1),
	datad => VCC,
	cin => \inst5|Add1~1\,
	combout => \inst5|Add1~2_combout\,
	cout => \inst5|Add1~3\);

-- Location: FF_X45_Y29_N3
\inst5|delay_ticks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~2_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(1));

-- Location: LCCOMB_X45_Y29_N4
\inst5|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~4_combout\ = (\inst5|delay_ticks\(2) & (\inst5|Add1~3\ $ (GND))) # (!\inst5|delay_ticks\(2) & (!\inst5|Add1~3\ & VCC))
-- \inst5|Add1~5\ = CARRY((\inst5|delay_ticks\(2) & !\inst5|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(2),
	datad => VCC,
	cin => \inst5|Add1~3\,
	combout => \inst5|Add1~4_combout\,
	cout => \inst5|Add1~5\);

-- Location: FF_X45_Y29_N5
\inst5|delay_ticks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~4_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(2));

-- Location: LCCOMB_X45_Y29_N6
\inst5|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~6_combout\ = (\inst5|delay_ticks\(3) & (!\inst5|Add1~5\)) # (!\inst5|delay_ticks\(3) & ((\inst5|Add1~5\) # (GND)))
-- \inst5|Add1~7\ = CARRY((!\inst5|Add1~5\) # (!\inst5|delay_ticks\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(3),
	datad => VCC,
	cin => \inst5|Add1~5\,
	combout => \inst5|Add1~6_combout\,
	cout => \inst5|Add1~7\);

-- Location: FF_X45_Y29_N7
\inst5|delay_ticks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~6_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(3));

-- Location: LCCOMB_X45_Y29_N8
\inst5|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~8_combout\ = (\inst5|delay_ticks\(4) & (\inst5|Add1~7\ $ (GND))) # (!\inst5|delay_ticks\(4) & (!\inst5|Add1~7\ & VCC))
-- \inst5|Add1~9\ = CARRY((\inst5|delay_ticks\(4) & !\inst5|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(4),
	datad => VCC,
	cin => \inst5|Add1~7\,
	combout => \inst5|Add1~8_combout\,
	cout => \inst5|Add1~9\);

-- Location: FF_X45_Y29_N9
\inst5|delay_ticks[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~8_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(4));

-- Location: LCCOMB_X45_Y29_N10
\inst5|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~10_combout\ = (\inst5|delay_ticks\(5) & (!\inst5|Add1~9\)) # (!\inst5|delay_ticks\(5) & ((\inst5|Add1~9\) # (GND)))
-- \inst5|Add1~11\ = CARRY((!\inst5|Add1~9\) # (!\inst5|delay_ticks\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(5),
	datad => VCC,
	cin => \inst5|Add1~9\,
	combout => \inst5|Add1~10_combout\,
	cout => \inst5|Add1~11\);

-- Location: FF_X45_Y29_N11
\inst5|delay_ticks[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~10_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(5));

-- Location: LCCOMB_X45_Y29_N12
\inst5|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~12_combout\ = (\inst5|delay_ticks\(6) & (\inst5|Add1~11\ $ (GND))) # (!\inst5|delay_ticks\(6) & (!\inst5|Add1~11\ & VCC))
-- \inst5|Add1~13\ = CARRY((\inst5|delay_ticks\(6) & !\inst5|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(6),
	datad => VCC,
	cin => \inst5|Add1~11\,
	combout => \inst5|Add1~12_combout\,
	cout => \inst5|Add1~13\);

-- Location: LCCOMB_X44_Y29_N18
\inst5|delay_ticks~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|delay_ticks~3_combout\ = (\inst5|Add1~12_combout\ & ((!\inst5|Equal0~9_combout\) # (!\inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~4_combout\,
	datab => \inst5|Equal0~9_combout\,
	datac => \inst5|Add1~12_combout\,
	combout => \inst5|delay_ticks~3_combout\);

-- Location: FF_X44_Y29_N19
\inst5|delay_ticks[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|delay_ticks~3_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(6));

-- Location: LCCOMB_X46_Y29_N12
\inst5|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (!\inst5|delay_ticks\(4) & (\inst5|delay_ticks\(6) & (!\inst5|delay_ticks\(3) & !\inst5|delay_ticks\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(4),
	datab => \inst5|delay_ticks\(6),
	datac => \inst5|delay_ticks\(3),
	datad => \inst5|delay_ticks\(5),
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y29_N14
\inst5|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~14_combout\ = (\inst5|delay_ticks\(7) & (!\inst5|Add1~13\)) # (!\inst5|delay_ticks\(7) & ((\inst5|Add1~13\) # (GND)))
-- \inst5|Add1~15\ = CARRY((!\inst5|Add1~13\) # (!\inst5|delay_ticks\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(7),
	datad => VCC,
	cin => \inst5|Add1~13\,
	combout => \inst5|Add1~14_combout\,
	cout => \inst5|Add1~15\);

-- Location: FF_X45_Y29_N15
\inst5|delay_ticks[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~14_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(7));

-- Location: LCCOMB_X45_Y29_N16
\inst5|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~16_combout\ = (\inst5|delay_ticks\(8) & (\inst5|Add1~15\ $ (GND))) # (!\inst5|delay_ticks\(8) & (!\inst5|Add1~15\ & VCC))
-- \inst5|Add1~17\ = CARRY((\inst5|delay_ticks\(8) & !\inst5|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(8),
	datad => VCC,
	cin => \inst5|Add1~15\,
	combout => \inst5|Add1~16_combout\,
	cout => \inst5|Add1~17\);

-- Location: LCCOMB_X44_Y29_N0
\inst5|delay_ticks~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|delay_ticks~2_combout\ = (\inst5|Add1~16_combout\ & ((!\inst5|Equal0~4_combout\) # (!\inst5|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal0~9_combout\,
	datac => \inst5|Equal0~4_combout\,
	datad => \inst5|Add1~16_combout\,
	combout => \inst5|delay_ticks~2_combout\);

-- Location: FF_X44_Y29_N1
\inst5|delay_ticks[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|delay_ticks~2_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(8));

-- Location: LCCOMB_X45_Y29_N18
\inst5|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~18_combout\ = (\inst5|delay_ticks\(9) & (!\inst5|Add1~17\)) # (!\inst5|delay_ticks\(9) & ((\inst5|Add1~17\) # (GND)))
-- \inst5|Add1~19\ = CARRY((!\inst5|Add1~17\) # (!\inst5|delay_ticks\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(9),
	datad => VCC,
	cin => \inst5|Add1~17\,
	combout => \inst5|Add1~18_combout\,
	cout => \inst5|Add1~19\);

-- Location: FF_X45_Y29_N19
\inst5|delay_ticks[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~18_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(9));

-- Location: LCCOMB_X45_Y29_N20
\inst5|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~20_combout\ = (\inst5|delay_ticks\(10) & (\inst5|Add1~19\ $ (GND))) # (!\inst5|delay_ticks\(10) & (!\inst5|Add1~19\ & VCC))
-- \inst5|Add1~21\ = CARRY((\inst5|delay_ticks\(10) & !\inst5|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(10),
	datad => VCC,
	cin => \inst5|Add1~19\,
	combout => \inst5|Add1~20_combout\,
	cout => \inst5|Add1~21\);

-- Location: LCCOMB_X44_Y29_N14
\inst5|delay_ticks~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|delay_ticks~1_combout\ = (\inst5|Add1~20_combout\ & ((!\inst5|Equal0~9_combout\) # (!\inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~4_combout\,
	datab => \inst5|Equal0~9_combout\,
	datac => \inst5|Add1~20_combout\,
	combout => \inst5|delay_ticks~1_combout\);

-- Location: FF_X44_Y29_N15
\inst5|delay_ticks[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|delay_ticks~1_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(10));

-- Location: LCCOMB_X46_Y29_N2
\inst5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (\inst5|delay_ticks\(8) & (!\inst5|delay_ticks\(9) & (\inst5|delay_ticks\(10) & !\inst5|delay_ticks\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(8),
	datab => \inst5|delay_ticks\(9),
	datac => \inst5|delay_ticks\(10),
	datad => \inst5|delay_ticks\(7),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y29_N22
\inst5|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~22_combout\ = (\inst5|delay_ticks\(11) & (!\inst5|Add1~21\)) # (!\inst5|delay_ticks\(11) & ((\inst5|Add1~21\) # (GND)))
-- \inst5|Add1~23\ = CARRY((!\inst5|Add1~21\) # (!\inst5|delay_ticks\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(11),
	datad => VCC,
	cin => \inst5|Add1~21\,
	combout => \inst5|Add1~22_combout\,
	cout => \inst5|Add1~23\);

-- Location: LCCOMB_X44_Y29_N4
\inst5|delay_ticks~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|delay_ticks~0_combout\ = (\inst5|Add1~22_combout\ & ((!\inst5|Equal0~4_combout\) # (!\inst5|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal0~9_combout\,
	datac => \inst5|Equal0~4_combout\,
	datad => \inst5|Add1~22_combout\,
	combout => \inst5|delay_ticks~0_combout\);

-- Location: FF_X44_Y29_N5
\inst5|delay_ticks[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|delay_ticks~0_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(11));

-- Location: LCCOMB_X45_Y29_N24
\inst5|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~24_combout\ = (\inst5|delay_ticks\(12) & (\inst5|Add1~23\ $ (GND))) # (!\inst5|delay_ticks\(12) & (!\inst5|Add1~23\ & VCC))
-- \inst5|Add1~25\ = CARRY((\inst5|delay_ticks\(12) & !\inst5|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(12),
	datad => VCC,
	cin => \inst5|Add1~23\,
	combout => \inst5|Add1~24_combout\,
	cout => \inst5|Add1~25\);

-- Location: FF_X45_Y29_N25
\inst5|delay_ticks[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~24_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(12));

-- Location: LCCOMB_X45_Y29_N26
\inst5|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~26_combout\ = (\inst5|delay_ticks\(13) & (!\inst5|Add1~25\)) # (!\inst5|delay_ticks\(13) & ((\inst5|Add1~25\) # (GND)))
-- \inst5|Add1~27\ = CARRY((!\inst5|Add1~25\) # (!\inst5|delay_ticks\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(13),
	datad => VCC,
	cin => \inst5|Add1~25\,
	combout => \inst5|Add1~26_combout\,
	cout => \inst5|Add1~27\);

-- Location: FF_X45_Y29_N27
\inst5|delay_ticks[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~26_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(13));

-- Location: LCCOMB_X45_Y29_N28
\inst5|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~28_combout\ = (\inst5|delay_ticks\(14) & (\inst5|Add1~27\ $ (GND))) # (!\inst5|delay_ticks\(14) & (!\inst5|Add1~27\ & VCC))
-- \inst5|Add1~29\ = CARRY((\inst5|delay_ticks\(14) & !\inst5|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(14),
	datad => VCC,
	cin => \inst5|Add1~27\,
	combout => \inst5|Add1~28_combout\,
	cout => \inst5|Add1~29\);

-- Location: FF_X45_Y29_N29
\inst5|delay_ticks[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~28_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(14));

-- Location: LCCOMB_X45_Y29_N30
\inst5|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~30_combout\ = (\inst5|delay_ticks\(15) & (!\inst5|Add1~29\)) # (!\inst5|delay_ticks\(15) & ((\inst5|Add1~29\) # (GND)))
-- \inst5|Add1~31\ = CARRY((!\inst5|Add1~29\) # (!\inst5|delay_ticks\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(15),
	datad => VCC,
	cin => \inst5|Add1~29\,
	combout => \inst5|Add1~30_combout\,
	cout => \inst5|Add1~31\);

-- Location: FF_X45_Y29_N31
\inst5|delay_ticks[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~30_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(15));

-- Location: LCCOMB_X46_Y29_N30
\inst5|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (!\inst5|delay_ticks\(1) & (!\inst5|delay_ticks\(0) & (!\inst5|delay_ticks\(2) & !\inst5|delay_ticks\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(1),
	datab => \inst5|delay_ticks\(0),
	datac => \inst5|delay_ticks\(2),
	datad => \inst5|delay_ticks\(15),
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X46_Y29_N0
\inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (\inst5|delay_ticks\(11) & (!\inst5|delay_ticks\(14) & (!\inst5|delay_ticks\(13) & !\inst5|delay_ticks\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(11),
	datab => \inst5|delay_ticks\(14),
	datac => \inst5|delay_ticks\(13),
	datad => \inst5|delay_ticks\(12),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y29_N24
\inst5|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (\inst5|Equal0~2_combout\ & (\inst5|Equal0~1_combout\ & (\inst5|Equal0~3_combout\ & \inst5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~2_combout\,
	datab => \inst5|Equal0~1_combout\,
	datac => \inst5|Equal0~3_combout\,
	datad => \inst5|Equal0~0_combout\,
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y28_N0
\inst5|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~32_combout\ = (\inst5|delay_ticks\(16) & (\inst5|Add1~31\ $ (GND))) # (!\inst5|delay_ticks\(16) & (!\inst5|Add1~31\ & VCC))
-- \inst5|Add1~33\ = CARRY((\inst5|delay_ticks\(16) & !\inst5|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(16),
	datad => VCC,
	cin => \inst5|Add1~31\,
	combout => \inst5|Add1~32_combout\,
	cout => \inst5|Add1~33\);

-- Location: LCCOMB_X44_Y29_N6
\inst5|delay_ticks~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|delay_ticks~5_combout\ = (\inst5|Add1~32_combout\ & ((!\inst5|Equal0~4_combout\) # (!\inst5|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal0~9_combout\,
	datac => \inst5|Equal0~4_combout\,
	datad => \inst5|Add1~32_combout\,
	combout => \inst5|delay_ticks~5_combout\);

-- Location: FF_X44_Y29_N7
\inst5|delay_ticks[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|delay_ticks~5_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(16));

-- Location: LCCOMB_X45_Y28_N2
\inst5|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~34_combout\ = (\inst5|delay_ticks\(17) & (!\inst5|Add1~33\)) # (!\inst5|delay_ticks\(17) & ((\inst5|Add1~33\) # (GND)))
-- \inst5|Add1~35\ = CARRY((!\inst5|Add1~33\) # (!\inst5|delay_ticks\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(17),
	datad => VCC,
	cin => \inst5|Add1~33\,
	combout => \inst5|Add1~34_combout\,
	cout => \inst5|Add1~35\);

-- Location: LCCOMB_X44_Y29_N24
\inst5|delay_ticks~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|delay_ticks~6_combout\ = (\inst5|Add1~34_combout\ & ((!\inst5|Equal0~4_combout\) # (!\inst5|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal0~9_combout\,
	datac => \inst5|Equal0~4_combout\,
	datad => \inst5|Add1~34_combout\,
	combout => \inst5|delay_ticks~6_combout\);

-- Location: FF_X44_Y29_N25
\inst5|delay_ticks[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|delay_ticks~6_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(17));

-- Location: LCCOMB_X45_Y28_N4
\inst5|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~36_combout\ = (\inst5|delay_ticks\(18) & (\inst5|Add1~35\ $ (GND))) # (!\inst5|delay_ticks\(18) & (!\inst5|Add1~35\ & VCC))
-- \inst5|Add1~37\ = CARRY((\inst5|delay_ticks\(18) & !\inst5|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(18),
	datad => VCC,
	cin => \inst5|Add1~35\,
	combout => \inst5|Add1~36_combout\,
	cout => \inst5|Add1~37\);

-- Location: FF_X45_Y28_N5
\inst5|delay_ticks[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~36_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(18));

-- Location: LCCOMB_X45_Y28_N6
\inst5|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~38_combout\ = (\inst5|delay_ticks\(19) & (!\inst5|Add1~37\)) # (!\inst5|delay_ticks\(19) & ((\inst5|Add1~37\) # (GND)))
-- \inst5|Add1~39\ = CARRY((!\inst5|Add1~37\) # (!\inst5|delay_ticks\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(19),
	datad => VCC,
	cin => \inst5|Add1~37\,
	combout => \inst5|Add1~38_combout\,
	cout => \inst5|Add1~39\);

-- Location: FF_X45_Y28_N7
\inst5|delay_ticks[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~38_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(19));

-- Location: LCCOMB_X44_Y29_N10
\inst5|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~5_combout\ = (\inst5|delay_ticks\(16) & (\inst5|delay_ticks\(17) & (!\inst5|delay_ticks\(18) & !\inst5|delay_ticks\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(16),
	datab => \inst5|delay_ticks\(17),
	datac => \inst5|delay_ticks\(18),
	datad => \inst5|delay_ticks\(19),
	combout => \inst5|Equal0~5_combout\);

-- Location: LCCOMB_X45_Y28_N8
\inst5|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~40_combout\ = (\inst5|delay_ticks\(20) & (\inst5|Add1~39\ $ (GND))) # (!\inst5|delay_ticks\(20) & (!\inst5|Add1~39\ & VCC))
-- \inst5|Add1~41\ = CARRY((\inst5|delay_ticks\(20) & !\inst5|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(20),
	datad => VCC,
	cin => \inst5|Add1~39\,
	combout => \inst5|Add1~40_combout\,
	cout => \inst5|Add1~41\);

-- Location: FF_X45_Y28_N9
\inst5|delay_ticks[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~40_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(20));

-- Location: LCCOMB_X45_Y28_N10
\inst5|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~42_combout\ = (\inst5|delay_ticks\(21) & (!\inst5|Add1~41\)) # (!\inst5|delay_ticks\(21) & ((\inst5|Add1~41\) # (GND)))
-- \inst5|Add1~43\ = CARRY((!\inst5|Add1~41\) # (!\inst5|delay_ticks\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(21),
	datad => VCC,
	cin => \inst5|Add1~41\,
	combout => \inst5|Add1~42_combout\,
	cout => \inst5|Add1~43\);

-- Location: FF_X45_Y28_N11
\inst5|delay_ticks[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~42_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(21));

-- Location: LCCOMB_X45_Y28_N12
\inst5|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~44_combout\ = (\inst5|delay_ticks\(22) & (\inst5|Add1~43\ $ (GND))) # (!\inst5|delay_ticks\(22) & (!\inst5|Add1~43\ & VCC))
-- \inst5|Add1~45\ = CARRY((\inst5|delay_ticks\(22) & !\inst5|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(22),
	datad => VCC,
	cin => \inst5|Add1~43\,
	combout => \inst5|Add1~44_combout\,
	cout => \inst5|Add1~45\);

-- Location: FF_X45_Y28_N13
\inst5|delay_ticks[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~44_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(22));

-- Location: LCCOMB_X45_Y28_N14
\inst5|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~46_combout\ = (\inst5|delay_ticks\(23) & (!\inst5|Add1~45\)) # (!\inst5|delay_ticks\(23) & ((\inst5|Add1~45\) # (GND)))
-- \inst5|Add1~47\ = CARRY((!\inst5|Add1~45\) # (!\inst5|delay_ticks\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(23),
	datad => VCC,
	cin => \inst5|Add1~45\,
	combout => \inst5|Add1~46_combout\,
	cout => \inst5|Add1~47\);

-- Location: FF_X45_Y28_N15
\inst5|delay_ticks[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~46_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(23));

-- Location: LCCOMB_X45_Y28_N16
\inst5|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~48_combout\ = (\inst5|delay_ticks\(24) & (\inst5|Add1~47\ $ (GND))) # (!\inst5|delay_ticks\(24) & (!\inst5|Add1~47\ & VCC))
-- \inst5|Add1~49\ = CARRY((\inst5|delay_ticks\(24) & !\inst5|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(24),
	datad => VCC,
	cin => \inst5|Add1~47\,
	combout => \inst5|Add1~48_combout\,
	cout => \inst5|Add1~49\);

-- Location: FF_X45_Y28_N17
\inst5|delay_ticks[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~48_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(24));

-- Location: LCCOMB_X45_Y28_N18
\inst5|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~50_combout\ = (\inst5|delay_ticks\(25) & (!\inst5|Add1~49\)) # (!\inst5|delay_ticks\(25) & ((\inst5|Add1~49\) # (GND)))
-- \inst5|Add1~51\ = CARRY((!\inst5|Add1~49\) # (!\inst5|delay_ticks\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(25),
	datad => VCC,
	cin => \inst5|Add1~49\,
	combout => \inst5|Add1~50_combout\,
	cout => \inst5|Add1~51\);

-- Location: FF_X45_Y28_N19
\inst5|delay_ticks[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~50_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(25));

-- Location: LCCOMB_X45_Y28_N20
\inst5|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~52_combout\ = (\inst5|delay_ticks\(26) & (\inst5|Add1~51\ $ (GND))) # (!\inst5|delay_ticks\(26) & (!\inst5|Add1~51\ & VCC))
-- \inst5|Add1~53\ = CARRY((\inst5|delay_ticks\(26) & !\inst5|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(26),
	datad => VCC,
	cin => \inst5|Add1~51\,
	combout => \inst5|Add1~52_combout\,
	cout => \inst5|Add1~53\);

-- Location: FF_X45_Y28_N21
\inst5|delay_ticks[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~52_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(26));

-- Location: LCCOMB_X45_Y28_N22
\inst5|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~54_combout\ = (\inst5|delay_ticks\(27) & (!\inst5|Add1~53\)) # (!\inst5|delay_ticks\(27) & ((\inst5|Add1~53\) # (GND)))
-- \inst5|Add1~55\ = CARRY((!\inst5|Add1~53\) # (!\inst5|delay_ticks\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(27),
	datad => VCC,
	cin => \inst5|Add1~53\,
	combout => \inst5|Add1~54_combout\,
	cout => \inst5|Add1~55\);

-- Location: FF_X45_Y28_N23
\inst5|delay_ticks[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~54_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(27));

-- Location: LCCOMB_X45_Y28_N24
\inst5|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~56_combout\ = (\inst5|delay_ticks\(28) & (\inst5|Add1~55\ $ (GND))) # (!\inst5|delay_ticks\(28) & (!\inst5|Add1~55\ & VCC))
-- \inst5|Add1~57\ = CARRY((\inst5|delay_ticks\(28) & !\inst5|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(28),
	datad => VCC,
	cin => \inst5|Add1~55\,
	combout => \inst5|Add1~56_combout\,
	cout => \inst5|Add1~57\);

-- Location: FF_X45_Y28_N25
\inst5|delay_ticks[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~56_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(28));

-- Location: LCCOMB_X45_Y28_N26
\inst5|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~58_combout\ = (\inst5|delay_ticks\(29) & (!\inst5|Add1~57\)) # (!\inst5|delay_ticks\(29) & ((\inst5|Add1~57\) # (GND)))
-- \inst5|Add1~59\ = CARRY((!\inst5|Add1~57\) # (!\inst5|delay_ticks\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(29),
	datad => VCC,
	cin => \inst5|Add1~57\,
	combout => \inst5|Add1~58_combout\,
	cout => \inst5|Add1~59\);

-- Location: FF_X45_Y28_N27
\inst5|delay_ticks[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~58_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(29));

-- Location: LCCOMB_X45_Y28_N28
\inst5|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~60_combout\ = (\inst5|delay_ticks\(30) & (\inst5|Add1~59\ $ (GND))) # (!\inst5|delay_ticks\(30) & (!\inst5|Add1~59\ & VCC))
-- \inst5|Add1~61\ = CARRY((\inst5|delay_ticks\(30) & !\inst5|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|delay_ticks\(30),
	datad => VCC,
	cin => \inst5|Add1~59\,
	combout => \inst5|Add1~60_combout\,
	cout => \inst5|Add1~61\);

-- Location: FF_X45_Y28_N29
\inst5|delay_ticks[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~60_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(30));

-- Location: LCCOMB_X45_Y28_N30
\inst5|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~62_combout\ = \inst5|delay_ticks\(31) $ (\inst5|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(31),
	cin => \inst5|Add1~61\,
	combout => \inst5|Add1~62_combout\);

-- Location: FF_X45_Y28_N31
\inst5|delay_ticks[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add1~62_combout\,
	ena => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|delay_ticks\(31));

-- Location: LCCOMB_X44_Y28_N0
\inst5|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~8_combout\ = (!\inst5|delay_ticks\(29) & (!\inst5|delay_ticks\(28) & (!\inst5|delay_ticks\(31) & !\inst5|delay_ticks\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(29),
	datab => \inst5|delay_ticks\(28),
	datac => \inst5|delay_ticks\(31),
	datad => \inst5|delay_ticks\(30),
	combout => \inst5|Equal0~8_combout\);

-- Location: LCCOMB_X43_Y28_N0
\inst5|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~7_combout\ = (!\inst5|delay_ticks\(27) & (!\inst5|delay_ticks\(26) & (!\inst5|delay_ticks\(25) & !\inst5|delay_ticks\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(27),
	datab => \inst5|delay_ticks\(26),
	datac => \inst5|delay_ticks\(25),
	datad => \inst5|delay_ticks\(24),
	combout => \inst5|Equal0~7_combout\);

-- Location: LCCOMB_X46_Y28_N0
\inst5|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~6_combout\ = (!\inst5|delay_ticks\(22) & (!\inst5|delay_ticks\(23) & (!\inst5|delay_ticks\(21) & !\inst5|delay_ticks\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|delay_ticks\(22),
	datab => \inst5|delay_ticks\(23),
	datac => \inst5|delay_ticks\(21),
	datad => \inst5|delay_ticks\(20),
	combout => \inst5|Equal0~6_combout\);

-- Location: LCCOMB_X44_Y29_N28
\inst5|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~9_combout\ = (\inst5|Equal0~5_combout\ & (\inst5|Equal0~8_combout\ & (\inst5|Equal0~7_combout\ & \inst5|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~5_combout\,
	datab => \inst5|Equal0~8_combout\,
	datac => \inst5|Equal0~7_combout\,
	datad => \inst5|Equal0~6_combout\,
	combout => \inst5|Equal0~9_combout\);

-- Location: LCCOMB_X44_Y29_N20
\inst5|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector0~0_combout\ = ((!\inst5|sdi_state.state_sdi_brightness_delay~q\) # (!\inst5|Equal0~4_combout\)) # (!\inst5|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal0~9_combout\,
	datac => \inst5|Equal0~4_combout\,
	datad => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	combout => \inst5|Selector0~0_combout\);

-- Location: FF_X44_Y29_N21
\inst5|sdi_state.state_sdi_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sdi_state.state_sdi_idle~q\);

-- Location: LCCOMB_X44_Y29_N8
\inst5|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|WideOr1~0_combout\ = (\inst5|sdi_state.state_sdi_clock_low~q\) # (!\inst5|sdi_state.state_sdi_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|sdi_state.state_sdi_clock_low~q\,
	datad => \inst5|sdi_state.state_sdi_idle~q\,
	combout => \inst5|WideOr1~0_combout\);

-- Location: FF_X44_Y29_N9
\inst5|sdi_state.state_sdi_shifting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|WideOr1~0_combout\,
	sclr => \inst5|sdi_state.state_sdi_brightness_delay~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sdi_state.state_sdi_shifting~q\);

-- Location: FF_X44_Y26_N17
\inst5|pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|pos[0]~8_combout\,
	sclr => \inst5|LessThan0~1_combout\,
	ena => \inst5|sdi_state.state_sdi_shifting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pos\(0));

-- Location: LCCOMB_X44_Y26_N18
\inst5|pos[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pos[1]~10_combout\ = (\inst5|pos\(1) & (!\inst5|pos[0]~9\)) # (!\inst5|pos\(1) & ((\inst5|pos[0]~9\) # (GND)))
-- \inst5|pos[1]~11\ = CARRY((!\inst5|pos[0]~9\) # (!\inst5|pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pos\(1),
	datad => VCC,
	cin => \inst5|pos[0]~9\,
	combout => \inst5|pos[1]~10_combout\,
	cout => \inst5|pos[1]~11\);

-- Location: FF_X44_Y26_N19
\inst5|pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|pos[1]~10_combout\,
	sclr => \inst5|LessThan0~1_combout\,
	ena => \inst5|sdi_state.state_sdi_shifting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pos\(1));

-- Location: LCCOMB_X44_Y26_N20
\inst5|pos[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pos[2]~12_combout\ = (\inst5|pos\(2) & (\inst5|pos[1]~11\ $ (GND))) # (!\inst5|pos\(2) & (!\inst5|pos[1]~11\ & VCC))
-- \inst5|pos[2]~13\ = CARRY((\inst5|pos\(2) & !\inst5|pos[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pos\(2),
	datad => VCC,
	cin => \inst5|pos[1]~11\,
	combout => \inst5|pos[2]~12_combout\,
	cout => \inst5|pos[2]~13\);

-- Location: FF_X44_Y26_N21
\inst5|pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|pos[2]~12_combout\,
	sclr => \inst5|LessThan0~1_combout\,
	ena => \inst5|sdi_state.state_sdi_shifting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pos\(2));

-- Location: LCCOMB_X44_Y26_N22
\inst5|pos[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pos[3]~14_combout\ = (\inst5|pos\(3) & (!\inst5|pos[2]~13\)) # (!\inst5|pos\(3) & ((\inst5|pos[2]~13\) # (GND)))
-- \inst5|pos[3]~15\ = CARRY((!\inst5|pos[2]~13\) # (!\inst5|pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pos\(3),
	datad => VCC,
	cin => \inst5|pos[2]~13\,
	combout => \inst5|pos[3]~14_combout\,
	cout => \inst5|pos[3]~15\);

-- Location: FF_X44_Y26_N23
\inst5|pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|pos[3]~14_combout\,
	sclr => \inst5|LessThan0~1_combout\,
	ena => \inst5|sdi_state.state_sdi_shifting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pos\(3));

-- Location: LCCOMB_X44_Y26_N24
\inst5|pos[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pos[4]~16_combout\ = (\inst5|pos\(4) & (\inst5|pos[3]~15\ $ (GND))) # (!\inst5|pos\(4) & (!\inst5|pos[3]~15\ & VCC))
-- \inst5|pos[4]~17\ = CARRY((\inst5|pos\(4) & !\inst5|pos[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pos\(4),
	datad => VCC,
	cin => \inst5|pos[3]~15\,
	combout => \inst5|pos[4]~16_combout\,
	cout => \inst5|pos[4]~17\);

-- Location: FF_X44_Y26_N25
\inst5|pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|pos[4]~16_combout\,
	sclr => \inst5|LessThan0~1_combout\,
	ena => \inst5|sdi_state.state_sdi_shifting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pos\(4));

-- Location: LCCOMB_X44_Y26_N26
\inst5|pos[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pos[5]~18_combout\ = (\inst5|pos\(5) & (!\inst5|pos[4]~17\)) # (!\inst5|pos\(5) & ((\inst5|pos[4]~17\) # (GND)))
-- \inst5|pos[5]~19\ = CARRY((!\inst5|pos[4]~17\) # (!\inst5|pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pos\(5),
	datad => VCC,
	cin => \inst5|pos[4]~17\,
	combout => \inst5|pos[5]~18_combout\,
	cout => \inst5|pos[5]~19\);

-- Location: FF_X44_Y26_N27
\inst5|pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|pos[5]~18_combout\,
	sclr => \inst5|LessThan0~1_combout\,
	ena => \inst5|sdi_state.state_sdi_shifting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pos\(5));

-- Location: LCCOMB_X44_Y26_N28
\inst5|pos[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pos[6]~20_combout\ = (\inst5|pos\(6) & (\inst5|pos[5]~19\ $ (GND))) # (!\inst5|pos\(6) & (!\inst5|pos[5]~19\ & VCC))
-- \inst5|pos[6]~21\ = CARRY((\inst5|pos\(6) & !\inst5|pos[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pos\(6),
	datad => VCC,
	cin => \inst5|pos[5]~19\,
	combout => \inst5|pos[6]~20_combout\,
	cout => \inst5|pos[6]~21\);

-- Location: FF_X44_Y26_N29
\inst5|pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|pos[6]~20_combout\,
	sclr => \inst5|LessThan0~1_combout\,
	ena => \inst5|sdi_state.state_sdi_shifting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pos\(6));

-- Location: LCCOMB_X44_Y26_N30
\inst5|pos[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|pos[7]~22_combout\ = \inst5|pos\(7) $ (\inst5|pos[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pos\(7),
	cin => \inst5|pos[6]~21\,
	combout => \inst5|pos[7]~22_combout\);

-- Location: FF_X44_Y26_N31
\inst5|pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|pos[7]~22_combout\,
	sclr => \inst5|LessThan0~1_combout\,
	ena => \inst5|sdi_state.state_sdi_shifting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pos\(7));

-- Location: LCCOMB_X45_Y25_N20
\inst5|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector9~0_combout\ = (\inst5|sdi_state.state_sdi_latching~q\) # ((\inst5|latch_enable~q\ & (!\inst5|sdi_state.state_sdi_done_latching~q\ & !\inst5|sdi_state.state_sdi_shifting~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sdi_state.state_sdi_latching~q\,
	datab => \inst5|latch_enable~q\,
	datac => \inst5|sdi_state.state_sdi_done_latching~q\,
	datad => \inst5|sdi_state.state_sdi_shifting~q\,
	combout => \inst5|Selector9~0_combout\);

-- Location: LCCOMB_X44_Y26_N8
\inst5|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector9~1_combout\ = (\inst5|Selector9~0_combout\) # ((\inst5|sdi_state.state_sdi_shifting~q\ & ((\inst5|pos\(7)) # (\inst5|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pos\(7),
	datab => \inst5|LessThan0~0_combout\,
	datac => \inst5|sdi_state.state_sdi_shifting~q\,
	datad => \inst5|Selector9~0_combout\,
	combout => \inst5|Selector9~1_combout\);

-- Location: FF_X44_Y26_N9
\inst5|latch_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|latch_enable~q\);

-- Location: LCCOMB_X44_Y29_N22
\inst5|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector8~0_combout\ = (\inst5|sclk_enable~q\ & (((\inst5|sdi_state.state_sdi_clock_setup~q\) # (\inst5|sdi_state.state_sdi_done_latching~q\)) # (!\inst5|sdi_state.state_sdi_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sclk_enable~q\,
	datab => \inst5|sdi_state.state_sdi_idle~q\,
	datac => \inst5|sdi_state.state_sdi_clock_setup~q\,
	datad => \inst5|sdi_state.state_sdi_done_latching~q\,
	combout => \inst5|Selector8~0_combout\);

-- Location: LCCOMB_X44_Y29_N26
\inst5|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector8~1_combout\ = (\inst5|Selector8~0_combout\) # ((\inst5|sdi_state.state_sdi_latching~q\) # (\inst5|sdi_state.state_sdi_clock_high~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Selector8~0_combout\,
	datac => \inst5|sdi_state.state_sdi_latching~q\,
	datad => \inst5|sdi_state.state_sdi_clock_high~q\,
	combout => \inst5|Selector8~1_combout\);

-- Location: FF_X44_Y29_N27
\inst5|sclk_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sclk_enable~q\);

-- Location: LCCOMB_X45_Y25_N8
\inst5|latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|latch~combout\ = (\inst5|latch_enable~q\ & (GLOBAL(\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\) & \inst5|sclk_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|latch_enable~q\,
	datac => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	datad => \inst5|sclk_enable~q\,
	combout => \inst5|latch~combout\);

-- Location: IOIBUF_X53_Y14_N1
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X46_Y26_N0
\inst2|counter_out[0]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[0]~78_combout\ = !\inst2|counter_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|counter_out\(0),
	combout => \inst2|counter_out[0]~78_combout\);

-- Location: FF_X46_Y26_N1
\inst2|counter_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(0));

-- Location: LCCOMB_X46_Y26_N6
\inst2|counter_out[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[1]~26_combout\ = (\inst2|counter_out\(1) & (\inst2|counter_out\(0) $ (VCC))) # (!\inst2|counter_out\(1) & (\inst2|counter_out\(0) & VCC))
-- \inst2|counter_out[1]~27\ = CARRY((\inst2|counter_out\(1) & \inst2|counter_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter_out\(1),
	datab => \inst2|counter_out\(0),
	datad => VCC,
	combout => \inst2|counter_out[1]~26_combout\,
	cout => \inst2|counter_out[1]~27\);

-- Location: FF_X46_Y26_N7
\inst2|counter_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(1));

-- Location: LCCOMB_X46_Y26_N8
\inst2|counter_out[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[2]~28_combout\ = (\inst2|counter_out\(2) & (!\inst2|counter_out[1]~27\)) # (!\inst2|counter_out\(2) & ((\inst2|counter_out[1]~27\) # (GND)))
-- \inst2|counter_out[2]~29\ = CARRY((!\inst2|counter_out[1]~27\) # (!\inst2|counter_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter_out\(2),
	datad => VCC,
	cin => \inst2|counter_out[1]~27\,
	combout => \inst2|counter_out[2]~28_combout\,
	cout => \inst2|counter_out[2]~29\);

-- Location: FF_X46_Y26_N9
\inst2|counter_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(2));

-- Location: LCCOMB_X46_Y26_N10
\inst2|counter_out[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[3]~30_combout\ = (\inst2|counter_out\(3) & (\inst2|counter_out[2]~29\ $ (GND))) # (!\inst2|counter_out\(3) & (!\inst2|counter_out[2]~29\ & VCC))
-- \inst2|counter_out[3]~31\ = CARRY((\inst2|counter_out\(3) & !\inst2|counter_out[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter_out\(3),
	datad => VCC,
	cin => \inst2|counter_out[2]~29\,
	combout => \inst2|counter_out[3]~30_combout\,
	cout => \inst2|counter_out[3]~31\);

-- Location: FF_X46_Y26_N11
\inst2|counter_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[3]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(3));

-- Location: LCCOMB_X46_Y26_N12
\inst2|counter_out[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[4]~32_combout\ = (\inst2|counter_out\(4) & (!\inst2|counter_out[3]~31\)) # (!\inst2|counter_out\(4) & ((\inst2|counter_out[3]~31\) # (GND)))
-- \inst2|counter_out[4]~33\ = CARRY((!\inst2|counter_out[3]~31\) # (!\inst2|counter_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter_out\(4),
	datad => VCC,
	cin => \inst2|counter_out[3]~31\,
	combout => \inst2|counter_out[4]~32_combout\,
	cout => \inst2|counter_out[4]~33\);

-- Location: FF_X46_Y26_N13
\inst2|counter_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(4));

-- Location: LCCOMB_X46_Y26_N14
\inst2|counter_out[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[5]~34_combout\ = (\inst2|counter_out\(5) & (\inst2|counter_out[4]~33\ $ (GND))) # (!\inst2|counter_out\(5) & (!\inst2|counter_out[4]~33\ & VCC))
-- \inst2|counter_out[5]~35\ = CARRY((\inst2|counter_out\(5) & !\inst2|counter_out[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter_out\(5),
	datad => VCC,
	cin => \inst2|counter_out[4]~33\,
	combout => \inst2|counter_out[5]~34_combout\,
	cout => \inst2|counter_out[5]~35\);

-- Location: FF_X46_Y26_N15
\inst2|counter_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(5));

-- Location: LCCOMB_X46_Y26_N16
\inst2|counter_out[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[6]~36_combout\ = (\inst2|counter_out\(6) & (!\inst2|counter_out[5]~35\)) # (!\inst2|counter_out\(6) & ((\inst2|counter_out[5]~35\) # (GND)))
-- \inst2|counter_out[6]~37\ = CARRY((!\inst2|counter_out[5]~35\) # (!\inst2|counter_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter_out\(6),
	datad => VCC,
	cin => \inst2|counter_out[5]~35\,
	combout => \inst2|counter_out[6]~36_combout\,
	cout => \inst2|counter_out[6]~37\);

-- Location: FF_X46_Y26_N17
\inst2|counter_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(6));

-- Location: LCCOMB_X46_Y26_N18
\inst2|counter_out[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[7]~38_combout\ = (\inst2|counter_out\(7) & (\inst2|counter_out[6]~37\ $ (GND))) # (!\inst2|counter_out\(7) & (!\inst2|counter_out[6]~37\ & VCC))
-- \inst2|counter_out[7]~39\ = CARRY((\inst2|counter_out\(7) & !\inst2|counter_out[6]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter_out\(7),
	datad => VCC,
	cin => \inst2|counter_out[6]~37\,
	combout => \inst2|counter_out[7]~38_combout\,
	cout => \inst2|counter_out[7]~39\);

-- Location: FF_X46_Y26_N19
\inst2|counter_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[7]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(7));

-- Location: LCCOMB_X46_Y26_N20
\inst2|counter_out[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[8]~40_combout\ = (\inst2|counter_out\(8) & (!\inst2|counter_out[7]~39\)) # (!\inst2|counter_out\(8) & ((\inst2|counter_out[7]~39\) # (GND)))
-- \inst2|counter_out[8]~41\ = CARRY((!\inst2|counter_out[7]~39\) # (!\inst2|counter_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter_out\(8),
	datad => VCC,
	cin => \inst2|counter_out[7]~39\,
	combout => \inst2|counter_out[8]~40_combout\,
	cout => \inst2|counter_out[8]~41\);

-- Location: FF_X46_Y26_N21
\inst2|counter_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(8));

-- Location: LCCOMB_X46_Y26_N22
\inst2|counter_out[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[9]~42_combout\ = (\inst2|counter_out\(9) & (\inst2|counter_out[8]~41\ $ (GND))) # (!\inst2|counter_out\(9) & (!\inst2|counter_out[8]~41\ & VCC))
-- \inst2|counter_out[9]~43\ = CARRY((\inst2|counter_out\(9) & !\inst2|counter_out[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter_out\(9),
	datad => VCC,
	cin => \inst2|counter_out[8]~41\,
	combout => \inst2|counter_out[9]~42_combout\,
	cout => \inst2|counter_out[9]~43\);

-- Location: FF_X46_Y26_N23
\inst2|counter_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(9));

-- Location: LCCOMB_X46_Y26_N24
\inst2|counter_out[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[10]~44_combout\ = (\inst2|counter_out\(10) & (!\inst2|counter_out[9]~43\)) # (!\inst2|counter_out\(10) & ((\inst2|counter_out[9]~43\) # (GND)))
-- \inst2|counter_out[10]~45\ = CARRY((!\inst2|counter_out[9]~43\) # (!\inst2|counter_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter_out\(10),
	datad => VCC,
	cin => \inst2|counter_out[9]~43\,
	combout => \inst2|counter_out[10]~44_combout\,
	cout => \inst2|counter_out[10]~45\);

-- Location: FF_X46_Y26_N25
\inst2|counter_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[10]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(10));

-- Location: LCCOMB_X46_Y26_N26
\inst2|counter_out[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[11]~46_combout\ = (\inst2|counter_out\(11) & (\inst2|counter_out[10]~45\ $ (GND))) # (!\inst2|counter_out\(11) & (!\inst2|counter_out[10]~45\ & VCC))
-- \inst2|counter_out[11]~47\ = CARRY((\inst2|counter_out\(11) & !\inst2|counter_out[10]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter_out\(11),
	datad => VCC,
	cin => \inst2|counter_out[10]~45\,
	combout => \inst2|counter_out[11]~46_combout\,
	cout => \inst2|counter_out[11]~47\);

-- Location: FF_X46_Y26_N27
\inst2|counter_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[11]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(11));

-- Location: LCCOMB_X46_Y26_N28
\inst2|counter_out[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[12]~48_combout\ = (\inst2|counter_out\(12) & (!\inst2|counter_out[11]~47\)) # (!\inst2|counter_out\(12) & ((\inst2|counter_out[11]~47\) # (GND)))
-- \inst2|counter_out[12]~49\ = CARRY((!\inst2|counter_out[11]~47\) # (!\inst2|counter_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter_out\(12),
	datad => VCC,
	cin => \inst2|counter_out[11]~47\,
	combout => \inst2|counter_out[12]~48_combout\,
	cout => \inst2|counter_out[12]~49\);

-- Location: FF_X46_Y26_N29
\inst2|counter_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(12));

-- Location: LCCOMB_X46_Y26_N30
\inst2|counter_out[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[13]~50_combout\ = (\inst2|counter_out\(13) & (\inst2|counter_out[12]~49\ $ (GND))) # (!\inst2|counter_out\(13) & (!\inst2|counter_out[12]~49\ & VCC))
-- \inst2|counter_out[13]~51\ = CARRY((\inst2|counter_out\(13) & !\inst2|counter_out[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter_out\(13),
	datad => VCC,
	cin => \inst2|counter_out[12]~49\,
	combout => \inst2|counter_out[13]~50_combout\,
	cout => \inst2|counter_out[13]~51\);

-- Location: FF_X46_Y26_N31
\inst2|counter_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[13]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(13));

-- Location: LCCOMB_X46_Y25_N0
\inst2|counter_out[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[14]~52_combout\ = (\inst2|counter_out\(14) & (!\inst2|counter_out[13]~51\)) # (!\inst2|counter_out\(14) & ((\inst2|counter_out[13]~51\) # (GND)))
-- \inst2|counter_out[14]~53\ = CARRY((!\inst2|counter_out[13]~51\) # (!\inst2|counter_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter_out\(14),
	datad => VCC,
	cin => \inst2|counter_out[13]~51\,
	combout => \inst2|counter_out[14]~52_combout\,
	cout => \inst2|counter_out[14]~53\);

-- Location: FF_X46_Y25_N1
\inst2|counter_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[14]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(14));

-- Location: LCCOMB_X46_Y25_N2
\inst2|counter_out[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[15]~54_combout\ = (\inst2|counter_out\(15) & (\inst2|counter_out[14]~53\ $ (GND))) # (!\inst2|counter_out\(15) & (!\inst2|counter_out[14]~53\ & VCC))
-- \inst2|counter_out[15]~55\ = CARRY((\inst2|counter_out\(15) & !\inst2|counter_out[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter_out\(15),
	datad => VCC,
	cin => \inst2|counter_out[14]~53\,
	combout => \inst2|counter_out[15]~54_combout\,
	cout => \inst2|counter_out[15]~55\);

-- Location: FF_X46_Y25_N3
\inst2|counter_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(15));

-- Location: LCCOMB_X46_Y25_N4
\inst2|counter_out[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[16]~56_combout\ = (\inst2|counter_out\(16) & (!\inst2|counter_out[15]~55\)) # (!\inst2|counter_out\(16) & ((\inst2|counter_out[15]~55\) # (GND)))
-- \inst2|counter_out[16]~57\ = CARRY((!\inst2|counter_out[15]~55\) # (!\inst2|counter_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter_out\(16),
	datad => VCC,
	cin => \inst2|counter_out[15]~55\,
	combout => \inst2|counter_out[16]~56_combout\,
	cout => \inst2|counter_out[16]~57\);

-- Location: FF_X46_Y25_N5
\inst2|counter_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(16));

-- Location: LCCOMB_X46_Y25_N6
\inst2|counter_out[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[17]~58_combout\ = (\inst2|counter_out\(17) & (\inst2|counter_out[16]~57\ $ (GND))) # (!\inst2|counter_out\(17) & (!\inst2|counter_out[16]~57\ & VCC))
-- \inst2|counter_out[17]~59\ = CARRY((\inst2|counter_out\(17) & !\inst2|counter_out[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter_out\(17),
	datad => VCC,
	cin => \inst2|counter_out[16]~57\,
	combout => \inst2|counter_out[17]~58_combout\,
	cout => \inst2|counter_out[17]~59\);

-- Location: FF_X46_Y25_N7
\inst2|counter_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[17]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(17));

-- Location: LCCOMB_X46_Y25_N8
\inst2|counter_out[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[18]~60_combout\ = (\inst2|counter_out\(18) & (!\inst2|counter_out[17]~59\)) # (!\inst2|counter_out\(18) & ((\inst2|counter_out[17]~59\) # (GND)))
-- \inst2|counter_out[18]~61\ = CARRY((!\inst2|counter_out[17]~59\) # (!\inst2|counter_out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter_out\(18),
	datad => VCC,
	cin => \inst2|counter_out[17]~59\,
	combout => \inst2|counter_out[18]~60_combout\,
	cout => \inst2|counter_out[18]~61\);

-- Location: FF_X46_Y25_N9
\inst2|counter_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[18]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(18));

-- Location: LCCOMB_X46_Y25_N10
\inst2|counter_out[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[19]~62_combout\ = (\inst2|counter_out\(19) & (\inst2|counter_out[18]~61\ $ (GND))) # (!\inst2|counter_out\(19) & (!\inst2|counter_out[18]~61\ & VCC))
-- \inst2|counter_out[19]~63\ = CARRY((\inst2|counter_out\(19) & !\inst2|counter_out[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter_out\(19),
	datad => VCC,
	cin => \inst2|counter_out[18]~61\,
	combout => \inst2|counter_out[19]~62_combout\,
	cout => \inst2|counter_out[19]~63\);

-- Location: FF_X46_Y25_N11
\inst2|counter_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(19));

-- Location: LCCOMB_X46_Y25_N12
\inst2|counter_out[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[20]~64_combout\ = (\inst2|counter_out\(20) & (!\inst2|counter_out[19]~63\)) # (!\inst2|counter_out\(20) & ((\inst2|counter_out[19]~63\) # (GND)))
-- \inst2|counter_out[20]~65\ = CARRY((!\inst2|counter_out[19]~63\) # (!\inst2|counter_out\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter_out\(20),
	datad => VCC,
	cin => \inst2|counter_out[19]~63\,
	combout => \inst2|counter_out[20]~64_combout\,
	cout => \inst2|counter_out[20]~65\);

-- Location: FF_X46_Y25_N13
\inst2|counter_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[20]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(20));

-- Location: LCCOMB_X46_Y25_N14
\inst2|counter_out[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[21]~66_combout\ = (\inst2|counter_out\(21) & (\inst2|counter_out[20]~65\ $ (GND))) # (!\inst2|counter_out\(21) & (!\inst2|counter_out[20]~65\ & VCC))
-- \inst2|counter_out[21]~67\ = CARRY((\inst2|counter_out\(21) & !\inst2|counter_out[20]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter_out\(21),
	datad => VCC,
	cin => \inst2|counter_out[20]~65\,
	combout => \inst2|counter_out[21]~66_combout\,
	cout => \inst2|counter_out[21]~67\);

-- Location: FF_X46_Y25_N15
\inst2|counter_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[21]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(21));

-- Location: LCCOMB_X46_Y25_N16
\inst2|counter_out[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[22]~68_combout\ = (\inst2|counter_out\(22) & (!\inst2|counter_out[21]~67\)) # (!\inst2|counter_out\(22) & ((\inst2|counter_out[21]~67\) # (GND)))
-- \inst2|counter_out[22]~69\ = CARRY((!\inst2|counter_out[21]~67\) # (!\inst2|counter_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter_out\(22),
	datad => VCC,
	cin => \inst2|counter_out[21]~67\,
	combout => \inst2|counter_out[22]~68_combout\,
	cout => \inst2|counter_out[22]~69\);

-- Location: FF_X46_Y25_N17
\inst2|counter_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[22]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(22));

-- Location: LCCOMB_X46_Y25_N18
\inst2|counter_out[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[23]~70_combout\ = (\inst2|counter_out\(23) & (\inst2|counter_out[22]~69\ $ (GND))) # (!\inst2|counter_out\(23) & (!\inst2|counter_out[22]~69\ & VCC))
-- \inst2|counter_out[23]~71\ = CARRY((\inst2|counter_out\(23) & !\inst2|counter_out[22]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter_out\(23),
	datad => VCC,
	cin => \inst2|counter_out[22]~69\,
	combout => \inst2|counter_out[23]~70_combout\,
	cout => \inst2|counter_out[23]~71\);

-- Location: FF_X46_Y25_N19
\inst2|counter_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(23));

-- Location: LCCOMB_X46_Y25_N20
\inst2|counter_out[24]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[24]~72_combout\ = (\inst2|counter_out\(24) & (!\inst2|counter_out[23]~71\)) # (!\inst2|counter_out\(24) & ((\inst2|counter_out[23]~71\) # (GND)))
-- \inst2|counter_out[24]~73\ = CARRY((!\inst2|counter_out[23]~71\) # (!\inst2|counter_out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter_out\(24),
	datad => VCC,
	cin => \inst2|counter_out[23]~71\,
	combout => \inst2|counter_out[24]~72_combout\,
	cout => \inst2|counter_out[24]~73\);

-- Location: FF_X46_Y25_N21
\inst2|counter_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[24]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(24));

-- Location: LCCOMB_X46_Y25_N28
\inst3|LPM_MUX_component|auto_generated|result_node[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ = (\KEY[0]~input_o\ & (\inst2|counter_out\(24))) # (!\KEY[0]~input_o\ & ((\inst2|counter_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst2|counter_out\(24),
	datad => \inst2|counter_out\(22),
	combout => \inst3|LPM_MUX_component|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X46_Y25_N30
\inst3|LPM_MUX_component|auto_generated|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ = (\KEY[0]~input_o\ & (\inst2|counter_out\(23))) # (!\KEY[0]~input_o\ & ((\inst2|counter_out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter_out\(23),
	datac => \inst2|counter_out\(21),
	datad => \KEY[0]~input_o\,
	combout => \inst3|LPM_MUX_component|auto_generated|result_node[0]~3_combout\);

-- Location: LCCOMB_X44_Y26_N2
\inst5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (\inst5|pos\(1) & (((\inst5|pos\(0))))) # (!\inst5|pos\(1) & ((\inst5|pos\(0) & (\inst3|LPM_MUX_component|auto_generated|result_node[1]~2_combout\)) # (!\inst5|pos\(0) & 
-- ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	datab => \inst5|pos\(1),
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[0]~3_combout\,
	datad => \inst5|pos\(0),
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X46_Y25_N22
\inst2|counter_out[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[25]~74_combout\ = (\inst2|counter_out\(25) & (\inst2|counter_out[24]~73\ $ (GND))) # (!\inst2|counter_out\(25) & (!\inst2|counter_out[24]~73\ & VCC))
-- \inst2|counter_out[25]~75\ = CARRY((\inst2|counter_out\(25) & !\inst2|counter_out[24]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter_out\(25),
	datad => VCC,
	cin => \inst2|counter_out[24]~73\,
	combout => \inst2|counter_out[25]~74_combout\,
	cout => \inst2|counter_out[25]~75\);

-- Location: FF_X46_Y25_N23
\inst2|counter_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[25]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(25));

-- Location: LCCOMB_X46_Y27_N0
\inst3|LPM_MUX_component|auto_generated|result_node[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|result_node[2]~1_combout\ = (\KEY[0]~input_o\ & ((\inst2|counter_out\(25)))) # (!\KEY[0]~input_o\ & (\inst2|counter_out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter_out\(23),
	datac => \inst2|counter_out\(25),
	datad => \KEY[0]~input_o\,
	combout => \inst3|LPM_MUX_component|auto_generated|result_node[2]~1_combout\);

-- Location: LCCOMB_X46_Y25_N24
\inst2|counter_out[26]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter_out[26]~76_combout\ = \inst2|counter_out[25]~75\ $ (\inst2|counter_out\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|counter_out\(26),
	cin => \inst2|counter_out[25]~75\,
	combout => \inst2|counter_out[26]~76_combout\);

-- Location: FF_X46_Y25_N25
\inst2|counter_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|counter_out[26]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter_out\(26));

-- Location: LCCOMB_X46_Y25_N26
\inst3|LPM_MUX_component|auto_generated|result_node[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ = (\KEY[0]~input_o\ & ((\inst2|counter_out\(26)))) # (!\KEY[0]~input_o\ & (\inst2|counter_out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst2|counter_out\(24),
	datad => \inst2|counter_out\(26),
	combout => \inst3|LPM_MUX_component|auto_generated|result_node[3]~0_combout\);

-- Location: LCCOMB_X44_Y26_N4
\inst5|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~1_combout\ = (\inst5|pos\(1) & ((\inst5|Mux0~0_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[3]~0_combout\))) # (!\inst5|Mux0~0_combout\ & (\inst3|LPM_MUX_component|auto_generated|result_node[2]~1_combout\)))) # 
-- (!\inst5|pos\(1) & (\inst5|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pos\(1),
	datab => \inst5|Mux0~0_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[2]~1_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	combout => \inst5|Mux0~1_combout\);

-- Location: LCCOMB_X45_Y25_N6
\inst5|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector10~0_combout\ = (\inst5|data~q\ & (!\inst5|sdi_state.state_sdi_latching~q\ & !\inst5|sdi_state.state_sdi_shifting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|data~q\,
	datac => \inst5|sdi_state.state_sdi_latching~q\,
	datad => \inst5|sdi_state.state_sdi_shifting~q\,
	combout => \inst5|Selector10~0_combout\);

-- Location: LCCOMB_X44_Y26_N10
\inst5|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector10~1_combout\ = (\inst5|Selector10~0_combout\) # ((\inst5|Selector7~0_combout\ & \inst5|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Selector7~0_combout\,
	datac => \inst5|Mux0~1_combout\,
	datad => \inst5|Selector10~0_combout\,
	combout => \inst5|Selector10~1_combout\);

-- Location: FF_X44_Y26_N11
\inst5|data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|data~q\);

-- Location: LCCOMB_X45_Y25_N10
\inst5|sclk\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sclk~combout\ = (GLOBAL(\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\) & \inst5|sclk_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	datad => \inst5|sclk_enable~q\,
	combout => \inst5|sclk~combout\);

-- Location: IOIBUF_X43_Y34_N15
\LED_DRIVER_RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_DRIVER_RESET,
	o => \LED_DRIVER_RESET~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\LED_DRIVER_ENABLE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LED_DRIVER_ENABLE,
	o => \LED_DRIVER_ENABLE~input_o\);
END structure;


