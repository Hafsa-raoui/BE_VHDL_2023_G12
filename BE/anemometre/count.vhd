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
	 
	 signal s_cpt1 : std_logic_vector(7 downto 0) := (others =>'0');
	 signal s_cpt2 : std_logic_vector(7 downto 0) := (others =>'0');
	 --- Modified ---
	 signal start_count : std_logic := '0';
	 signal count_duration : integer := 0;
	 constant your_desired_duration_value : integer := 1;
	 signal s_data_out : std_logic_vector(7 downto 0);


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
	 
	 process(clk_1,freq_in,rst) is
	 begin
		if rst ='0' then 
			cpt2 <= (others => '0');
		elsif rising_edge(freq_in) then
				if clk_1 ='0' then 
						cpt2<=cpt2+1;
				else
					s_cpt2 <= cpt2;
					cpt2 <= (others => '0');
            end if;
        end if;
    end process;
	 
	process(clk_1,rst) is
	 begin
	 if rst ='0' then 
			cpt3 <= (others => '0');
	 elsif rising_edge(clk_1) then
			cpt3 <= s_cpt1+s_cpt2;	
	 end if;
	 count <= cpt3;
    end process;
	 
 


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
end arc;







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








	  -- Counting for a specified duration
--                count_duration <= count_duration + 1;
--            if count_duration = YOUR_DESIRED_DURATION_VALUE then
--                cpt4 <= std_logic_vector(to_unsigned(to_integer(unsigned(cpt3)), count'length));
--                start_count <= '0';
--                count_duration <= 0;
--            end if;
