library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

---- Entity -----------------------------------
entity memory is 
	port(
			clk_1 :	in std_logic;
			rst		: in std_logic;
			data_in	: in std_logic_vector(7 downto 0);
			data_out	: out std_logic_vector(7 downto 0)
			);
end entity;

architecture arch of memory is
	signal s_data_out, s_data_in : std_logic_vector(7 downto 0);
	signal is_bit_set : integer;
	signal last_data : std_logic_vector(7 downto 0);
	--signal clk_counter: natural range 0 to 499_999_999;
	--signal clk_counter: integer := 0;

begin
		process(clk_1,rst)
		begin
			if rst = '0' then 
				s_data_out <= (others => '0');
				--last_data <= (others => '0');
				--clk_counter <= 0;
			elsif rising_edge(clk_1) then
				--if continu ='1' then
						s_data_out <= data_in;
				 end if;

					
						
		end process;
		
		
--	process (data_in)

data_out <= s_data_out  ;




end arch;














