library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity count is
    port (
        clk_1   : in std_logic;
		  rst		: in std_logic;
        freq_in : in std_logic; -- Corrected the colon to a semicolon
        count    : out std_logic_vector(7 downto 0)
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
	 
	 
	 signal counting : BOOLEAN := FALSE;
	-- signal count : integer := 1;
 ------------------------------------

 
 
 
 -------------------------------------
 begin
 
	process(clk_1,freq_in,rst) is
    begin
			if rst ='0' then  
				cpt1 <= (others => '0');
			elsif rising_edge(freq_in) then
				if clk_1 ='1' then 
						cpt1<=cpt1+1;
				else
					s_cpt1 <= cpt1;
					cpt1 <= (others => '0');
            end if;
        end if;
    end process;
	
	process(clk_1,rst)
	 begin
	 if rst ='0' then 
			cpt2 <= (others => '0');
	 elsif falling_edge(freq_in) then
	 
				if clk_1 ='1' then 
						cpt2<=cpt2+1;
				else 
				s_cpt2 <= cpt2;
				cpt2 <= (others => '0');
            end if;
        end if;
    end process;
	 
	
  

 --count <= s_cpt3;
  
 count <= s_cpt1+s_cpt1; 

end arc;


--process(clk_1,rst)
-- begin
--	if rst ='0' then
--		count <= (others =>'0');
--	elsif(clk_1'event and clk_1 ='1') then
--		count <= (s_cpt1+s_cpt2); 
--	end if;
--end process;

--count <= count;

 -- cpt3 <= (s_cpt1+s_cpt2);




--  process(clk_1, rst) is
--	begin
--	if rst ='0' then
--		cpt3 <= (others =>'0');
--	elsif rising_edge(clk_1) then
--		s_cpt3 <= not cpt3;
--	end if;
--	
--	end process;







	--end process;
	
--	process (clk_1, rst)
--		begin
--			if rst = '1' then 
--				s_data_out <= (others => '0');
--			elsif rising_edge(clk_1) then
--				s_data_out <= cpt1 + cpt2;
--			end if;
--			count <= s_data_out;
--	end process;


  -- count <= s_data_out;



 --count <= "11111111";




--
--process(clk_1,freq_in,rst) is
--    begin
--			if rst ='0' then  
--				cpt1 <= (others => '0');
--			elsif rising_edge(freq_in) then
--				if clk_1 ='1' then 
--						cpt1<=cpt1+1;
--				else cpt1 <= (others => '0');
--            end if;
--        end if;
--    end process;
--	 
--	 process(clk_1,rst)
--	 begin
--	 if rst ='0' then 
--			cpt2 <= (others => '0');
--	 elsif falling_edge(freq_in) then
--				if clk_1 ='1' then 
--						cpt2<=cpt2+1;
--				else cpt2 <= (others => '0');
--            end if;
--        end if;
--    end process;
--	 
--	process(clk_1,rst)
--	 begin
--	 if rst ='0' then 
--			cpt3 <= (others => '0');
--	 elsif falling_edge(clk_1) then
--			cpt3 <= cpt1 + cpt2;	
--	 end if;
--    end process;
--	 
--    count <= cpt3;



--end process;


--end arc;
	






	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
 
 
 
 