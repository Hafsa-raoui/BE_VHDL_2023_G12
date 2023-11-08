library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity mae is

	port(
			clk	: in std_logic;
			arazb : in std_logic;
			continu : in std_logic;
			start_stop : in std_logic;
			out_rst		: out std_logic
			
			);
	end entity;

architecture arch of mae is 

type etat is(repos, mesure);

signal etat_present, etat_suivant : etat;
signal s_clk_1hz	:  std_logic;
signal s_start_stop : std_logic;
signal s_continu	: std_logic;
signal s_out_rst : std_logic;

begin

	process(etat_present,start_stop,continu,s_clk_1hz)

begin 

	case etat_present is 
			when repos =>
				if start_stop = '1' or continu ='1' then
						etat_suivant <= mesure;
						
						else 
						etat_suivant <= repos;
						end if;
						
			when mesure =>
				if s_clk_1hz ='1' and continu ='0' then
					etat_suivant <= repos;
				
				else
					etat_suivant <= mesure;
				end if;
			when others =>
			etat_suivant <= repos;
		end case;
end process;

--- Mise à jour etat

process(clk, arazb)
begin

	if arazb = '1' then
			etat_present <= repos;
		elsif rising_edge(clk) then
			etat_present <= etat_suivant;
		end if;
end process;
		out_rst <= '1' when etat_present = repos else '0';

end arch;	
	
	