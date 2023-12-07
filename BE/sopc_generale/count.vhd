library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity count is
    port (
        clk_50   : in std_logic;
		  rst		: in std_logic;
        freq_in : in std_logic; -- Corrected the colon to a semicolon
        data_freq    : out std_logic_vector(7 downto 0)
    );
end count;

architecture arc of count is
    signal cpt1 : std_logic_vector(7 downto 0) := (others =>'0');
	 signal cpt2 : std_logic_vector(7 downto 0) := (others =>'0');
	 signal cpt3 : std_logic_vector(7 downto 0) := (others =>'0');
	 
	 signal s_cpt3 : std_logic_vector(7 downto 0) := (others =>'0');
	 
	 signal s_cpt1 : std_logic_vector(7 downto 0) := (others =>'0');
	 signal s_cpt2 : std_logic_vector(7 downto 0) := (others =>'0');
	 --- Modified ---
	 
	 
	-- signal counting : BOOLEAN := FALSE;
	 signal count1 : integer := 0;
	 signal count2 : integer range 0 to 255 := 0;
	 signal stop_1s : std_logic:= '0';
 ------------------------------------

 
 
 
 -------------------------------------
 begin
 
	process(clk_50,rst) is
    begin
			if rst ='0' then  
				count1 <= 0;
			elsif rising_edge(clk_50) then
						count1<=count1+1;
						if count1 > 50000000 then 
							stop_1s <= '1';
							if count2 = 0 then
								stop_1s <= '0';
								count1 <= 0;
								end if;
            end if;
        end if;
    end process;
	 
	 process(freq_in,rst) is
	 begin
			if rst ='0' then 
				count2 <= 0;
			elsif rising_edge(freq_in) then 
					if stop_1s <= '0' then
						count2 <= count2 +1;
					else
						s_cpt2 <= std_logic_vector(to_unsigned( count2, s_cpt2'length));
						count2 <= 0;
			end if;
	end if;
	end process;
	
	
	data_freq <= s_cpt2;
	
				
	


end arc;









	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
 
 
 
 