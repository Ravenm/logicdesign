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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/01/2016 16:24:05"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	register8 IS
    PORT (
	rin : IN std_logic_vector(7 DOWNTO 0);
	en : IN std_logic;
	clr : IN std_logic;
	clk : IN std_logic;
	rout : OUT std_logic_vector(7 DOWNTO 0)
	);
END register8;

-- Design Ports Information
-- rout[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rout[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rout[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rout[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rout[4]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rout[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rout[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rout[7]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rin[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rin[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rin[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rin[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rin[4]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rin[5]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rin[6]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rin[7]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF register8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_en : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rout : std_logic_vector(7 DOWNTO 0);
SIGNAL \clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rout[0]~output_o\ : std_logic;
SIGNAL \rout[1]~output_o\ : std_logic;
SIGNAL \rout[2]~output_o\ : std_logic;
SIGNAL \rout[3]~output_o\ : std_logic;
SIGNAL \rout[4]~output_o\ : std_logic;
SIGNAL \rout[5]~output_o\ : std_logic;
SIGNAL \rout[6]~output_o\ : std_logic;
SIGNAL \rout[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rin[0]~input_o\ : std_logic;
SIGNAL \rout[0]~reg0feeder_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \rout[0]~reg0_q\ : std_logic;
SIGNAL \rin[1]~input_o\ : std_logic;
SIGNAL \rout[1]~reg0feeder_combout\ : std_logic;
SIGNAL \rout[1]~reg0_q\ : std_logic;
SIGNAL \rin[2]~input_o\ : std_logic;
SIGNAL \rout[2]~reg0_q\ : std_logic;
SIGNAL \rin[3]~input_o\ : std_logic;
SIGNAL \rout[3]~reg0feeder_combout\ : std_logic;
SIGNAL \rout[3]~reg0_q\ : std_logic;
SIGNAL \rin[4]~input_o\ : std_logic;
SIGNAL \rout[4]~reg0feeder_combout\ : std_logic;
SIGNAL \rout[4]~reg0_q\ : std_logic;
SIGNAL \rin[5]~input_o\ : std_logic;
SIGNAL \rout[5]~reg0feeder_combout\ : std_logic;
SIGNAL \rout[5]~reg0_q\ : std_logic;
SIGNAL \rin[6]~input_o\ : std_logic;
SIGNAL \rout[6]~reg0_q\ : std_logic;
SIGNAL \rin[7]~input_o\ : std_logic;
SIGNAL \rout[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_clr~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_rin <= rin;
ww_en <= en;
ww_clr <= clr;
ww_clk <= clk;
rout <= ww_rout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clr~inputclkctrl_outclk\ <= NOT \clr~inputclkctrl_outclk\;

-- Location: IOOBUF_X33_Y25_N2
\rout[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rout[0]~reg0_q\,
	devoe => ww_devoe,
	o => \rout[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\rout[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rout[1]~reg0_q\,
	devoe => ww_devoe,
	o => \rout[1]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\rout[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rout[2]~reg0_q\,
	devoe => ww_devoe,
	o => \rout[2]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\rout[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rout[3]~reg0_q\,
	devoe => ww_devoe,
	o => \rout[3]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\rout[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rout[4]~reg0_q\,
	devoe => ww_devoe,
	o => \rout[4]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\rout[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rout[5]~reg0_q\,
	devoe => ww_devoe,
	o => \rout[5]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\rout[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rout[6]~reg0_q\,
	devoe => ww_devoe,
	o => \rout[6]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\rout[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rout[7]~reg0_q\,
	devoe => ww_devoe,
	o => \rout[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y16_N8
\rin[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rin(0),
	o => \rin[0]~input_o\);

-- Location: LCCOMB_X32_Y16_N16
\rout[0]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rout[0]~reg0feeder_combout\ = \rin[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rin[0]~input_o\,
	combout => \rout[0]~reg0feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\clr~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: CLKCTRL_G19
\clr~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y16_N1
\en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: FF_X32_Y16_N17
\rout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rout[0]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rout[0]~reg0_q\);

-- Location: IOIBUF_X33_Y14_N8
\rin[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rin(1),
	o => \rin[1]~input_o\);

-- Location: LCCOMB_X32_Y16_N26
\rout[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rout[1]~reg0feeder_combout\ = \rin[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rin[1]~input_o\,
	combout => \rout[1]~reg0feeder_combout\);

-- Location: FF_X32_Y16_N27
\rout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rout[1]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rout[1]~reg0_q\);

-- Location: IOIBUF_X33_Y12_N1
\rin[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rin(2),
	o => \rin[2]~input_o\);

-- Location: FF_X32_Y16_N5
\rout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rin[2]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rout[2]~reg0_q\);

-- Location: IOIBUF_X33_Y14_N1
\rin[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rin(3),
	o => \rin[3]~input_o\);

-- Location: LCCOMB_X32_Y16_N22
\rout[3]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rout[3]~reg0feeder_combout\ = \rin[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rin[3]~input_o\,
	combout => \rout[3]~reg0feeder_combout\);

-- Location: FF_X32_Y16_N23
\rout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rout[3]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rout[3]~reg0_q\);

-- Location: IOIBUF_X31_Y0_N1
\rin[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rin(4),
	o => \rin[4]~input_o\);

-- Location: LCCOMB_X32_Y16_N24
\rout[4]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rout[4]~reg0feeder_combout\ = \rin[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rin[4]~input_o\,
	combout => \rout[4]~reg0feeder_combout\);

-- Location: FF_X32_Y16_N25
\rout[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rout[4]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rout[4]~reg0_q\);

-- Location: IOIBUF_X29_Y0_N8
\rin[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rin(5),
	o => \rin[5]~input_o\);

-- Location: LCCOMB_X32_Y16_N18
\rout[5]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rout[5]~reg0feeder_combout\ = \rin[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rin[5]~input_o\,
	combout => \rout[5]~reg0feeder_combout\);

-- Location: FF_X32_Y16_N19
\rout[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rout[5]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rout[5]~reg0_q\);

-- Location: IOIBUF_X33_Y11_N1
\rin[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rin(6),
	o => \rin[6]~input_o\);

-- Location: FF_X32_Y16_N13
\rout[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rin[6]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rout[6]~reg0_q\);

-- Location: IOIBUF_X33_Y15_N1
\rin[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rin(7),
	o => \rin[7]~input_o\);

-- Location: FF_X32_Y16_N31
\rout[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rin[7]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rout[7]~reg0_q\);

ww_rout(0) <= \rout[0]~output_o\;

ww_rout(1) <= \rout[1]~output_o\;

ww_rout(2) <= \rout[2]~output_o\;

ww_rout(3) <= \rout[3]~output_o\;

ww_rout(4) <= \rout[4]~output_o\;

ww_rout(5) <= \rout[5]~output_o\;

ww_rout(6) <= \rout[6]~output_o\;

ww_rout(7) <= \rout[7]~output_o\;
END structure;


