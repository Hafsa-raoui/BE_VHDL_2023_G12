library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity compteur is port (
	clk		: in std_logic;
	reset	: in std_logic;
	freq 	: in std_logic_vector (7 downto 0);
	sortie 	: out std_logic_vector(7 downto 0));
end compteur;


architecture arch of compteur is
 signal cmt:std_logic_vector(7 downto 0);
 begin
 
process (clk,reset) begin
  if (reset ='1') then cmt <="00000000";
  elsif (clk'event and clk='1') then 
	if (cmt<=freq) then
  		cmt <= cmt + '1';
	else 
		cmt<= "00000000";
	end if;
  end if;
 end process; 
 
 sortie <= cmt;
end arch;