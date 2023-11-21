library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

---- Entity -----------------------------------
entity memory is 
	port(
			clk_50 :	in std_logic;
			rst		: in std_logic;
			--load		: in std_logic;
			continu	: in std_logic;
			data_in	: in std_logic_vector(7 downto 0);
			data_out	: out std_logic_vector(7 downto 0)
			);
end entity;

architecture arch of memory is
	signal s_data_out, s_data_in : std_logic_vector(7 downto 0);
	signal is_bit_set : integer;
	signal last_data : std_logic_vector(7 downto 0);
	signal clk_counter: natural range 0 to 499_999_999;
	--signal clk_counter: integer := 0;

begin
		process(clk_50,rst)
		begin
			if rst = '0' then 
				s_data_out <= (others => '0');
				last_data <= (others => '0');
				clk_counter <= 0;
			elsif rising_edge(clk_50) then
				--if continu ='1' then
				 if ((data_in and  "11111111") /= "00000000") then
						last_data <= data_in;
				 end if;
					--s_data_out <= s_data_in ;
					 -- Store the value for 1 second
					s_data_in <= not data_in ;
					
						 end if;
						 
					--else clk_counter <=0; 
					--end if;
					
					
		end process;
		
		
--	process (data_in)
--    begin
--        -- Check if at least one bit is '1'
--        if (data_in = "00000001" or
--            data_in = "00000010" or
--            data_in = "00000100" or
--            data_in = "00001000" or
--            data_in = "00010000" or
--            data_in = "00100000" or
--            data_in = "01000000" or
--            data_in = "10000000") then
--							is_bit_set <= 1;
--					else 
--										 
--                      is_bit_set <= 0;
--				end if;
--    end process;
		
	--s_data_in <= data_in when continu ='1' else
	--				 s_data_out;
--s_data_out <= s_data_in and last_data;
data_out <=  (s_data_in and last_data) ;




end arch;


				--else
				--	s_data_out <= not (data_in );
			--end loop;
			--end if;
			
			--s_data_out <= data_in ;
			--wait for 500 ms;












--s_data_out <= s_data_in;
			--end if;
			--wait on clk_1;