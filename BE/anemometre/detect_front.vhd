Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity detect_front is
port(
		clk_50M  : in std_logic;
		freq_in	: in std_logic;
		rst		 : out std_logic
		);
end detect_front;

architecture arch of detect_front is 
signal s_freq_in : std_logic;
signal inv_s_freq_in : std_logic;

begin  

process(clk_50M) is
begin
if rising_edge (clk_50M) then
s_freq_in <= freq_in;
inv_s_freq_in <= s_freq_in;

end if;
end process;

rst <= s_freq_in and (not inv_s_freq_in);

end arch;