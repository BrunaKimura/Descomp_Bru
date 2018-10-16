-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "10/11/2018 17:33:49"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA_Mips IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	sel : IN std_logic_vector(1 DOWNTO 0);
	selA : IN std_logic;
	selB : IN std_logic;
	cin : IN std_logic;
	R : OUT std_logic_vector(31 DOWNTO 0);
	ZERO : OUT std_logic
	);
END ULA_Mips;

ARCHITECTURE structure OF ULA_Mips IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_selA : std_logic;
SIGNAL ww_selB : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_R : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ZERO : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \R[4]~output_o\ : std_logic;
SIGNAL \R[5]~output_o\ : std_logic;
SIGNAL \R[6]~output_o\ : std_logic;
SIGNAL \R[7]~output_o\ : std_logic;
SIGNAL \R[8]~output_o\ : std_logic;
SIGNAL \R[9]~output_o\ : std_logic;
SIGNAL \R[10]~output_o\ : std_logic;
SIGNAL \R[11]~output_o\ : std_logic;
SIGNAL \R[12]~output_o\ : std_logic;
SIGNAL \R[13]~output_o\ : std_logic;
SIGNAL \R[14]~output_o\ : std_logic;
SIGNAL \R[15]~output_o\ : std_logic;
SIGNAL \R[16]~output_o\ : std_logic;
SIGNAL \R[17]~output_o\ : std_logic;
SIGNAL \R[18]~output_o\ : std_logic;
SIGNAL \R[19]~output_o\ : std_logic;
SIGNAL \R[20]~output_o\ : std_logic;
SIGNAL \R[21]~output_o\ : std_logic;
SIGNAL \R[22]~output_o\ : std_logic;
SIGNAL \R[23]~output_o\ : std_logic;
SIGNAL \R[24]~output_o\ : std_logic;
SIGNAL \R[25]~output_o\ : std_logic;
SIGNAL \R[26]~output_o\ : std_logic;
SIGNAL \R[27]~output_o\ : std_logic;
SIGNAL \R[28]~output_o\ : std_logic;
SIGNAL \R[29]~output_o\ : std_logic;
SIGNAL \R[30]~output_o\ : std_logic;
SIGNAL \R[31]~output_o\ : std_logic;
SIGNAL \ZERO~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \selA~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \selB~input_o\ : std_logic;
SIGNAL \Mux_B|q[0]~0_combout\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \Mux_A|q[0]~0_combout\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \Mux_4|q[0]~4_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \Mux_A|q[31]~1_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \Mux_B|q[30]~1_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \Mux_B|q[29]~2_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \Mux_B|q[28]~3_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \Mux_B|q[27]~4_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \Mux_B|q[26]~5_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \Mux_A|q[25]~2_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \Mux_B|q[25]~6_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \Mux_A|q[23]~3_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \Mux_B|q[23]~7_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \Mux_B|q[22]~8_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \Mux_B|q[21]~9_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \Mux_A|q[20]~4_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \Mux_B|q[20]~10_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \ULA|inter2[18]~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \Mux_B|q[17]~11_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \Mux_B|q[16]~12_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \Mux_B|q[15]~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Mux_B|q[14]~14_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Mux_A|q[13]~5_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Mux_B|q[13]~15_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Mux_A|q[11]~6_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Mux_B|q[11]~16_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \Mux_A|q[10]~7_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Mux_B|q[10]~17_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Mux_A|q[8]~8_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Mux_B|q[8]~18_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Mux_B|q[7]~19_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Mux_A|q[6]~9_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Mux_B|q[6]~20_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Mux_A|q[4]~10_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Mux_B|q[4]~21_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Mux_B|q[3]~22_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Mux_B|q[2]~23_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Mux_B|q[1]~24_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \ULA|inter2[5]~1_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \ULA|inter2[9]~2_combout\ : std_logic;
SIGNAL \ULA|inter2[12]~3_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \ULA|inter2[19]~4_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \ULA|inter2[24]~5_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \Mux_4|q[0]~5_combout\ : std_logic;
SIGNAL \Mux_4|q[1]~6_combout\ : std_logic;
SIGNAL \Mux_4|q[1]~7_combout\ : std_logic;
SIGNAL \Mux_4|q[2]~8_combout\ : std_logic;
SIGNAL \Mux_4|q[2]~9_combout\ : std_logic;
SIGNAL \Mux_4|q[3]~10_combout\ : std_logic;
SIGNAL \Mux_4|q[3]~11_combout\ : std_logic;
SIGNAL \Mux_4|q[4]~12_combout\ : std_logic;
SIGNAL \Mux_4|q[4]~13_combout\ : std_logic;
SIGNAL \Mux_B|q[5]~25_combout\ : std_logic;
SIGNAL \Mux_4|q[5]~14_combout\ : std_logic;
SIGNAL \Mux_4|q[5]~15_combout\ : std_logic;
SIGNAL \Mux_4|q[6]~16_combout\ : std_logic;
SIGNAL \Mux_4|q[6]~17_combout\ : std_logic;
SIGNAL \Mux_4|q[7]~18_combout\ : std_logic;
SIGNAL \Mux_4|q[7]~19_combout\ : std_logic;
SIGNAL \Mux_4|q[8]~20_combout\ : std_logic;
SIGNAL \Mux_4|q[8]~21_combout\ : std_logic;
SIGNAL \Mux_B|q[9]~26_combout\ : std_logic;
SIGNAL \Mux_4|q[9]~22_combout\ : std_logic;
SIGNAL \Mux_4|q[9]~23_combout\ : std_logic;
SIGNAL \Mux_4|q[10]~24_combout\ : std_logic;
SIGNAL \Mux_4|q[10]~25_combout\ : std_logic;
SIGNAL \Mux_4|q[11]~26_combout\ : std_logic;
SIGNAL \Mux_4|q[31]~27_combout\ : std_logic;
SIGNAL \Mux_4|q[11]~28_combout\ : std_logic;
SIGNAL \Mux_B|q[12]~27_combout\ : std_logic;
SIGNAL \Mux_4|q[12]~29_combout\ : std_logic;
SIGNAL \Mux_4|q[12]~30_combout\ : std_logic;
SIGNAL \Mux_4|q[13]~31_combout\ : std_logic;
SIGNAL \Mux_4|q[13]~32_combout\ : std_logic;
SIGNAL \Mux_4|q[14]~33_combout\ : std_logic;
SIGNAL \Mux_4|q[14]~34_combout\ : std_logic;
SIGNAL \Mux_4|q[15]~35_combout\ : std_logic;
SIGNAL \Mux_4|q[15]~36_combout\ : std_logic;
SIGNAL \Mux_4|q[16]~37_combout\ : std_logic;
SIGNAL \Mux_4|q[16]~38_combout\ : std_logic;
SIGNAL \Mux_4|q[17]~39_combout\ : std_logic;
SIGNAL \Mux_4|q[17]~40_combout\ : std_logic;
SIGNAL \Mux_A|q[18]~11_combout\ : std_logic;
SIGNAL \Mux_B|q[18]~28_combout\ : std_logic;
SIGNAL \Mux_4|q[18]~41_combout\ : std_logic;
SIGNAL \Mux_4|q[18]~42_combout\ : std_logic;
SIGNAL \Mux_B|q[19]~29_combout\ : std_logic;
SIGNAL \Mux_4|q[19]~43_combout\ : std_logic;
SIGNAL \Mux_4|q[19]~44_combout\ : std_logic;
SIGNAL \Mux_4|q[20]~45_combout\ : std_logic;
SIGNAL \Mux_4|q[20]~46_combout\ : std_logic;
SIGNAL \Mux_4|q[21]~47_combout\ : std_logic;
SIGNAL \Mux_4|q[21]~48_combout\ : std_logic;
SIGNAL \Mux_4|q[22]~49_combout\ : std_logic;
SIGNAL \Mux_4|q[22]~50_combout\ : std_logic;
SIGNAL \Mux_4|q[23]~51_combout\ : std_logic;
SIGNAL \Mux_4|q[23]~52_combout\ : std_logic;
SIGNAL \Mux_B|q[24]~30_combout\ : std_logic;
SIGNAL \Mux_4|q[24]~53_combout\ : std_logic;
SIGNAL \Mux_4|q[24]~54_combout\ : std_logic;
SIGNAL \Mux_4|q[25]~55_combout\ : std_logic;
SIGNAL \Mux_4|q[25]~56_combout\ : std_logic;
SIGNAL \Mux_4|q[26]~57_combout\ : std_logic;
SIGNAL \Mux_4|q[26]~58_combout\ : std_logic;
SIGNAL \Mux_4|q[27]~59_combout\ : std_logic;
SIGNAL \Mux_4|q[27]~60_combout\ : std_logic;
SIGNAL \Mux_4|q[28]~68_combout\ : std_logic;
SIGNAL \Mux_4|q[28]~61_combout\ : std_logic;
SIGNAL \Mux_4|q[28]~62_combout\ : std_logic;
SIGNAL \Mux_4|q[29]~63_combout\ : std_logic;
SIGNAL \Mux_4|q[29]~64_combout\ : std_logic;
SIGNAL \Mux_4|q[30]~65_combout\ : std_logic;
SIGNAL \Mux_4|q[30]~66_combout\ : std_logic;
SIGNAL \Mux_B|q[31]~31_combout\ : std_logic;
SIGNAL \Mux_4|q[31]~67_combout\ : std_logic;
SIGNAL \Mux_4|q[31]~69_combout\ : std_logic;
SIGNAL \ZERO~0_combout\ : std_logic;
SIGNAL \ZERO~1_combout\ : std_logic;
SIGNAL \ZERO~2_combout\ : std_logic;
SIGNAL \ZERO~3_combout\ : std_logic;
SIGNAL \ZERO~4_combout\ : std_logic;
SIGNAL \ZERO~5_combout\ : std_logic;
SIGNAL \ZERO~6_combout\ : std_logic;
SIGNAL \ZERO~7_combout\ : std_logic;
SIGNAL \ZERO~8_combout\ : std_logic;
SIGNAL \ZERO~9_combout\ : std_logic;
SIGNAL \ZERO~10_combout\ : std_logic;
SIGNAL \ZERO~11_combout\ : std_logic;
SIGNAL \ULA|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL SLT : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA|inter3\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA|cout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA|inter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_ZERO~11_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_sel <= sel;
ww_selA <= selA;
ww_selB <= selB;
ww_cin <= cin;
R <= ww_R;
ZERO <= ww_ZERO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ZERO~11_combout\ <= NOT \ZERO~11_combout\;

\R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[0]~5_combout\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[1]~7_combout\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[2]~9_combout\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[3]~11_combout\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

\R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[4]~13_combout\,
	devoe => ww_devoe,
	o => \R[4]~output_o\);

\R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[5]~15_combout\,
	devoe => ww_devoe,
	o => \R[5]~output_o\);

\R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[6]~17_combout\,
	devoe => ww_devoe,
	o => \R[6]~output_o\);

\R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[7]~19_combout\,
	devoe => ww_devoe,
	o => \R[7]~output_o\);

\R[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[8]~21_combout\,
	devoe => ww_devoe,
	o => \R[8]~output_o\);

\R[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[9]~23_combout\,
	devoe => ww_devoe,
	o => \R[9]~output_o\);

\R[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[10]~25_combout\,
	devoe => ww_devoe,
	o => \R[10]~output_o\);

\R[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[11]~28_combout\,
	devoe => ww_devoe,
	o => \R[11]~output_o\);

\R[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[12]~30_combout\,
	devoe => ww_devoe,
	o => \R[12]~output_o\);

\R[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[13]~32_combout\,
	devoe => ww_devoe,
	o => \R[13]~output_o\);

\R[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[14]~34_combout\,
	devoe => ww_devoe,
	o => \R[14]~output_o\);

\R[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[15]~36_combout\,
	devoe => ww_devoe,
	o => \R[15]~output_o\);

\R[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[16]~38_combout\,
	devoe => ww_devoe,
	o => \R[16]~output_o\);

\R[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[17]~40_combout\,
	devoe => ww_devoe,
	o => \R[17]~output_o\);

\R[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[18]~42_combout\,
	devoe => ww_devoe,
	o => \R[18]~output_o\);

\R[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[19]~44_combout\,
	devoe => ww_devoe,
	o => \R[19]~output_o\);

\R[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[20]~46_combout\,
	devoe => ww_devoe,
	o => \R[20]~output_o\);

\R[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[21]~48_combout\,
	devoe => ww_devoe,
	o => \R[21]~output_o\);

\R[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[22]~50_combout\,
	devoe => ww_devoe,
	o => \R[22]~output_o\);

\R[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[23]~52_combout\,
	devoe => ww_devoe,
	o => \R[23]~output_o\);

\R[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[24]~54_combout\,
	devoe => ww_devoe,
	o => \R[24]~output_o\);

\R[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[25]~56_combout\,
	devoe => ww_devoe,
	o => \R[25]~output_o\);

\R[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[26]~58_combout\,
	devoe => ww_devoe,
	o => \R[26]~output_o\);

\R[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[27]~60_combout\,
	devoe => ww_devoe,
	o => \R[27]~output_o\);

\R[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[28]~62_combout\,
	devoe => ww_devoe,
	o => \R[28]~output_o\);

\R[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[29]~64_combout\,
	devoe => ww_devoe,
	o => \R[29]~output_o\);

\R[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[30]~66_combout\,
	devoe => ww_devoe,
	o => \R[30]~output_o\);

\R[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux_4|q[31]~69_combout\,
	devoe => ww_devoe,
	o => \R[31]~output_o\);

\ZERO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ZERO~11_combout\,
	devoe => ww_devoe,
	o => \ZERO~output_o\);

\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\selA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selA,
	o => \selA~input_o\);

\cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\selB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selB,
	o => \selB~input_o\);

\Mux_B|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[0]~0_combout\ = \B[0]~input_o\ $ (\selB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \selB~input_o\,
	combout => \Mux_B|q[0]~0_combout\);

\ULA|q[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|q\(0) = \A[0]~input_o\ $ (\selA~input_o\ $ (\cin~input_o\ $ (\Mux_B|q[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \selA~input_o\,
	datac => \cin~input_o\,
	datad => \Mux_B|q[0]~0_combout\,
	combout => \ULA|q\(0));

\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

\Mux_A|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_A|q[0]~0_combout\ = \A[0]~input_o\ $ (\selA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \selA~input_o\,
	combout => \Mux_A|q[0]~0_combout\);

\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

\Mux_4|q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[0]~4_combout\ = (\Mux_B|q[0]~0_combout\ & ((\sel[0]~input_o\) # ((\Mux_A|q[0]~0_combout\ & !\sel[1]~input_o\)))) # (!\Mux_B|q[0]~0_combout\ & (\sel[0]~input_o\ & ((\Mux_A|q[0]~0_combout\) # (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_B|q[0]~0_combout\,
	datab => \Mux_A|q[0]~0_combout\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[0]~4_combout\);

\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

\Mux_A|q[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_A|q[31]~1_combout\ = \selA~input_o\ $ (\A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selA~input_o\,
	datad => \A[31]~input_o\,
	combout => \Mux_A|q[31]~1_combout\);

\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

\Mux_B|q[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[30]~1_combout\ = \selB~input_o\ $ (\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[30]~input_o\,
	combout => \Mux_B|q[30]~1_combout\);

\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

\Mux_B|q[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[29]~2_combout\ = \selB~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[29]~input_o\,
	combout => \Mux_B|q[29]~2_combout\);

\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

\Mux_B|q[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[28]~3_combout\ = \selB~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[28]~input_o\,
	combout => \Mux_B|q[28]~3_combout\);

\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

\Mux_B|q[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[27]~4_combout\ = \selB~input_o\ $ (\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[27]~input_o\,
	combout => \Mux_B|q[27]~4_combout\);

\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

\Mux_B|q[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[26]~5_combout\ = \selB~input_o\ $ (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[26]~input_o\,
	combout => \Mux_B|q[26]~5_combout\);

\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

\Mux_A|q[25]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_A|q[25]~2_combout\ = \selA~input_o\ $ (\A[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selA~input_o\,
	datad => \A[25]~input_o\,
	combout => \Mux_A|q[25]~2_combout\);

\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

\Mux_B|q[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[25]~6_combout\ = \selB~input_o\ $ (\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[25]~input_o\,
	combout => \Mux_B|q[25]~6_combout\);

\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

\ULA|inter[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter\(24) = \selA~input_o\ $ (\selB~input_o\ $ (\A[24]~input_o\ $ (\B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \selB~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \ULA|inter\(24));

\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

\Mux_A|q[23]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_A|q[23]~3_combout\ = \selA~input_o\ $ (\A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selA~input_o\,
	datad => \A[23]~input_o\,
	combout => \Mux_A|q[23]~3_combout\);

\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

\Mux_B|q[23]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[23]~7_combout\ = \selB~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[23]~input_o\,
	combout => \Mux_B|q[23]~7_combout\);

\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

\Mux_B|q[22]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[22]~8_combout\ = \selB~input_o\ $ (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[22]~input_o\,
	combout => \Mux_B|q[22]~8_combout\);

\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

\Mux_B|q[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[21]~9_combout\ = \selB~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[21]~input_o\,
	combout => \Mux_B|q[21]~9_combout\);

\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

\Mux_A|q[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_A|q[20]~4_combout\ = \selA~input_o\ $ (\A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selA~input_o\,
	datad => \A[20]~input_o\,
	combout => \Mux_A|q[20]~4_combout\);

\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

\Mux_B|q[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[20]~10_combout\ = \selB~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[20]~input_o\,
	combout => \Mux_B|q[20]~10_combout\);

\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

\ULA|inter[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter\(19) = \selA~input_o\ $ (\selB~input_o\ $ (\A[19]~input_o\ $ (\B[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \selB~input_o\,
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \ULA|inter\(19));

\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

\ULA|inter2[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter2[18]~0_combout\ = (\selA~input_o\ & (!\A[18]~input_o\ & (\selB~input_o\ $ (\B[18]~input_o\)))) # (!\selA~input_o\ & (\A[18]~input_o\ & (\selB~input_o\ $ (\B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[18]~input_o\,
	datac => \selB~input_o\,
	datad => \B[18]~input_o\,
	combout => \ULA|inter2[18]~0_combout\);

\ULA|inter[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter\(18) = \selA~input_o\ $ (\selB~input_o\ $ (\A[18]~input_o\ $ (\B[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \selB~input_o\,
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \ULA|inter\(18));

\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

\Mux_B|q[17]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[17]~11_combout\ = \selB~input_o\ $ (\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[17]~input_o\,
	combout => \Mux_B|q[17]~11_combout\);

\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

\Mux_B|q[16]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[16]~12_combout\ = \selB~input_o\ $ (\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[16]~input_o\,
	combout => \Mux_B|q[16]~12_combout\);

\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

\Mux_B|q[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[15]~13_combout\ = \selB~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[15]~input_o\,
	combout => \Mux_B|q[15]~13_combout\);

\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

\Mux_B|q[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[14]~14_combout\ = \selB~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[14]~input_o\,
	combout => \Mux_B|q[14]~14_combout\);

\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

\Mux_A|q[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_A|q[13]~5_combout\ = \selA~input_o\ $ (\A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selA~input_o\,
	datad => \A[13]~input_o\,
	combout => \Mux_A|q[13]~5_combout\);

\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

\Mux_B|q[13]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[13]~15_combout\ = \selB~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[13]~input_o\,
	combout => \Mux_B|q[13]~15_combout\);

\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

\ULA|inter[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter\(12) = \selA~input_o\ $ (\selB~input_o\ $ (\A[12]~input_o\ $ (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \selB~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \ULA|inter\(12));

\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

\Mux_A|q[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_A|q[11]~6_combout\ = \selA~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selA~input_o\,
	datad => \A[11]~input_o\,
	combout => \Mux_A|q[11]~6_combout\);

\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

\Mux_B|q[11]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[11]~16_combout\ = \selB~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[11]~input_o\,
	combout => \Mux_B|q[11]~16_combout\);

\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

\Mux_A|q[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_A|q[10]~7_combout\ = \selA~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selA~input_o\,
	datad => \A[10]~input_o\,
	combout => \Mux_A|q[10]~7_combout\);

\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

\Mux_B|q[10]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[10]~17_combout\ = \selB~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[10]~input_o\,
	combout => \Mux_B|q[10]~17_combout\);

\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

\ULA|inter[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter\(9) = \selA~input_o\ $ (\selB~input_o\ $ (\A[9]~input_o\ $ (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \selB~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \ULA|inter\(9));

\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

\Mux_A|q[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_A|q[8]~8_combout\ = \selA~input_o\ $ (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selA~input_o\,
	datad => \A[8]~input_o\,
	combout => \Mux_A|q[8]~8_combout\);

\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

\Mux_B|q[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[8]~18_combout\ = \selB~input_o\ $ (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[8]~input_o\,
	combout => \Mux_B|q[8]~18_combout\);

\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

\Mux_B|q[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[7]~19_combout\ = \selB~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[7]~input_o\,
	combout => \Mux_B|q[7]~19_combout\);

\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\Mux_A|q[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_A|q[6]~9_combout\ = \selA~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selA~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mux_A|q[6]~9_combout\);

\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\Mux_B|q[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[6]~20_combout\ = \selB~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[6]~input_o\,
	combout => \Mux_B|q[6]~20_combout\);

\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\ULA|inter[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter\(5) = \selA~input_o\ $ (\selB~input_o\ $ (\A[5]~input_o\ $ (\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \selB~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \ULA|inter\(5));

\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\Mux_A|q[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_A|q[4]~10_combout\ = \selA~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selA~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mux_A|q[4]~10_combout\);

\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\Mux_B|q[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[4]~21_combout\ = \selB~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux_B|q[4]~21_combout\);

\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\Mux_B|q[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[3]~22_combout\ = \selB~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux_B|q[3]~22_combout\);

\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\Mux_B|q[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[2]~23_combout\ = \selB~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux_B|q[2]~23_combout\);

\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\Mux_B|q[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[1]~24_combout\ = \selB~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mux_B|q[1]~24_combout\);

\ULA|cout[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(0) = (\cin~input_o\ & ((\Mux_A|q[0]~0_combout\) # (\B[0]~input_o\ $ (\selB~input_o\)))) # (!\cin~input_o\ & (\Mux_A|q[0]~0_combout\ & (\B[0]~input_o\ $ (\selB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cin~input_o\,
	datab => \Mux_A|q[0]~0_combout\,
	datac => \B[0]~input_o\,
	datad => \selB~input_o\,
	combout => \ULA|cout\(0));

\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\ULA|cout[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(1) = (\Mux_B|q[1]~24_combout\ & ((\ULA|cout\(0)) # (\selA~input_o\ $ (\A[1]~input_o\)))) # (!\Mux_B|q[1]~24_combout\ & (\ULA|cout\(0) & (\selA~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_B|q[1]~24_combout\,
	datab => \ULA|cout\(0),
	datac => \selA~input_o\,
	datad => \A[1]~input_o\,
	combout => \ULA|cout\(1));

\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\ULA|cout[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(2) = (\Mux_B|q[2]~23_combout\ & ((\ULA|cout\(1)) # (\selA~input_o\ $ (\A[2]~input_o\)))) # (!\Mux_B|q[2]~23_combout\ & (\ULA|cout\(1) & (\selA~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_B|q[2]~23_combout\,
	datab => \ULA|cout\(1),
	datac => \selA~input_o\,
	datad => \A[2]~input_o\,
	combout => \ULA|cout\(2));

\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\ULA|cout[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(3) = (\Mux_B|q[3]~22_combout\ & ((\ULA|cout\(2)) # (\selA~input_o\ $ (\A[3]~input_o\)))) # (!\Mux_B|q[3]~22_combout\ & (\ULA|cout\(2) & (\selA~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_B|q[3]~22_combout\,
	datab => \ULA|cout\(2),
	datac => \selA~input_o\,
	datad => \A[3]~input_o\,
	combout => \ULA|cout\(3));

\ULA|inter3[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter3\(5) = (\ULA|inter\(5) & ((\Mux_A|q[4]~10_combout\ & ((\Mux_B|q[4]~21_combout\) # (\ULA|cout\(3)))) # (!\Mux_A|q[4]~10_combout\ & (\Mux_B|q[4]~21_combout\ & \ULA|cout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|inter\(5),
	datab => \Mux_A|q[4]~10_combout\,
	datac => \Mux_B|q[4]~21_combout\,
	datad => \ULA|cout\(3),
	combout => \ULA|inter3\(5));

\ULA|inter2[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter2[5]~1_combout\ = (\selA~input_o\ & (!\A[5]~input_o\ & (\selB~input_o\ $ (\B[5]~input_o\)))) # (!\selA~input_o\ & (\A[5]~input_o\ & (\selB~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[5]~input_o\,
	datac => \selB~input_o\,
	datad => \B[5]~input_o\,
	combout => \ULA|inter2[5]~1_combout\);

\ULA|cout[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(6) = (\Mux_A|q[6]~9_combout\ & ((\Mux_B|q[6]~20_combout\) # ((\ULA|inter3\(5)) # (\ULA|inter2[5]~1_combout\)))) # (!\Mux_A|q[6]~9_combout\ & (\Mux_B|q[6]~20_combout\ & ((\ULA|inter3\(5)) # (\ULA|inter2[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_A|q[6]~9_combout\,
	datab => \Mux_B|q[6]~20_combout\,
	datac => \ULA|inter3\(5),
	datad => \ULA|inter2[5]~1_combout\,
	combout => \ULA|cout\(6));

\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\ULA|cout[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(7) = (\Mux_B|q[7]~19_combout\ & ((\ULA|cout\(6)) # (\selA~input_o\ $ (\A[7]~input_o\)))) # (!\Mux_B|q[7]~19_combout\ & (\ULA|cout\(6) & (\selA~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_B|q[7]~19_combout\,
	datab => \ULA|cout\(6),
	datac => \selA~input_o\,
	datad => \A[7]~input_o\,
	combout => \ULA|cout\(7));

\ULA|inter3[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter3\(9) = (\ULA|inter\(9) & ((\Mux_A|q[8]~8_combout\ & ((\Mux_B|q[8]~18_combout\) # (\ULA|cout\(7)))) # (!\Mux_A|q[8]~8_combout\ & (\Mux_B|q[8]~18_combout\ & \ULA|cout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|inter\(9),
	datab => \Mux_A|q[8]~8_combout\,
	datac => \Mux_B|q[8]~18_combout\,
	datad => \ULA|cout\(7),
	combout => \ULA|inter3\(9));

\ULA|inter2[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter2[9]~2_combout\ = (\selA~input_o\ & (!\A[9]~input_o\ & (\selB~input_o\ $ (\B[9]~input_o\)))) # (!\selA~input_o\ & (\A[9]~input_o\ & (\selB~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[9]~input_o\,
	datac => \selB~input_o\,
	datad => \B[9]~input_o\,
	combout => \ULA|inter2[9]~2_combout\);

\ULA|cout[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(10) = (\Mux_A|q[10]~7_combout\ & ((\Mux_B|q[10]~17_combout\) # ((\ULA|inter3\(9)) # (\ULA|inter2[9]~2_combout\)))) # (!\Mux_A|q[10]~7_combout\ & (\Mux_B|q[10]~17_combout\ & ((\ULA|inter3\(9)) # (\ULA|inter2[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_A|q[10]~7_combout\,
	datab => \Mux_B|q[10]~17_combout\,
	datac => \ULA|inter3\(9),
	datad => \ULA|inter2[9]~2_combout\,
	combout => \ULA|cout\(10));

\ULA|inter3[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter3\(12) = (\ULA|inter\(12) & ((\Mux_A|q[11]~6_combout\ & ((\Mux_B|q[11]~16_combout\) # (\ULA|cout\(10)))) # (!\Mux_A|q[11]~6_combout\ & (\Mux_B|q[11]~16_combout\ & \ULA|cout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|inter\(12),
	datab => \Mux_A|q[11]~6_combout\,
	datac => \Mux_B|q[11]~16_combout\,
	datad => \ULA|cout\(10),
	combout => \ULA|inter3\(12));

\ULA|inter2[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter2[12]~3_combout\ = (\selA~input_o\ & (!\A[12]~input_o\ & (\selB~input_o\ $ (\B[12]~input_o\)))) # (!\selA~input_o\ & (\A[12]~input_o\ & (\selB~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[12]~input_o\,
	datac => \selB~input_o\,
	datad => \B[12]~input_o\,
	combout => \ULA|inter2[12]~3_combout\);

\ULA|cout[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(13) = (\Mux_A|q[13]~5_combout\ & ((\Mux_B|q[13]~15_combout\) # ((\ULA|inter3\(12)) # (\ULA|inter2[12]~3_combout\)))) # (!\Mux_A|q[13]~5_combout\ & (\Mux_B|q[13]~15_combout\ & ((\ULA|inter3\(12)) # (\ULA|inter2[12]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_A|q[13]~5_combout\,
	datab => \Mux_B|q[13]~15_combout\,
	datac => \ULA|inter3\(12),
	datad => \ULA|inter2[12]~3_combout\,
	combout => \ULA|cout\(13));

\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

\ULA|cout[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(14) = (\Mux_B|q[14]~14_combout\ & ((\ULA|cout\(13)) # (\selA~input_o\ $ (\A[14]~input_o\)))) # (!\Mux_B|q[14]~14_combout\ & (\ULA|cout\(13) & (\selA~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_B|q[14]~14_combout\,
	datab => \ULA|cout\(13),
	datac => \selA~input_o\,
	datad => \A[14]~input_o\,
	combout => \ULA|cout\(14));

\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

\ULA|cout[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(15) = (\Mux_B|q[15]~13_combout\ & ((\ULA|cout\(14)) # (\selA~input_o\ $ (\A[15]~input_o\)))) # (!\Mux_B|q[15]~13_combout\ & (\ULA|cout\(14) & (\selA~input_o\ $ (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_B|q[15]~13_combout\,
	datab => \ULA|cout\(14),
	datac => \selA~input_o\,
	datad => \A[15]~input_o\,
	combout => \ULA|cout\(15));

\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

\ULA|cout[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(16) = (\Mux_B|q[16]~12_combout\ & ((\ULA|cout\(15)) # (\selA~input_o\ $ (\A[16]~input_o\)))) # (!\Mux_B|q[16]~12_combout\ & (\ULA|cout\(15) & (\selA~input_o\ $ (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_B|q[16]~12_combout\,
	datab => \ULA|cout\(15),
	datac => \selA~input_o\,
	datad => \A[16]~input_o\,
	combout => \ULA|cout\(16));

\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

\ULA|cout[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(17) = (\Mux_B|q[17]~11_combout\ & ((\ULA|cout\(16)) # (\selA~input_o\ $ (\A[17]~input_o\)))) # (!\Mux_B|q[17]~11_combout\ & (\ULA|cout\(16) & (\selA~input_o\ $ (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_B|q[17]~11_combout\,
	datab => \ULA|cout\(16),
	datac => \selA~input_o\,
	datad => \A[17]~input_o\,
	combout => \ULA|cout\(17));

\ULA|inter3[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter3\(19) = (\ULA|inter\(19) & ((\ULA|inter2[18]~0_combout\) # ((\ULA|inter\(18) & \ULA|cout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|inter\(19),
	datab => \ULA|inter2[18]~0_combout\,
	datac => \ULA|inter\(18),
	datad => \ULA|cout\(17),
	combout => \ULA|inter3\(19));

\ULA|inter2[19]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter2[19]~4_combout\ = (\selA~input_o\ & (!\A[19]~input_o\ & (\selB~input_o\ $ (\B[19]~input_o\)))) # (!\selA~input_o\ & (\A[19]~input_o\ & (\selB~input_o\ $ (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[19]~input_o\,
	datac => \selB~input_o\,
	datad => \B[19]~input_o\,
	combout => \ULA|inter2[19]~4_combout\);

\ULA|cout[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(20) = (\Mux_A|q[20]~4_combout\ & ((\Mux_B|q[20]~10_combout\) # ((\ULA|inter3\(19)) # (\ULA|inter2[19]~4_combout\)))) # (!\Mux_A|q[20]~4_combout\ & (\Mux_B|q[20]~10_combout\ & ((\ULA|inter3\(19)) # (\ULA|inter2[19]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_A|q[20]~4_combout\,
	datab => \Mux_B|q[20]~10_combout\,
	datac => \ULA|inter3\(19),
	datad => \ULA|inter2[19]~4_combout\,
	combout => \ULA|cout\(20));

\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

\ULA|cout[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(21) = (\Mux_B|q[21]~9_combout\ & ((\ULA|cout\(20)) # (\selA~input_o\ $ (\A[21]~input_o\)))) # (!\Mux_B|q[21]~9_combout\ & (\ULA|cout\(20) & (\selA~input_o\ $ (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_B|q[21]~9_combout\,
	datab => \ULA|cout\(20),
	datac => \selA~input_o\,
	datad => \A[21]~input_o\,
	combout => \ULA|cout\(21));

\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

\ULA|cout[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(22) = (\Mux_B|q[22]~8_combout\ & ((\ULA|cout\(21)) # (\selA~input_o\ $ (\A[22]~input_o\)))) # (!\Mux_B|q[22]~8_combout\ & (\ULA|cout\(21) & (\selA~input_o\ $ (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_B|q[22]~8_combout\,
	datab => \ULA|cout\(21),
	datac => \selA~input_o\,
	datad => \A[22]~input_o\,
	combout => \ULA|cout\(22));

\ULA|inter3[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter3\(24) = (\ULA|inter\(24) & ((\Mux_A|q[23]~3_combout\ & ((\Mux_B|q[23]~7_combout\) # (\ULA|cout\(22)))) # (!\Mux_A|q[23]~3_combout\ & (\Mux_B|q[23]~7_combout\ & \ULA|cout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|inter\(24),
	datab => \Mux_A|q[23]~3_combout\,
	datac => \Mux_B|q[23]~7_combout\,
	datad => \ULA|cout\(22),
	combout => \ULA|inter3\(24));

\ULA|inter2[24]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter2[24]~5_combout\ = (\selA~input_o\ & (!\A[24]~input_o\ & (\selB~input_o\ $ (\B[24]~input_o\)))) # (!\selA~input_o\ & (\A[24]~input_o\ & (\selB~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[24]~input_o\,
	datac => \selB~input_o\,
	datad => \B[24]~input_o\,
	combout => \ULA|inter2[24]~5_combout\);

\ULA|cout[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(25) = (\Mux_A|q[25]~2_combout\ & ((\Mux_B|q[25]~6_combout\) # ((\ULA|inter3\(24)) # (\ULA|inter2[24]~5_combout\)))) # (!\Mux_A|q[25]~2_combout\ & (\Mux_B|q[25]~6_combout\ & ((\ULA|inter3\(24)) # (\ULA|inter2[24]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_A|q[25]~2_combout\,
	datab => \Mux_B|q[25]~6_combout\,
	datac => \ULA|inter3\(24),
	datad => \ULA|inter2[24]~5_combout\,
	combout => \ULA|cout\(25));

\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

\ULA|cout[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(26) = (\Mux_B|q[26]~5_combout\ & ((\ULA|cout\(25)) # (\selA~input_o\ $ (\A[26]~input_o\)))) # (!\Mux_B|q[26]~5_combout\ & (\ULA|cout\(25) & (\selA~input_o\ $ (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_B|q[26]~5_combout\,
	datab => \ULA|cout\(25),
	datac => \selA~input_o\,
	datad => \A[26]~input_o\,
	combout => \ULA|cout\(26));

\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

\ULA|cout[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(27) = (\Mux_B|q[27]~4_combout\ & ((\ULA|cout\(26)) # (\selA~input_o\ $ (\A[27]~input_o\)))) # (!\Mux_B|q[27]~4_combout\ & (\ULA|cout\(26) & (\selA~input_o\ $ (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_B|q[27]~4_combout\,
	datab => \ULA|cout\(26),
	datac => \selA~input_o\,
	datad => \A[27]~input_o\,
	combout => \ULA|cout\(27));

\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

\ULA|cout[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(28) = (\Mux_B|q[28]~3_combout\ & ((\ULA|cout\(27)) # (\selA~input_o\ $ (\A[28]~input_o\)))) # (!\Mux_B|q[28]~3_combout\ & (\ULA|cout\(27) & (\selA~input_o\ $ (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_B|q[28]~3_combout\,
	datab => \ULA|cout\(27),
	datac => \selA~input_o\,
	datad => \A[28]~input_o\,
	combout => \ULA|cout\(28));

\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

\ULA|cout[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(29) = (\Mux_B|q[29]~2_combout\ & ((\ULA|cout\(28)) # (\selA~input_o\ $ (\A[29]~input_o\)))) # (!\Mux_B|q[29]~2_combout\ & (\ULA|cout\(28) & (\selA~input_o\ $ (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_B|q[29]~2_combout\,
	datab => \ULA|cout\(28),
	datac => \selA~input_o\,
	datad => \A[29]~input_o\,
	combout => \ULA|cout\(29));

\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

\ULA|cout[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|cout\(30) = (\Mux_B|q[30]~1_combout\ & ((\ULA|cout\(29)) # (\selA~input_o\ $ (\A[30]~input_o\)))) # (!\Mux_B|q[30]~1_combout\ & (\ULA|cout\(29) & (\selA~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_B|q[30]~1_combout\,
	datab => \ULA|cout\(29),
	datac => \selA~input_o\,
	datad => \A[30]~input_o\,
	combout => \ULA|cout\(30));

\SLT[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- SLT(0) = (\Mux_A|q[31]~1_combout\ & ((\selB~input_o\ $ (\B[31]~input_o\)) # (!\ULA|cout\(30)))) # (!\Mux_A|q[31]~1_combout\ & (!\ULA|cout\(30) & (\selB~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_A|q[31]~1_combout\,
	datab => \selB~input_o\,
	datac => \B[31]~input_o\,
	datad => \ULA|cout\(30),
	combout => SLT(0));

\Mux_4|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[0]~5_combout\ = (\sel[1]~input_o\ & ((\Mux_4|q[0]~4_combout\ & ((SLT(0)))) # (!\Mux_4|q[0]~4_combout\ & (\ULA|q\(0))))) # (!\sel[1]~input_o\ & (((\Mux_4|q[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|q\(0),
	datab => \sel[1]~input_o\,
	datac => \Mux_4|q[0]~4_combout\,
	datad => SLT(0),
	combout => \Mux_4|q[0]~5_combout\);

\Mux_4|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[1]~6_combout\ = \selA~input_o\ $ (\A[1]~input_o\ $ (((\ULA|cout\(0) & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[1]~input_o\,
	datac => \ULA|cout\(0),
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[1]~6_combout\);

\Mux_4|q[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[1]~7_combout\ = (\Mux_B|q[1]~24_combout\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\Mux_4|q[1]~6_combout\))))) # (!\Mux_B|q[1]~24_combout\ & (\Mux_4|q[1]~6_combout\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[1]~24_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux_4|q[1]~6_combout\,
	combout => \Mux_4|q[1]~7_combout\);

\Mux_4|q[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[2]~8_combout\ = \selA~input_o\ $ (\A[2]~input_o\ $ (((\ULA|cout\(1) & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[2]~input_o\,
	datac => \ULA|cout\(1),
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[2]~8_combout\);

\Mux_4|q[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[2]~9_combout\ = (\Mux_B|q[2]~23_combout\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\Mux_4|q[2]~8_combout\))))) # (!\Mux_B|q[2]~23_combout\ & (\Mux_4|q[2]~8_combout\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[2]~23_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux_4|q[2]~8_combout\,
	combout => \Mux_4|q[2]~9_combout\);

\Mux_4|q[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[3]~10_combout\ = \selA~input_o\ $ (\A[3]~input_o\ $ (((\ULA|cout\(2) & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[3]~input_o\,
	datac => \ULA|cout\(2),
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[3]~10_combout\);

\Mux_4|q[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[3]~11_combout\ = (\Mux_B|q[3]~22_combout\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\Mux_4|q[3]~10_combout\))))) # (!\Mux_B|q[3]~22_combout\ & (\Mux_4|q[3]~10_combout\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[3]~22_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux_4|q[3]~10_combout\,
	combout => \Mux_4|q[3]~11_combout\);

\Mux_4|q[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[4]~12_combout\ = \selA~input_o\ $ (\A[4]~input_o\ $ (((\ULA|cout\(3) & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[4]~input_o\,
	datac => \ULA|cout\(3),
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[4]~12_combout\);

\Mux_4|q[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[4]~13_combout\ = (\Mux_B|q[4]~21_combout\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\Mux_4|q[4]~12_combout\))))) # (!\Mux_B|q[4]~21_combout\ & (\Mux_4|q[4]~12_combout\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[4]~21_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux_4|q[4]~12_combout\,
	combout => \Mux_4|q[4]~13_combout\);

\Mux_B|q[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[5]~25_combout\ = \selB~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux_B|q[5]~25_combout\);

\Mux_4|q[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[5]~14_combout\ = (\sel[0]~input_o\ & ((\Mux_B|q[5]~25_combout\) # (\selA~input_o\ $ (\A[5]~input_o\)))) # (!\sel[0]~input_o\ & (\Mux_B|q[5]~25_combout\ & (\selA~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[5]~25_combout\,
	datac => \selA~input_o\,
	datad => \A[5]~input_o\,
	combout => \Mux_4|q[5]~14_combout\);

\ULA|q[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|q\(5) = \ULA|inter\(5) $ (((\Mux_A|q[4]~10_combout\ & ((\Mux_B|q[4]~21_combout\) # (\ULA|cout\(3)))) # (!\Mux_A|q[4]~10_combout\ & (\Mux_B|q[4]~21_combout\ & \ULA|cout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_A|q[4]~10_combout\,
	datab => \Mux_B|q[4]~21_combout\,
	datac => \ULA|cout\(3),
	datad => \ULA|inter\(5),
	combout => \ULA|q\(5));

\Mux_4|q[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[5]~15_combout\ = (\sel[1]~input_o\ & (((\ULA|q\(5) & !\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\Mux_4|q[5]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[5]~14_combout\,
	datab => \ULA|q\(5),
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux_4|q[5]~15_combout\);

\Mux_4|q[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[6]~16_combout\ = (\sel[0]~input_o\ & ((\Mux_B|q[6]~20_combout\) # (\selA~input_o\ $ (\A[6]~input_o\)))) # (!\sel[0]~input_o\ & (\Mux_B|q[6]~20_combout\ & (\selA~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[6]~20_combout\,
	datac => \selA~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mux_4|q[6]~16_combout\);

\ULA|q[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|q\(6) = \Mux_A|q[6]~9_combout\ $ (\Mux_B|q[6]~20_combout\ $ (((\ULA|inter3\(5)) # (\ULA|inter2[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_A|q[6]~9_combout\,
	datab => \Mux_B|q[6]~20_combout\,
	datac => \ULA|inter3\(5),
	datad => \ULA|inter2[5]~1_combout\,
	combout => \ULA|q\(6));

\Mux_4|q[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[6]~17_combout\ = (\sel[1]~input_o\ & (((\ULA|q\(6) & !\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\Mux_4|q[6]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[6]~16_combout\,
	datab => \ULA|q\(6),
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux_4|q[6]~17_combout\);

\Mux_4|q[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[7]~18_combout\ = \selA~input_o\ $ (\A[7]~input_o\ $ (((\ULA|cout\(6) & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[7]~input_o\,
	datac => \ULA|cout\(6),
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[7]~18_combout\);

\Mux_4|q[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[7]~19_combout\ = (\Mux_B|q[7]~19_combout\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\Mux_4|q[7]~18_combout\))))) # (!\Mux_B|q[7]~19_combout\ & (\Mux_4|q[7]~18_combout\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[7]~19_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux_4|q[7]~18_combout\,
	combout => \Mux_4|q[7]~19_combout\);

\Mux_4|q[8]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[8]~20_combout\ = \selA~input_o\ $ (\A[8]~input_o\ $ (((\ULA|cout\(7) & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[8]~input_o\,
	datac => \ULA|cout\(7),
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[8]~20_combout\);

\Mux_4|q[8]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[8]~21_combout\ = (\Mux_B|q[8]~18_combout\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\Mux_4|q[8]~20_combout\))))) # (!\Mux_B|q[8]~18_combout\ & (\Mux_4|q[8]~20_combout\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[8]~18_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux_4|q[8]~20_combout\,
	combout => \Mux_4|q[8]~21_combout\);

\Mux_B|q[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[9]~26_combout\ = \selB~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[9]~input_o\,
	combout => \Mux_B|q[9]~26_combout\);

\Mux_4|q[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[9]~22_combout\ = (\sel[0]~input_o\ & ((\Mux_B|q[9]~26_combout\) # (\selA~input_o\ $ (\A[9]~input_o\)))) # (!\sel[0]~input_o\ & (\Mux_B|q[9]~26_combout\ & (\selA~input_o\ $ (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[9]~26_combout\,
	datac => \selA~input_o\,
	datad => \A[9]~input_o\,
	combout => \Mux_4|q[9]~22_combout\);

\ULA|q[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|q\(9) = \ULA|inter\(9) $ (((\Mux_A|q[8]~8_combout\ & ((\Mux_B|q[8]~18_combout\) # (\ULA|cout\(7)))) # (!\Mux_A|q[8]~8_combout\ & (\Mux_B|q[8]~18_combout\ & \ULA|cout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_A|q[8]~8_combout\,
	datab => \Mux_B|q[8]~18_combout\,
	datac => \ULA|cout\(7),
	datad => \ULA|inter\(9),
	combout => \ULA|q\(9));

\Mux_4|q[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[9]~23_combout\ = (\sel[1]~input_o\ & (((\ULA|q\(9) & !\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\Mux_4|q[9]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[9]~22_combout\,
	datab => \ULA|q\(9),
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux_4|q[9]~23_combout\);

\Mux_4|q[10]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[10]~24_combout\ = (\sel[0]~input_o\ & ((\Mux_B|q[10]~17_combout\) # (\selA~input_o\ $ (\A[10]~input_o\)))) # (!\sel[0]~input_o\ & (\Mux_B|q[10]~17_combout\ & (\selA~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[10]~17_combout\,
	datac => \selA~input_o\,
	datad => \A[10]~input_o\,
	combout => \Mux_4|q[10]~24_combout\);

\ULA|q[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|q\(10) = \Mux_A|q[10]~7_combout\ $ (\Mux_B|q[10]~17_combout\ $ (((\ULA|inter3\(9)) # (\ULA|inter2[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_A|q[10]~7_combout\,
	datab => \Mux_B|q[10]~17_combout\,
	datac => \ULA|inter3\(9),
	datad => \ULA|inter2[9]~2_combout\,
	combout => \ULA|q\(10));

\Mux_4|q[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[10]~25_combout\ = (\sel[1]~input_o\ & (((\ULA|q\(10) & !\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\Mux_4|q[10]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[10]~24_combout\,
	datab => \ULA|q\(10),
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux_4|q[10]~25_combout\);

\Mux_4|q[11]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[11]~26_combout\ = (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\Mux_A|q[11]~6_combout\) # (\Mux_B|q[11]~16_combout\))) # (!\sel[0]~input_o\ & (\Mux_A|q[11]~6_combout\ & \Mux_B|q[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_A|q[11]~6_combout\,
	datac => \Mux_B|q[11]~16_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[11]~26_combout\);

\Mux_4|q[31]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[31]~27_combout\ = (\sel[1]~input_o\ & !\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux_4|q[31]~27_combout\);

\ULA|inter[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter\(11) = \selA~input_o\ $ (\selB~input_o\ $ (\A[11]~input_o\ $ (\B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \selB~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \ULA|inter\(11));

\Mux_4|q[11]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[11]~28_combout\ = (\Mux_4|q[11]~26_combout\) # ((\Mux_4|q[31]~27_combout\ & (\ULA|inter\(11) $ (\ULA|cout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[11]~26_combout\,
	datab => \Mux_4|q[31]~27_combout\,
	datac => \ULA|inter\(11),
	datad => \ULA|cout\(10),
	combout => \Mux_4|q[11]~28_combout\);

\Mux_B|q[12]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[12]~27_combout\ = \selB~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[12]~input_o\,
	combout => \Mux_B|q[12]~27_combout\);

\Mux_4|q[12]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[12]~29_combout\ = (\sel[0]~input_o\ & ((\Mux_B|q[12]~27_combout\) # (\selA~input_o\ $ (\A[12]~input_o\)))) # (!\sel[0]~input_o\ & (\Mux_B|q[12]~27_combout\ & (\selA~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[12]~27_combout\,
	datac => \selA~input_o\,
	datad => \A[12]~input_o\,
	combout => \Mux_4|q[12]~29_combout\);

\ULA|q[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|q\(12) = \ULA|inter\(12) $ (((\Mux_A|q[11]~6_combout\ & ((\Mux_B|q[11]~16_combout\) # (\ULA|cout\(10)))) # (!\Mux_A|q[11]~6_combout\ & (\Mux_B|q[11]~16_combout\ & \ULA|cout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_A|q[11]~6_combout\,
	datab => \Mux_B|q[11]~16_combout\,
	datac => \ULA|cout\(10),
	datad => \ULA|inter\(12),
	combout => \ULA|q\(12));

\Mux_4|q[12]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[12]~30_combout\ = (\sel[1]~input_o\ & (((\ULA|q\(12) & !\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\Mux_4|q[12]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[12]~29_combout\,
	datab => \ULA|q\(12),
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux_4|q[12]~30_combout\);

\Mux_4|q[13]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[13]~31_combout\ = (\sel[0]~input_o\ & ((\Mux_B|q[13]~15_combout\) # (\selA~input_o\ $ (\A[13]~input_o\)))) # (!\sel[0]~input_o\ & (\Mux_B|q[13]~15_combout\ & (\selA~input_o\ $ (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[13]~15_combout\,
	datac => \selA~input_o\,
	datad => \A[13]~input_o\,
	combout => \Mux_4|q[13]~31_combout\);

\ULA|q[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|q\(13) = \Mux_A|q[13]~5_combout\ $ (\Mux_B|q[13]~15_combout\ $ (((\ULA|inter3\(12)) # (\ULA|inter2[12]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_A|q[13]~5_combout\,
	datab => \Mux_B|q[13]~15_combout\,
	datac => \ULA|inter3\(12),
	datad => \ULA|inter2[12]~3_combout\,
	combout => \ULA|q\(13));

\Mux_4|q[13]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[13]~32_combout\ = (\sel[1]~input_o\ & (((\ULA|q\(13) & !\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\Mux_4|q[13]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[13]~31_combout\,
	datab => \ULA|q\(13),
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux_4|q[13]~32_combout\);

\Mux_4|q[14]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[14]~33_combout\ = \selA~input_o\ $ (\A[14]~input_o\ $ (((\ULA|cout\(13) & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[14]~input_o\,
	datac => \ULA|cout\(13),
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[14]~33_combout\);

\Mux_4|q[14]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[14]~34_combout\ = (\Mux_B|q[14]~14_combout\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\Mux_4|q[14]~33_combout\))))) # (!\Mux_B|q[14]~14_combout\ & (\Mux_4|q[14]~33_combout\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[14]~14_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux_4|q[14]~33_combout\,
	combout => \Mux_4|q[14]~34_combout\);

\Mux_4|q[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[15]~35_combout\ = \selA~input_o\ $ (\A[15]~input_o\ $ (((\ULA|cout\(14) & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[15]~input_o\,
	datac => \ULA|cout\(14),
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[15]~35_combout\);

\Mux_4|q[15]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[15]~36_combout\ = (\Mux_B|q[15]~13_combout\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\Mux_4|q[15]~35_combout\))))) # (!\Mux_B|q[15]~13_combout\ & (\Mux_4|q[15]~35_combout\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[15]~13_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux_4|q[15]~35_combout\,
	combout => \Mux_4|q[15]~36_combout\);

\Mux_4|q[16]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[16]~37_combout\ = \selA~input_o\ $ (\A[16]~input_o\ $ (((\ULA|cout\(15) & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[16]~input_o\,
	datac => \ULA|cout\(15),
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[16]~37_combout\);

\Mux_4|q[16]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[16]~38_combout\ = (\Mux_B|q[16]~12_combout\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\Mux_4|q[16]~37_combout\))))) # (!\Mux_B|q[16]~12_combout\ & (\Mux_4|q[16]~37_combout\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[16]~12_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux_4|q[16]~37_combout\,
	combout => \Mux_4|q[16]~38_combout\);

\Mux_4|q[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[17]~39_combout\ = \selA~input_o\ $ (\A[17]~input_o\ $ (((\ULA|cout\(16) & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[17]~input_o\,
	datac => \ULA|cout\(16),
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[17]~39_combout\);

\Mux_4|q[17]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[17]~40_combout\ = (\Mux_B|q[17]~11_combout\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\Mux_4|q[17]~39_combout\))))) # (!\Mux_B|q[17]~11_combout\ & (\Mux_4|q[17]~39_combout\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[17]~11_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux_4|q[17]~39_combout\,
	combout => \Mux_4|q[17]~40_combout\);

\Mux_A|q[18]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_A|q[18]~11_combout\ = \selA~input_o\ $ (\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selA~input_o\,
	datad => \A[18]~input_o\,
	combout => \Mux_A|q[18]~11_combout\);

\Mux_B|q[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[18]~28_combout\ = \selB~input_o\ $ (\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[18]~input_o\,
	combout => \Mux_B|q[18]~28_combout\);

\Mux_4|q[18]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[18]~41_combout\ = (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\Mux_A|q[18]~11_combout\) # (\Mux_B|q[18]~28_combout\))) # (!\sel[0]~input_o\ & (\Mux_A|q[18]~11_combout\ & \Mux_B|q[18]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_A|q[18]~11_combout\,
	datac => \Mux_B|q[18]~28_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[18]~41_combout\);

\Mux_4|q[18]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[18]~42_combout\ = (\Mux_4|q[18]~41_combout\) # ((\Mux_4|q[31]~27_combout\ & (\ULA|inter\(18) $ (\ULA|cout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[18]~41_combout\,
	datab => \Mux_4|q[31]~27_combout\,
	datac => \ULA|inter\(18),
	datad => \ULA|cout\(17),
	combout => \Mux_4|q[18]~42_combout\);

\Mux_B|q[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[19]~29_combout\ = \selB~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[19]~input_o\,
	combout => \Mux_B|q[19]~29_combout\);

\Mux_4|q[19]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[19]~43_combout\ = (\sel[0]~input_o\ & ((\Mux_B|q[19]~29_combout\) # (\selA~input_o\ $ (\A[19]~input_o\)))) # (!\sel[0]~input_o\ & (\Mux_B|q[19]~29_combout\ & (\selA~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[19]~29_combout\,
	datac => \selA~input_o\,
	datad => \A[19]~input_o\,
	combout => \Mux_4|q[19]~43_combout\);

\ULA|q[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|q\(19) = \ULA|inter\(19) $ (((\ULA|inter2[18]~0_combout\) # ((\ULA|inter\(18) & \ULA|cout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|inter\(18),
	datab => \ULA|cout\(17),
	datac => \ULA|inter2[18]~0_combout\,
	datad => \ULA|inter\(19),
	combout => \ULA|q\(19));

\Mux_4|q[19]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[19]~44_combout\ = (\sel[1]~input_o\ & (((\ULA|q\(19) & !\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\Mux_4|q[19]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[19]~43_combout\,
	datab => \ULA|q\(19),
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux_4|q[19]~44_combout\);

\Mux_4|q[20]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[20]~45_combout\ = (\sel[0]~input_o\ & ((\Mux_B|q[20]~10_combout\) # (\selA~input_o\ $ (\A[20]~input_o\)))) # (!\sel[0]~input_o\ & (\Mux_B|q[20]~10_combout\ & (\selA~input_o\ $ (\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[20]~10_combout\,
	datac => \selA~input_o\,
	datad => \A[20]~input_o\,
	combout => \Mux_4|q[20]~45_combout\);

\ULA|q[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|q\(20) = \Mux_A|q[20]~4_combout\ $ (\Mux_B|q[20]~10_combout\ $ (((\ULA|inter3\(19)) # (\ULA|inter2[19]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_A|q[20]~4_combout\,
	datab => \Mux_B|q[20]~10_combout\,
	datac => \ULA|inter3\(19),
	datad => \ULA|inter2[19]~4_combout\,
	combout => \ULA|q\(20));

\Mux_4|q[20]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[20]~46_combout\ = (\sel[1]~input_o\ & (((\ULA|q\(20) & !\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\Mux_4|q[20]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[20]~45_combout\,
	datab => \ULA|q\(20),
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux_4|q[20]~46_combout\);

\Mux_4|q[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[21]~47_combout\ = \selA~input_o\ $ (\A[21]~input_o\ $ (((\ULA|cout\(20) & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[21]~input_o\,
	datac => \ULA|cout\(20),
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[21]~47_combout\);

\Mux_4|q[21]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[21]~48_combout\ = (\Mux_B|q[21]~9_combout\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\Mux_4|q[21]~47_combout\))))) # (!\Mux_B|q[21]~9_combout\ & (\Mux_4|q[21]~47_combout\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[21]~9_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux_4|q[21]~47_combout\,
	combout => \Mux_4|q[21]~48_combout\);

\Mux_4|q[22]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[22]~49_combout\ = \selA~input_o\ $ (\A[22]~input_o\ $ (((\ULA|cout\(21) & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[22]~input_o\,
	datac => \ULA|cout\(21),
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[22]~49_combout\);

\Mux_4|q[22]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[22]~50_combout\ = (\Mux_B|q[22]~8_combout\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\Mux_4|q[22]~49_combout\))))) # (!\Mux_B|q[22]~8_combout\ & (\Mux_4|q[22]~49_combout\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[22]~8_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux_4|q[22]~49_combout\,
	combout => \Mux_4|q[22]~50_combout\);

\Mux_4|q[23]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[23]~51_combout\ = (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\Mux_A|q[23]~3_combout\) # (\Mux_B|q[23]~7_combout\))) # (!\sel[0]~input_o\ & (\Mux_A|q[23]~3_combout\ & \Mux_B|q[23]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_A|q[23]~3_combout\,
	datac => \Mux_B|q[23]~7_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[23]~51_combout\);

\ULA|inter[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter\(23) = \selA~input_o\ $ (\selB~input_o\ $ (\A[23]~input_o\ $ (\B[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \selB~input_o\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \ULA|inter\(23));

\Mux_4|q[23]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[23]~52_combout\ = (\Mux_4|q[23]~51_combout\) # ((\Mux_4|q[31]~27_combout\ & (\ULA|inter\(23) $ (\ULA|cout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[23]~51_combout\,
	datab => \Mux_4|q[31]~27_combout\,
	datac => \ULA|inter\(23),
	datad => \ULA|cout\(22),
	combout => \Mux_4|q[23]~52_combout\);

\Mux_B|q[24]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[24]~30_combout\ = \selB~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[24]~input_o\,
	combout => \Mux_B|q[24]~30_combout\);

\Mux_4|q[24]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[24]~53_combout\ = (\sel[0]~input_o\ & ((\Mux_B|q[24]~30_combout\) # (\selA~input_o\ $ (\A[24]~input_o\)))) # (!\sel[0]~input_o\ & (\Mux_B|q[24]~30_combout\ & (\selA~input_o\ $ (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[24]~30_combout\,
	datac => \selA~input_o\,
	datad => \A[24]~input_o\,
	combout => \Mux_4|q[24]~53_combout\);

\ULA|q[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|q\(24) = \ULA|inter\(24) $ (((\Mux_A|q[23]~3_combout\ & ((\Mux_B|q[23]~7_combout\) # (\ULA|cout\(22)))) # (!\Mux_A|q[23]~3_combout\ & (\Mux_B|q[23]~7_combout\ & \ULA|cout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_A|q[23]~3_combout\,
	datab => \Mux_B|q[23]~7_combout\,
	datac => \ULA|cout\(22),
	datad => \ULA|inter\(24),
	combout => \ULA|q\(24));

\Mux_4|q[24]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[24]~54_combout\ = (\sel[1]~input_o\ & (((\ULA|q\(24) & !\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\Mux_4|q[24]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[24]~53_combout\,
	datab => \ULA|q\(24),
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux_4|q[24]~54_combout\);

\Mux_4|q[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[25]~55_combout\ = (\sel[0]~input_o\ & ((\Mux_B|q[25]~6_combout\) # (\selA~input_o\ $ (\A[25]~input_o\)))) # (!\sel[0]~input_o\ & (\Mux_B|q[25]~6_combout\ & (\selA~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[25]~6_combout\,
	datac => \selA~input_o\,
	datad => \A[25]~input_o\,
	combout => \Mux_4|q[25]~55_combout\);

\ULA|q[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|q\(25) = \Mux_A|q[25]~2_combout\ $ (\Mux_B|q[25]~6_combout\ $ (((\ULA|inter3\(24)) # (\ULA|inter2[24]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_A|q[25]~2_combout\,
	datab => \Mux_B|q[25]~6_combout\,
	datac => \ULA|inter3\(24),
	datad => \ULA|inter2[24]~5_combout\,
	combout => \ULA|q\(25));

\Mux_4|q[25]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[25]~56_combout\ = (\sel[1]~input_o\ & (((\ULA|q\(25) & !\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (\Mux_4|q[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[25]~55_combout\,
	datab => \ULA|q\(25),
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux_4|q[25]~56_combout\);

\Mux_4|q[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[26]~57_combout\ = \selA~input_o\ $ (\A[26]~input_o\ $ (((\ULA|cout\(25) & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[26]~input_o\,
	datac => \ULA|cout\(25),
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[26]~57_combout\);

\Mux_4|q[26]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[26]~58_combout\ = (\Mux_B|q[26]~5_combout\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\Mux_4|q[26]~57_combout\))))) # (!\Mux_B|q[26]~5_combout\ & (\Mux_4|q[26]~57_combout\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[26]~5_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux_4|q[26]~57_combout\,
	combout => \Mux_4|q[26]~58_combout\);

\Mux_4|q[27]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[27]~59_combout\ = \selA~input_o\ $ (\A[27]~input_o\ $ (((\ULA|cout\(26) & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[27]~input_o\,
	datac => \ULA|cout\(26),
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[27]~59_combout\);

\Mux_4|q[27]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[27]~60_combout\ = (\Mux_B|q[27]~4_combout\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\Mux_4|q[27]~59_combout\))))) # (!\Mux_B|q[27]~4_combout\ & (\Mux_4|q[27]~59_combout\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[27]~4_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux_4|q[27]~59_combout\,
	combout => \Mux_4|q[27]~60_combout\);

\ULA|inter[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|inter\(28) = \selA~input_o\ $ (\selB~input_o\ $ (\A[28]~input_o\ $ (\B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \selB~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \ULA|inter\(28));

\Mux_4|q[28]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[28]~68_combout\ = (\sel[1]~input_o\ & (!\sel[0]~input_o\ & (\ULA|inter\(28) $ (\ULA|cout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \ULA|inter\(28),
	datad => \ULA|cout\(27),
	combout => \Mux_4|q[28]~68_combout\);

\Mux_4|q[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[28]~61_combout\ = (\sel[0]~input_o\ & ((\Mux_B|q[28]~3_combout\) # (\selA~input_o\ $ (\A[28]~input_o\)))) # (!\sel[0]~input_o\ & (\Mux_B|q[28]~3_combout\ & (\selA~input_o\ $ (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[28]~3_combout\,
	datac => \selA~input_o\,
	datad => \A[28]~input_o\,
	combout => \Mux_4|q[28]~61_combout\);

\Mux_4|q[28]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[28]~62_combout\ = (\Mux_4|q[28]~68_combout\) # ((\Mux_4|q[28]~61_combout\ & !\sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[28]~68_combout\,
	datab => \Mux_4|q[28]~61_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[28]~62_combout\);

\Mux_4|q[29]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[29]~63_combout\ = \selA~input_o\ $ (\A[29]~input_o\ $ (((\ULA|cout\(28) & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[29]~input_o\,
	datac => \ULA|cout\(28),
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[29]~63_combout\);

\Mux_4|q[29]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[29]~64_combout\ = (\Mux_B|q[29]~2_combout\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\Mux_4|q[29]~63_combout\))))) # (!\Mux_B|q[29]~2_combout\ & (\Mux_4|q[29]~63_combout\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[29]~2_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux_4|q[29]~63_combout\,
	combout => \Mux_4|q[29]~64_combout\);

\Mux_4|q[30]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[30]~65_combout\ = \selA~input_o\ $ (\A[30]~input_o\ $ (((\ULA|cout\(29) & \sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selA~input_o\,
	datab => \A[30]~input_o\,
	datac => \ULA|cout\(29),
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[30]~65_combout\);

\Mux_4|q[30]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[30]~66_combout\ = (\Mux_B|q[30]~1_combout\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\Mux_4|q[30]~65_combout\))))) # (!\Mux_B|q[30]~1_combout\ & (\Mux_4|q[30]~65_combout\ & (\sel[0]~input_o\ $ (\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_B|q[30]~1_combout\,
	datac => \sel[1]~input_o\,
	datad => \Mux_4|q[30]~65_combout\,
	combout => \Mux_4|q[30]~66_combout\);

\Mux_B|q[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_B|q[31]~31_combout\ = \selB~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selB~input_o\,
	datad => \B[31]~input_o\,
	combout => \Mux_B|q[31]~31_combout\);

\Mux_4|q[31]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[31]~67_combout\ = (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\Mux_A|q[31]~1_combout\) # (\Mux_B|q[31]~31_combout\))) # (!\sel[0]~input_o\ & (\Mux_A|q[31]~1_combout\ & \Mux_B|q[31]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux_A|q[31]~1_combout\,
	datac => \Mux_B|q[31]~31_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux_4|q[31]~67_combout\);

\ULA|q[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|q\(31) = \selB~input_o\ $ (\Mux_A|q[31]~1_combout\ $ (\B[31]~input_o\ $ (\ULA|cout\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selB~input_o\,
	datab => \Mux_A|q[31]~1_combout\,
	datac => \B[31]~input_o\,
	datad => \ULA|cout\(30),
	combout => \ULA|q\(31));

\Mux_4|q[31]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux_4|q[31]~69_combout\ = (\Mux_4|q[31]~67_combout\) # ((\sel[1]~input_o\ & (!\sel[0]~input_o\ & \ULA|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \Mux_4|q[31]~67_combout\,
	datad => \ULA|q\(31),
	combout => \Mux_4|q[31]~69_combout\);

\ZERO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZERO~0_combout\ = (\Mux_4|q[0]~5_combout\) # ((\Mux_4|q[1]~7_combout\) # (\Mux_4|q[2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[0]~5_combout\,
	datab => \Mux_4|q[1]~7_combout\,
	datac => \Mux_4|q[2]~9_combout\,
	combout => \ZERO~0_combout\);

\ZERO~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZERO~1_combout\ = (\Mux_4|q[3]~11_combout\) # ((\Mux_4|q[4]~13_combout\) # ((\Mux_4|q[5]~15_combout\) # (\ZERO~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[3]~11_combout\,
	datab => \Mux_4|q[4]~13_combout\,
	datac => \Mux_4|q[5]~15_combout\,
	datad => \ZERO~0_combout\,
	combout => \ZERO~1_combout\);

\ZERO~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZERO~2_combout\ = (\Mux_4|q[6]~17_combout\) # ((\Mux_4|q[7]~19_combout\) # ((\Mux_4|q[8]~21_combout\) # (\ZERO~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[6]~17_combout\,
	datab => \Mux_4|q[7]~19_combout\,
	datac => \Mux_4|q[8]~21_combout\,
	datad => \ZERO~1_combout\,
	combout => \ZERO~2_combout\);

\ZERO~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZERO~3_combout\ = (\Mux_4|q[9]~23_combout\) # ((\Mux_4|q[10]~25_combout\) # ((\Mux_4|q[11]~28_combout\) # (\ZERO~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[9]~23_combout\,
	datab => \Mux_4|q[10]~25_combout\,
	datac => \Mux_4|q[11]~28_combout\,
	datad => \ZERO~2_combout\,
	combout => \ZERO~3_combout\);

\ZERO~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZERO~4_combout\ = (\Mux_4|q[12]~30_combout\) # ((\Mux_4|q[13]~32_combout\) # ((\Mux_4|q[14]~34_combout\) # (\ZERO~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[12]~30_combout\,
	datab => \Mux_4|q[13]~32_combout\,
	datac => \Mux_4|q[14]~34_combout\,
	datad => \ZERO~3_combout\,
	combout => \ZERO~4_combout\);

\ZERO~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZERO~5_combout\ = (\Mux_4|q[15]~36_combout\) # ((\Mux_4|q[16]~38_combout\) # ((\Mux_4|q[17]~40_combout\) # (\ZERO~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[15]~36_combout\,
	datab => \Mux_4|q[16]~38_combout\,
	datac => \Mux_4|q[17]~40_combout\,
	datad => \ZERO~4_combout\,
	combout => \ZERO~5_combout\);

\ZERO~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZERO~6_combout\ = (\Mux_4|q[18]~42_combout\) # ((\Mux_4|q[19]~44_combout\) # ((\Mux_4|q[20]~46_combout\) # (\ZERO~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[18]~42_combout\,
	datab => \Mux_4|q[19]~44_combout\,
	datac => \Mux_4|q[20]~46_combout\,
	datad => \ZERO~5_combout\,
	combout => \ZERO~6_combout\);

\ZERO~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZERO~7_combout\ = (\Mux_4|q[21]~48_combout\) # ((\Mux_4|q[22]~50_combout\) # ((\Mux_4|q[23]~52_combout\) # (\ZERO~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[21]~48_combout\,
	datab => \Mux_4|q[22]~50_combout\,
	datac => \Mux_4|q[23]~52_combout\,
	datad => \ZERO~6_combout\,
	combout => \ZERO~7_combout\);

\ZERO~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZERO~8_combout\ = (\Mux_4|q[24]~54_combout\) # ((\Mux_4|q[25]~56_combout\) # ((\Mux_4|q[26]~58_combout\) # (\ZERO~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[24]~54_combout\,
	datab => \Mux_4|q[25]~56_combout\,
	datac => \Mux_4|q[26]~58_combout\,
	datad => \ZERO~7_combout\,
	combout => \ZERO~8_combout\);

\ZERO~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZERO~9_combout\ = (\Mux_4|q[27]~60_combout\) # ((\Mux_4|q[28]~68_combout\) # ((\Mux_4|q[28]~61_combout\ & !\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[27]~60_combout\,
	datab => \Mux_4|q[28]~68_combout\,
	datac => \Mux_4|q[28]~61_combout\,
	datad => \sel[1]~input_o\,
	combout => \ZERO~9_combout\);

\ZERO~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZERO~10_combout\ = (\Mux_4|q[30]~66_combout\) # ((\Mux_4|q[31]~67_combout\) # ((\Mux_4|q[31]~27_combout\ & \ULA|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[30]~66_combout\,
	datab => \Mux_4|q[31]~67_combout\,
	datac => \Mux_4|q[31]~27_combout\,
	datad => \ULA|q\(31),
	combout => \ZERO~10_combout\);

\ZERO~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZERO~11_combout\ = (\Mux_4|q[29]~64_combout\) # ((\ZERO~8_combout\) # ((\ZERO~9_combout\) # (\ZERO~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux_4|q[29]~64_combout\,
	datab => \ZERO~8_combout\,
	datac => \ZERO~9_combout\,
	datad => \ZERO~10_combout\,
	combout => \ZERO~11_combout\);

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_R(4) <= \R[4]~output_o\;

ww_R(5) <= \R[5]~output_o\;

ww_R(6) <= \R[6]~output_o\;

ww_R(7) <= \R[7]~output_o\;

ww_R(8) <= \R[8]~output_o\;

ww_R(9) <= \R[9]~output_o\;

ww_R(10) <= \R[10]~output_o\;

ww_R(11) <= \R[11]~output_o\;

ww_R(12) <= \R[12]~output_o\;

ww_R(13) <= \R[13]~output_o\;

ww_R(14) <= \R[14]~output_o\;

ww_R(15) <= \R[15]~output_o\;

ww_R(16) <= \R[16]~output_o\;

ww_R(17) <= \R[17]~output_o\;

ww_R(18) <= \R[18]~output_o\;

ww_R(19) <= \R[19]~output_o\;

ww_R(20) <= \R[20]~output_o\;

ww_R(21) <= \R[21]~output_o\;

ww_R(22) <= \R[22]~output_o\;

ww_R(23) <= \R[23]~output_o\;

ww_R(24) <= \R[24]~output_o\;

ww_R(25) <= \R[25]~output_o\;

ww_R(26) <= \R[26]~output_o\;

ww_R(27) <= \R[27]~output_o\;

ww_R(28) <= \R[28]~output_o\;

ww_R(29) <= \R[29]~output_o\;

ww_R(30) <= \R[30]~output_o\;

ww_R(31) <= \R[31]~output_o\;

ww_ZERO <= \ZERO~output_o\;
END structure;


