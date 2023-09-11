-------------------------------- LIBRARIES -----------------------------
library ieee;
use ieee.std_logic_1164.all;

use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-------------------------------- ENTITY ---------------------------
entity DivFreq is
	port(
		-- entree
		clk_50M		: in std_logic;
		reset 		: in std_logic;
		-- sortie
		clk_1		: out std_logic
		);
end DivFreq ;

--------------------------------- ARCHITRECTURE ------------------------
architecture arch of DivFreq is
	signal compteur : integer;
	signal clk_1prime : std_logic;
begin
	process (clk_50M, reset, clk_1prime)
	begin 
		if reset = '1'
		then 
		--initialisation 
		compteur <= 1 ;
		clk_1prime <= '0';
		
		
		elsif rising_edge (clk_50M)
		then
		
		--évolution synchrone 25 millions de front montant (Objectif: comptabilisé les signaux clk in). Une fois terminé la comtabilisition, basculement de la sortie. 
		--if compteur < 2500 then compteur <= compteur +1;  -- pour une période 100us
		if compteur < 25000000 then compteur <= compteur +1; -- pour une période de 1s
		--if compteur < 25 then compteur <= compteur +1;
		else compteur <= 1; end if; -- remise à 0 compteur
		
		if compteur = 1 then clk_1prime <= not(clk_1prime); end if; -- Faire evoluer la sortie clk_out (une fois une boucle complète sur cpt) Bascument de clk_out
		end if;
		
	end process;
	clk_1 <= clk_1prime;
end arch;


-- Choix de valeur de cpt 

--  25 000 000 * 20ns = 0.5s

-- 25 000 * 20 ns = 500 us

-- 2500  * 20 ns = 50 us