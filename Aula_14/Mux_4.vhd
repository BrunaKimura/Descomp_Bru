library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux_4 is

	port
	(
		-- Input ports
		A	: in  std_logic_vector(31 downto 0);
		B	: in  std_logic_vector(31 downto 0);
		C	: in  std_logic_vector(31 downto 0);
		D	: in  std_logic_vector(31 downto 0);
		sel : in  std_logic_vector(1 downto 0);

		-- Output ports
		q : out  std_logic_vector(31 downto 0)
	);
	
end Mux_4;

architecture arch_mux_4 of Mux_4 is
	
begin
		
	q <= 
		A when sel = "00" else
		B when sel = "01" else 
		C when sel = "10" else
		D when sel = "11";

end arch_mux_4;
