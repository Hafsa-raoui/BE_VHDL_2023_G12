-------------------------------- LIBRARIES -----------------------------
library ieee;
use ieee.std_logic_1164.all;

use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-------------------------------- ENTITY ---------------------------
entity in_freq_calcul is
	port(
		-- entree
		clk_1						: in std_logic;
		in_freq_anemo			: in std_logic;
		raz_n 					: in std_logic;
		-- sortie
		out_freq_calc			: out std_logic_vector(7 downto 0)
		);
end in_freq_calcul ;

--------------------------------- ARCHITRECTURE ------------------------
architecture arch of in_freq_calcul is
	signal counter_1 : std_logic_vector(7 downto 0);
	signal counter_2 : std_logic_vector(7 downto 0);
	signal counter_3 : std_logic_vector(7 downto 0);
begin
    process(clk_1,in_freq_anemo,raz_n)
    begin
        if raz_n = '0' then
            counter_1 <= (others => '0');
        elsif rising_edge(in_freq_anemo) then
            if clk_1 = '1' then
                counter_1 <= counter_1 + 1;
					 else counter_1 <= (others => '0');
            end if;			
        end if;
    end process;
	 
	 process(clk_1,in_freq_anemo,raz_n)
    begin
        if raz_n = '0' then
            counter_2 <= (others => '0');
        elsif falling_edge(in_freq_anemo) then
            if clk_1 = '1' then
                counter_2 <= counter_2 + 1;
					 else counter_2 <= (others => '0');
            end if;			
        end if;
    end process;
	 
	 process(clk_1, raz_n)
	 begin
	 if raz_n='0' then 
		counter_3 <= (others => '0');
	 elsif falling_edge(clk_1) then
		counter_3 <= counter_1+counter_2;
	 end if;
	end process;

    out_freq_calc <= counter_3;
end arch;


