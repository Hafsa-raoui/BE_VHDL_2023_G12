library ieee;
use ieee.std_logic_1164.all;

entity basculeD is
port(
		arazb	: in std_logic;
		clk	: in std_logic;
		en 	: in std_logic;
		d_in	: in std_logic_vector(7 downto 0);
		d_out	: out std_logic_vector(7 downto 0)
		);
end entity;


architecture arch of basculeD is
signal	s_out : std_logic_vector(7 downto 0); 

begin

	process(clk,arazb)
	begin
	
	if arazb = '1' then 
		s_out <=(others => '0');
		
	elsif rising_edge (clk) then
		if en = '1' then
			s_out <= d_in;
		end if;
	end if;
	end process;
	
d_out <= s_out;
	
end arch;
	