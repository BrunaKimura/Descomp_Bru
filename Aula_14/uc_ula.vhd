library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity uc_ula is
	port
	(
		-- Input ports
		funct	: in  std_logic_vector(5 downto 0);
		ula_op	: in  std_logic_vector(1 downto 0);

		-- Output ports
		ULActrl	: out std_logic_vector(3 downto 0);
		
	);
	
end ula;

architecture arch_uc of uc_ula is

begin
	process(all)
		begin
			if (ula_op = "00") then
				ULAcrtl <= "0010"
			elsif (ula_op = "01") then
				ULAcrtl <= "0110"
			elsif (ula_op = "10") then
				if(funct = "100000") then
					ULAcrtl <= "0010"
				elsif(funct = "100010") then
					ULAcrtl <= "0110"
				elsif(funct = "100100") then
					ULAcrtl <= "0000"
				elsif(funct = "100101") then
					ULAcrtl <= "0001"
				elsif(funct = "101010") then
					ULAcrtl <= "0111"
				end if;
			end if;
			
		
end arch_uc
;
