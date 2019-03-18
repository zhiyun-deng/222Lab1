-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "03/18/2019 16:33:49"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g05_adder IS
    PORT (
	A : IN std_logic_vector(4 DOWNTO 0);
	B : IN std_logic_vector(4 DOWNTO 0);
	decoded_A : OUT std_logic_vector(13 DOWNTO 0);
	decoded_B : OUT std_logic_vector(13 DOWNTO 0);
	decoded_AplusB : OUT std_logic_vector(13 DOWNTO 0)
	);
END g05_adder;

-- Design Ports Information
-- decoded_A[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[7]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[8]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[9]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[10]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[11]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[12]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[13]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[7]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[8]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[9]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[10]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[11]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[12]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[13]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[7]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[8]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[9]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[10]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[11]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[12]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[13]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g05_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_decoded_A : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_decoded_B : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_decoded_AplusB : std_logic_vector(13 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \vhdl1A1|Mux6~0_combout\ : std_logic;
SIGNAL \vhdl1A1|Mux5~0_combout\ : std_logic;
SIGNAL \vhdl1A1|Mux4~0_combout\ : std_logic;
SIGNAL \vhdl1A1|Mux3~0_combout\ : std_logic;
SIGNAL \vhdl1A1|Mux2~0_combout\ : std_logic;
SIGNAL \vhdl1A1|Mux1~0_combout\ : std_logic;
SIGNAL \vhdl1A1|Mux0~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \vhdl1B1|Mux6~0_combout\ : std_logic;
SIGNAL \vhdl1B1|Mux5~0_combout\ : std_logic;
SIGNAL \vhdl1B1|Mux4~0_combout\ : std_logic;
SIGNAL \vhdl1B1|Mux3~0_combout\ : std_logic;
SIGNAL \vhdl1B1|Mux2~0_combout\ : std_logic;
SIGNAL \vhdl1B1|Mux1~0_combout\ : std_logic;
SIGNAL \vhdl1B1|Mux0~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Xfull_add2|cout~0_combout\ : std_logic;
SIGNAL \Xfull_add3|s~combout\ : std_logic;
SIGNAL \Xfull_add1|s~combout\ : std_logic;
SIGNAL \Xfull_add0|s~0_combout\ : std_logic;
SIGNAL \Xfull_add2|s~combout\ : std_logic;
SIGNAL \vhdl1S1|Mux6~0_combout\ : std_logic;
SIGNAL \vhdl1S1|Mux5~0_combout\ : std_logic;
SIGNAL \vhdl1S1|Mux4~0_combout\ : std_logic;
SIGNAL \vhdl1S1|Mux3~0_combout\ : std_logic;
SIGNAL \vhdl1S1|Mux2~0_combout\ : std_logic;
SIGNAL \vhdl1S1|Mux1~0_combout\ : std_logic;
SIGNAL \vhdl1S1|Mux0~0_combout\ : std_logic;
SIGNAL \vhdl1S2|Mux1~0_combout\ : std_logic;
SIGNAL \vhdl1S2|Mux1~1_combout\ : std_logic;
SIGNAL \Xfull_add4|s~combout\ : std_logic;
SIGNAL \vhdl1S2|Mux1~2_combout\ : std_logic;
SIGNAL \Xfull_add4|cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \Xfull_add4|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \vhdl1S1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Xfull_add3|ALT_INV_s~combout\ : std_logic;
SIGNAL \Xfull_add2|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Xfull_add2|ALT_INV_s~combout\ : std_logic;
SIGNAL \Xfull_add1|ALT_INV_s~combout\ : std_logic;
SIGNAL \Xfull_add0|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \vhdl1B1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \vhdl1A1|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
decoded_A <= ww_decoded_A;
decoded_B <= ww_decoded_B;
decoded_AplusB <= ww_decoded_AplusB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\Xfull_add4|ALT_INV_cout~0_combout\ <= NOT \Xfull_add4|cout~0_combout\;
\vhdl1S1|ALT_INV_Mux0~0_combout\ <= NOT \vhdl1S1|Mux0~0_combout\;
\Xfull_add3|ALT_INV_s~combout\ <= NOT \Xfull_add3|s~combout\;
\Xfull_add2|ALT_INV_cout~0_combout\ <= NOT \Xfull_add2|cout~0_combout\;
\Xfull_add2|ALT_INV_s~combout\ <= NOT \Xfull_add2|s~combout\;
\Xfull_add1|ALT_INV_s~combout\ <= NOT \Xfull_add1|s~combout\;
\Xfull_add0|ALT_INV_s~0_combout\ <= NOT \Xfull_add0|s~0_combout\;
\vhdl1B1|ALT_INV_Mux0~0_combout\ <= NOT \vhdl1B1|Mux0~0_combout\;
\vhdl1A1|ALT_INV_Mux0~0_combout\ <= NOT \vhdl1A1|Mux0~0_combout\;

-- Location: IOOBUF_X89_Y11_N45
\decoded_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1A1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(0));

-- Location: IOOBUF_X89_Y13_N5
\decoded_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1A1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(1));

-- Location: IOOBUF_X89_Y13_N22
\decoded_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1A1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(2));

-- Location: IOOBUF_X89_Y8_N22
\decoded_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1A1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(3));

-- Location: IOOBUF_X89_Y15_N22
\decoded_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1A1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(4));

-- Location: IOOBUF_X89_Y15_N5
\decoded_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1A1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(5));

-- Location: IOOBUF_X89_Y20_N45
\decoded_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1A1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(6));

-- Location: IOOBUF_X89_Y20_N62
\decoded_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_A(7));

-- Location: IOOBUF_X89_Y21_N56
\decoded_A[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_A(8));

-- Location: IOOBUF_X89_Y25_N22
\decoded_A[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_A(9));

-- Location: IOOBUF_X89_Y23_N22
\decoded_A[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_A(10));

-- Location: IOOBUF_X89_Y9_N56
\decoded_A[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_A(11));

-- Location: IOOBUF_X89_Y23_N5
\decoded_A[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_A(12));

-- Location: IOOBUF_X89_Y9_N39
\decoded_A[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_decoded_A(13));

-- Location: IOOBUF_X89_Y9_N22
\decoded_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1B1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(0));

-- Location: IOOBUF_X89_Y23_N39
\decoded_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1B1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(1));

-- Location: IOOBUF_X89_Y23_N56
\decoded_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1B1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(2));

-- Location: IOOBUF_X89_Y20_N79
\decoded_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1B1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(3));

-- Location: IOOBUF_X89_Y25_N39
\decoded_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1B1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(4));

-- Location: IOOBUF_X89_Y20_N96
\decoded_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1B1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(5));

-- Location: IOOBUF_X89_Y25_N56
\decoded_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1B1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(6));

-- Location: IOOBUF_X89_Y16_N5
\decoded_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_B(7));

-- Location: IOOBUF_X89_Y16_N22
\decoded_B[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_B(8));

-- Location: IOOBUF_X89_Y4_N45
\decoded_B[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_B(9));

-- Location: IOOBUF_X89_Y4_N62
\decoded_B[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_B(10));

-- Location: IOOBUF_X89_Y21_N39
\decoded_B[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_B(11));

-- Location: IOOBUF_X89_Y11_N62
\decoded_B[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]~input_o\,
	devoe => ww_devoe,
	o => ww_decoded_B(12));

-- Location: IOOBUF_X89_Y9_N5
\decoded_B[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_decoded_B(13));

-- Location: IOOBUF_X89_Y8_N39
\decoded_AplusB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1S1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(0));

-- Location: IOOBUF_X89_Y11_N79
\decoded_AplusB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1S1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(1));

-- Location: IOOBUF_X89_Y11_N96
\decoded_AplusB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1S1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(2));

-- Location: IOOBUF_X89_Y4_N79
\decoded_AplusB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1S1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(3));

-- Location: IOOBUF_X89_Y13_N56
\decoded_AplusB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1S1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(4));

-- Location: IOOBUF_X89_Y13_N39
\decoded_AplusB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1S1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(5));

-- Location: IOOBUF_X89_Y4_N96
\decoded_AplusB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1S1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(6));

-- Location: IOOBUF_X89_Y6_N39
\decoded_AplusB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1S2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(7));

-- Location: IOOBUF_X89_Y6_N56
\decoded_AplusB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(8));

-- Location: IOOBUF_X89_Y16_N39
\decoded_AplusB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1S2|Mux1~1_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(9));

-- Location: IOOBUF_X89_Y16_N56
\decoded_AplusB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1S2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(10));

-- Location: IOOBUF_X89_Y15_N39
\decoded_AplusB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Xfull_add4|s~combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(11));

-- Location: IOOBUF_X89_Y15_N56
\decoded_AplusB[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vhdl1S2|Mux1~2_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(12));

-- Location: IOOBUF_X89_Y8_N56
\decoded_AplusB[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Xfull_add4|ALT_INV_cout~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(13));

-- Location: IOIBUF_X4_Y0_N35
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X88_Y12_N30
\vhdl1A1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1A1|Mux6~0_combout\ = ( \A[0]~input_o\ & ( (!\A[1]~input_o\ & (!\A[3]~input_o\ $ (\A[2]~input_o\))) # (\A[1]~input_o\ & (\A[3]~input_o\ & !\A[2]~input_o\)) ) ) # ( !\A[0]~input_o\ & ( (!\A[1]~input_o\ & (!\A[3]~input_o\ & \A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010010010100100101001001010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \vhdl1A1|Mux6~0_combout\);

-- Location: LABCELL_X88_Y12_N33
\vhdl1A1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1A1|Mux5~0_combout\ = ( \A[0]~input_o\ & ( (!\A[1]~input_o\ & (!\A[3]~input_o\ & \A[2]~input_o\)) # (\A[1]~input_o\ & (\A[3]~input_o\)) ) ) # ( !\A[0]~input_o\ & ( (\A[2]~input_o\ & ((\A[3]~input_o\) # (\A[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \vhdl1A1|Mux5~0_combout\);

-- Location: LABCELL_X88_Y12_N6
\vhdl1A1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1A1|Mux4~0_combout\ = ( \A[0]~input_o\ & ( (\A[3]~input_o\ & (\A[1]~input_o\ & \A[2]~input_o\)) ) ) # ( !\A[0]~input_o\ & ( (!\A[3]~input_o\ & (\A[1]~input_o\ & !\A[2]~input_o\)) # (\A[3]~input_o\ & ((\A[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110011000011000011001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \vhdl1A1|Mux4~0_combout\);

-- Location: LABCELL_X88_Y12_N9
\vhdl1A1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1A1|Mux3~0_combout\ = ( \A[0]~input_o\ & ( (!\A[1]~input_o\ & (!\A[3]~input_o\ & !\A[2]~input_o\)) # (\A[1]~input_o\ & ((\A[2]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (!\A[1]~input_o\ & (!\A[3]~input_o\ & \A[2]~input_o\)) # (\A[1]~input_o\ & 
-- (\A[3]~input_o\ & !\A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110001000000100011000100010001000010101011000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \vhdl1A1|Mux3~0_combout\);

-- Location: LABCELL_X88_Y12_N42
\vhdl1A1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1A1|Mux2~0_combout\ = ( \A[0]~input_o\ & ( (!\A[3]~input_o\) # ((!\A[1]~input_o\ & !\A[2]~input_o\)) ) ) # ( !\A[0]~input_o\ & ( (!\A[3]~input_o\ & (!\A[1]~input_o\ & \A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011111100110011001111110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \vhdl1A1|Mux2~0_combout\);

-- Location: LABCELL_X88_Y12_N45
\vhdl1A1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1A1|Mux1~0_combout\ = ( \A[0]~input_o\ & ( !\A[3]~input_o\ $ (((!\A[1]~input_o\ & \A[2]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (\A[1]~input_o\ & (!\A[3]~input_o\ & !\A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000011001100011001101100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \vhdl1A1|Mux1~0_combout\);

-- Location: LABCELL_X88_Y12_N18
\vhdl1A1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1A1|Mux0~0_combout\ = ( \A[0]~input_o\ & ( (!\A[1]~input_o\ $ (!\A[2]~input_o\)) # (\A[3]~input_o\) ) ) # ( !\A[0]~input_o\ & ( (!\A[3]~input_o\ $ (!\A[2]~input_o\)) # (\A[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110101111101011111010111110101111011011110110111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \vhdl1A1|Mux0~0_combout\);

-- Location: IOIBUF_X2_Y0_N58
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X88_Y11_N3
\vhdl1B1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1B1|Mux6~0_combout\ = ( \B[3]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\ & !\B[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\ & \B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\B[1]~input_o\ & ( !\B[0]~input_o\ $ 
-- (!\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000001010000010100000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \vhdl1B1|Mux6~0_combout\);

-- Location: LABCELL_X88_Y11_N36
\vhdl1B1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1B1|Mux5~0_combout\ = ( \B[3]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\) # (\B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \B[1]~input_o\ & ( (\B[2]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\B[1]~input_o\ & ( (\B[2]~input_o\ & 
-- !\B[0]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\B[1]~input_o\ & ( (\B[2]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100000011000000110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \vhdl1B1|Mux5~0_combout\);

-- Location: LABCELL_X88_Y11_N45
\vhdl1B1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1B1|Mux4~0_combout\ = ( \B[3]~input_o\ & ( \B[1]~input_o\ & ( \B[2]~input_o\ ) ) ) # ( !\B[3]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & !\B[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & \B[2]~input_o\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101010100000101000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \vhdl1B1|Mux4~0_combout\);

-- Location: LABCELL_X88_Y11_N18
\vhdl1B1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1B1|Mux3~0_combout\ = ( \B[3]~input_o\ & ( \B[1]~input_o\ & ( !\B[2]~input_o\ $ (\B[0]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \B[1]~input_o\ & ( (\B[2]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\B[1]~input_o\ & ( !\B[2]~input_o\ $ 
-- (!\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000000000000000000011000000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \vhdl1B1|Mux3~0_combout\);

-- Location: LABCELL_X88_Y11_N57
\vhdl1B1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1B1|Mux2~0_combout\ = ( !\B[3]~input_o\ & ( \B[1]~input_o\ & ( \B[0]~input_o\ ) ) ) # ( \B[3]~input_o\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\ & !\B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\B[1]~input_o\ & ( (\B[2]~input_o\) # (\B[0]~input_o\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010100000101000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \vhdl1B1|Mux2~0_combout\);

-- Location: LABCELL_X88_Y11_N30
\vhdl1B1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1B1|Mux1~0_combout\ = ( !\B[3]~input_o\ & ( \B[1]~input_o\ & ( (!\B[2]~input_o\) # (\B[0]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\B[1]~input_o\ & ( (\B[2]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ 
-- & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000110000001111001111110011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \vhdl1B1|Mux1~0_combout\);

-- Location: LABCELL_X88_Y12_N57
\vhdl1B1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1B1|Mux0~0_combout\ = ( \B[1]~input_o\ & ( ((!\B[2]~input_o\) # (!\B[0]~input_o\)) # (\B[3]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\)) # (\B[3]~input_o\ & ((!\B[2]~input_o\) # (\B[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111111001111000011111111111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \vhdl1B1|Mux0~0_combout\);

-- Location: IOIBUF_X2_Y0_N41
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X88_Y12_N12
\Xfull_add2|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Xfull_add2|cout~0_combout\ = ( \A[2]~input_o\ & ( \A[0]~input_o\ & ( ((!\B[1]~input_o\ & (\A[1]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\ & ((\B[0]~input_o\) # (\A[1]~input_o\)))) # (\B[2]~input_o\) ) ) ) # ( !\A[2]~input_o\ & ( \A[0]~input_o\ & ( 
-- (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\A[1]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\ & ((\B[0]~input_o\) # (\A[1]~input_o\))))) ) ) ) # ( \A[2]~input_o\ & ( !\A[0]~input_o\ & ( ((\B[1]~input_o\ & \A[1]~input_o\)) # (\B[2]~input_o\) ) ) ) # ( 
-- !\A[2]~input_o\ & ( !\A[0]~input_o\ & ( (\B[1]~input_o\ & (\B[2]~input_o\ & \A[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001101110011011100000001000100110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Xfull_add2|cout~0_combout\);

-- Location: LABCELL_X88_Y12_N3
\Xfull_add3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \Xfull_add3|s~combout\ = ( \Xfull_add2|cout~0_combout\ & ( !\B[3]~input_o\ $ (\A[3]~input_o\) ) ) # ( !\Xfull_add2|cout~0_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	dataf => \Xfull_add2|ALT_INV_cout~0_combout\,
	combout => \Xfull_add3|s~combout\);

-- Location: LABCELL_X88_Y12_N21
\Xfull_add1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \Xfull_add1|s~combout\ = ( \A[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[0]~input_o\ $ (\B[1]~input_o\)) ) ) # ( !\A[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Xfull_add1|s~combout\);

-- Location: LABCELL_X88_Y12_N0
\Xfull_add0|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Xfull_add0|s~0_combout\ = ( \A[0]~input_o\ & ( !\B[0]~input_o\ ) ) # ( !\A[0]~input_o\ & ( \B[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Xfull_add0|s~0_combout\);

-- Location: LABCELL_X88_Y12_N36
\Xfull_add2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \Xfull_add2|s~combout\ = ( \A[2]~input_o\ & ( \A[0]~input_o\ & ( !\B[2]~input_o\ $ (((!\B[1]~input_o\ & (\A[1]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\ & ((\B[0]~input_o\) # (\A[1]~input_o\))))) ) ) ) # ( !\A[2]~input_o\ & ( \A[0]~input_o\ & ( 
-- !\B[2]~input_o\ $ (((!\B[1]~input_o\ & ((!\A[1]~input_o\) # (!\B[0]~input_o\))) # (\B[1]~input_o\ & (!\A[1]~input_o\ & !\B[0]~input_o\)))) ) ) ) # ( \A[2]~input_o\ & ( !\A[0]~input_o\ & ( !\B[2]~input_o\ $ (((\B[1]~input_o\ & \A[1]~input_o\))) ) ) ) # ( 
-- !\A[2]~input_o\ & ( !\A[0]~input_o\ & ( !\B[2]~input_o\ $ (((!\B[1]~input_o\) # (!\A[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110110010011100100100110110011011001100100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Xfull_add2|s~combout\);

-- Location: LABCELL_X88_Y11_N6
\vhdl1S1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1S1|Mux6~0_combout\ = ( \Xfull_add2|s~combout\ & ( (!\Xfull_add1|s~combout\ & (!\Xfull_add3|s~combout\ $ (\Xfull_add0|s~0_combout\))) ) ) # ( !\Xfull_add2|s~combout\ & ( (\Xfull_add0|s~0_combout\ & (!\Xfull_add3|s~combout\ $ 
-- (\Xfull_add1|s~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100110000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Xfull_add3|ALT_INV_s~combout\,
	datab => \Xfull_add1|ALT_INV_s~combout\,
	datac => \Xfull_add0|ALT_INV_s~0_combout\,
	dataf => \Xfull_add2|ALT_INV_s~combout\,
	combout => \vhdl1S1|Mux6~0_combout\);

-- Location: LABCELL_X88_Y11_N9
\vhdl1S1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1S1|Mux5~0_combout\ = ( \Xfull_add2|s~combout\ & ( (!\Xfull_add3|s~combout\ & (!\Xfull_add1|s~combout\ $ (!\Xfull_add0|s~0_combout\))) # (\Xfull_add3|s~combout\ & ((!\Xfull_add0|s~0_combout\) # (\Xfull_add1|s~combout\))) ) ) # ( 
-- !\Xfull_add2|s~combout\ & ( (\Xfull_add3|s~combout\ & (\Xfull_add1|s~combout\ & \Xfull_add0|s~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101111001011110010111100101111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Xfull_add3|ALT_INV_s~combout\,
	datab => \Xfull_add1|ALT_INV_s~combout\,
	datac => \Xfull_add0|ALT_INV_s~0_combout\,
	dataf => \Xfull_add2|ALT_INV_s~combout\,
	combout => \vhdl1S1|Mux5~0_combout\);

-- Location: LABCELL_X88_Y11_N12
\vhdl1S1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1S1|Mux4~0_combout\ = ( \Xfull_add2|s~combout\ & ( (\Xfull_add3|s~combout\ & ((!\Xfull_add0|s~0_combout\) # (\Xfull_add1|s~combout\))) ) ) # ( !\Xfull_add2|s~combout\ & ( (\Xfull_add1|s~combout\ & (!\Xfull_add3|s~combout\ & 
-- !\Xfull_add0|s~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Xfull_add1|ALT_INV_s~combout\,
	datac => \Xfull_add3|ALT_INV_s~combout\,
	datad => \Xfull_add0|ALT_INV_s~0_combout\,
	dataf => \Xfull_add2|ALT_INV_s~combout\,
	combout => \vhdl1S1|Mux4~0_combout\);

-- Location: LABCELL_X88_Y11_N48
\vhdl1S1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1S1|Mux3~0_combout\ = ( \Xfull_add2|s~combout\ & ( (!\Xfull_add1|s~combout\ & (!\Xfull_add3|s~combout\ & !\Xfull_add0|s~0_combout\)) # (\Xfull_add1|s~combout\ & ((\Xfull_add0|s~0_combout\))) ) ) # ( !\Xfull_add2|s~combout\ & ( 
-- (!\Xfull_add1|s~combout\ & (!\Xfull_add3|s~combout\ & \Xfull_add0|s~0_combout\)) # (\Xfull_add1|s~combout\ & (\Xfull_add3|s~combout\ & !\Xfull_add0|s~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Xfull_add1|ALT_INV_s~combout\,
	datac => \Xfull_add3|ALT_INV_s~combout\,
	datad => \Xfull_add0|ALT_INV_s~0_combout\,
	dataf => \Xfull_add2|ALT_INV_s~combout\,
	combout => \vhdl1S1|Mux3~0_combout\);

-- Location: LABCELL_X88_Y11_N15
\vhdl1S1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1S1|Mux2~0_combout\ = ( \Xfull_add2|s~combout\ & ( (!\Xfull_add3|s~combout\ & ((!\Xfull_add1|s~combout\) # (\Xfull_add0|s~0_combout\))) ) ) # ( !\Xfull_add2|s~combout\ & ( (\Xfull_add0|s~0_combout\ & ((!\Xfull_add3|s~combout\) # 
-- (!\Xfull_add1|s~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Xfull_add3|ALT_INV_s~combout\,
	datab => \Xfull_add1|ALT_INV_s~combout\,
	datac => \Xfull_add0|ALT_INV_s~0_combout\,
	dataf => \Xfull_add2|ALT_INV_s~combout\,
	combout => \vhdl1S1|Mux2~0_combout\);

-- Location: LABCELL_X88_Y11_N24
\vhdl1S1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1S1|Mux1~0_combout\ = ( \Xfull_add2|s~combout\ & ( (\Xfull_add0|s~0_combout\ & (!\Xfull_add3|s~combout\ $ (!\Xfull_add1|s~combout\))) ) ) # ( !\Xfull_add2|s~combout\ & ( (!\Xfull_add3|s~combout\ & ((\Xfull_add0|s~0_combout\) # 
-- (\Xfull_add1|s~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Xfull_add3|ALT_INV_s~combout\,
	datab => \Xfull_add1|ALT_INV_s~combout\,
	datac => \Xfull_add0|ALT_INV_s~0_combout\,
	dataf => \Xfull_add2|ALT_INV_s~combout\,
	combout => \vhdl1S1|Mux1~0_combout\);

-- Location: LABCELL_X88_Y11_N51
\vhdl1S1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1S1|Mux0~0_combout\ = ( \Xfull_add2|s~combout\ & ( (!\Xfull_add3|s~combout\ & ((!\Xfull_add1|s~combout\) # (!\Xfull_add0|s~0_combout\))) # (\Xfull_add3|s~combout\ & ((\Xfull_add0|s~0_combout\) # (\Xfull_add1|s~combout\))) ) ) # ( 
-- !\Xfull_add2|s~combout\ & ( (\Xfull_add1|s~combout\) # (\Xfull_add3|s~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011110111101101111011011110110111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Xfull_add3|ALT_INV_s~combout\,
	datab => \Xfull_add1|ALT_INV_s~combout\,
	datac => \Xfull_add0|ALT_INV_s~0_combout\,
	dataf => \Xfull_add2|ALT_INV_s~combout\,
	combout => \vhdl1S1|Mux0~0_combout\);

-- Location: LABCELL_X88_Y12_N48
\vhdl1S2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1S2|Mux1~0_combout\ = ( \Xfull_add2|cout~0_combout\ & ( (!\B[4]~input_o\ & (!\A[4]~input_o\ $ (((!\A[3]~input_o\ & !\B[3]~input_o\))))) # (\B[4]~input_o\ & (!\A[4]~input_o\ & (!\A[3]~input_o\ & !\B[3]~input_o\))) ) ) # ( !\Xfull_add2|cout~0_combout\ 
-- & ( (!\B[4]~input_o\ & (!\A[4]~input_o\ $ (((!\A[3]~input_o\) # (!\B[3]~input_o\))))) # (\B[4]~input_o\ & (!\A[4]~input_o\ & ((!\A[3]~input_o\) # (!\B[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101000011001100110100001101000100010000110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Xfull_add2|ALT_INV_cout~0_combout\,
	combout => \vhdl1S2|Mux1~0_combout\);

-- Location: LABCELL_X88_Y12_N24
\vhdl1S2|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1S2|Mux1~1_combout\ = ( \Xfull_add2|cout~0_combout\ & ( (!\B[4]~input_o\ & (\A[4]~input_o\ & ((\B[3]~input_o\) # (\A[3]~input_o\)))) # (\B[4]~input_o\ & (!\A[4]~input_o\ $ (((!\A[3]~input_o\ & !\B[3]~input_o\))))) ) ) # ( !\Xfull_add2|cout~0_combout\ 
-- & ( (!\B[4]~input_o\ & (\A[4]~input_o\ & (\A[3]~input_o\ & \B[3]~input_o\))) # (\B[4]~input_o\ & (!\A[4]~input_o\ $ (((!\A[3]~input_o\) # (!\B[3]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010110000100010001011000010110011001100001011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Xfull_add2|ALT_INV_cout~0_combout\,
	combout => \vhdl1S2|Mux1~1_combout\);

-- Location: LABCELL_X88_Y12_N27
\Xfull_add4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \Xfull_add4|s~combout\ = ( \Xfull_add2|cout~0_combout\ & ( !\B[4]~input_o\ $ (!\A[4]~input_o\ $ (((\A[3]~input_o\) # (\B[3]~input_o\)))) ) ) # ( !\Xfull_add2|cout~0_combout\ & ( !\B[4]~input_o\ $ (!\A[4]~input_o\ $ (((\B[3]~input_o\ & \A[3]~input_o\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \Xfull_add2|ALT_INV_cout~0_combout\,
	combout => \Xfull_add4|s~combout\);

-- Location: LABCELL_X88_Y12_N54
\vhdl1S2|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \vhdl1S2|Mux1~2_combout\ = ( \Xfull_add2|cout~0_combout\ & ( (((\A[3]~input_o\) # (\A[4]~input_o\)) # (\B[3]~input_o\)) # (\B[4]~input_o\) ) ) # ( !\Xfull_add2|cout~0_combout\ & ( (((\B[3]~input_o\ & \A[3]~input_o\)) # (\A[4]~input_o\)) # (\B[4]~input_o\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101111111010111110111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \Xfull_add2|ALT_INV_cout~0_combout\,
	combout => \vhdl1S2|Mux1~2_combout\);

-- Location: LABCELL_X88_Y12_N51
\Xfull_add4|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Xfull_add4|cout~0_combout\ = ( \Xfull_add2|cout~0_combout\ & ( (!\B[4]~input_o\ & (\A[4]~input_o\ & ((\A[3]~input_o\) # (\B[3]~input_o\)))) # (\B[4]~input_o\ & (((\A[3]~input_o\) # (\B[3]~input_o\)) # (\A[4]~input_o\))) ) ) # ( 
-- !\Xfull_add2|cout~0_combout\ & ( (!\B[4]~input_o\ & (\A[4]~input_o\ & (\B[3]~input_o\ & \A[3]~input_o\))) # (\B[4]~input_o\ & (((\B[3]~input_o\ & \A[3]~input_o\)) # (\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100010111011101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \Xfull_add2|ALT_INV_cout~0_combout\,
	combout => \Xfull_add4|cout~0_combout\);

-- Location: LABCELL_X71_Y6_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


