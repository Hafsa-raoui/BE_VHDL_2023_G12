library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
	generic(
			count : integer := 8
		);
	port (
	
			clk_50M : in std_logic;
			reset 		: in std_logic;
			clk_1		: in std_logic;
			rst_edge	: in std_logic;
			sortie	: out std_logic_vector(count - 1 downto 0)
			);
	end entity;

architecture arch of counter is 
	signal s_sortie : unsigned (sortie'range);
	
	begin
	 process(clk_50M,reset)
	 begin
		 if reset ='1' then
		 s_sortie <= (others => '0');
		 elsif rising_edge(clk_50M) then 
		  if clk_1 ='1' then 
		  s_sortie <= (others => '0');
		  else
		   if rst_edge ='1' then
				s_sortie <= s_sortie +1 ;
			end if;
			end if;
		end if;
	end process;
	sortie <= std_logic_vector(s_sortie);
	end arch;