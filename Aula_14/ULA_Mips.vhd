library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA_Mips is

	port
	(
		-- Input ports
		A	: in  std_logic_vector(31 downto 0);
		B	: in  std_logic_vector(31 downto 0);
		sel : in  std_logic_vector(1 downto 0);
		selA: in std_logic;
		selB: in std_logic;
		cin : in std_logic;

		-- Output ports
		R : out  std_logic_vector(31 downto 0);
		ZERO: out  std_logic
	);
end ULA_Mips;


architecture arch_mips of ULA_Mips is
	signal R_ula:  std_logic_vector(31 downto 0);
	signal R_or:  std_logic_vector(31 downto 0);
	signal R_and:  std_logic_vector(31 downto 0);
	signal SLT:  std_logic_vector(31 downto 0);
	signal Z:  std_logic;
	signal V:  std_logic;
	signal R_A:  std_logic_vector(31 downto 0);
	signal R_B:  std_logic_vector(31 downto 0);
	
begin

	
	Mux_A: entity work.Mux_2 port map (A => A, B => not A, sel => selA, q =>R_A);
	Mux_B: entity work.Mux_2 port map (A => B, B => not B, sel => selB, q =>R_B);
	ULA  : entity work.ula port map (A => R_A, B => R_B, cin => cin, q => R_ULA, Z => Z, overflow => V);
	Mux_4: entity work.Mux_4 port map (A => R_and, B => R_or, C => R_ULA, D => SLT, sel => sel, q => R);
	
	R_or <= (R_A or R_B);
	R_and <= (R_A and R_B);
	
--	SLT <= "0000000000000000000000000000000" & (R_ula(31) xor V);
	SLT <= (0 => (R_ula(31) xor V), others => '0');
	
	
	ZERO <= not(R(0) or R(1) or R(2) or R(3) or R(4) or R(5) or R(6) or R(7) or R(8) or R(9) or R(10)
	      or R(11) or R(12) or R(13) or R(14) or R(15) or R(16) or R(17) or R(18) or R(19) or R(20) 
			or R(21) or R(22) or R(23) or R(24) or R(25) or R(26) or R(27) or R(28) or R(29) or R(30) or R(31)) ;	

end arch_mips;
