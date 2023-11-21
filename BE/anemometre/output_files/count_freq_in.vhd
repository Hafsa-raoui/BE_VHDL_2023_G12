Library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity count_freq_in is
		port(
				freq_in 		: in std_logic;
				reset 		: in std_logic;
				cpt_out 		 : out std_logic_vector(7 downto 0)
				);
end count_freq_in;

architecture arc of count_freq_in is 
signal cpt : std_logic_vector(7 downto 0);

begin 
		process(freq_in, reset)
		begin
		if reset ='0' then
			--cpt_out <= "00000000";
			cpt <= "00000000";
				elsif rising_edge(freq_in) then
					cpt <= cpt + 1;
				cpt_out <= cpt;
			
				end if;
				end process;
end arc;
