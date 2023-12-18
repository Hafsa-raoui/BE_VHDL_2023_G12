library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_numeric.all;

entity control_butee is
port (
	--pwm_in, sens, enable: in std_logic;
	pwm_in: in std_logic;
	--butee_g, butee_d : in std_logic_vector (15 downto 0);
	angle_barre : in std_logic_vector (11 downto 0);
	out_pwm, out_sens, f_g, f_d : out std_logic
);
end entity;

ARCHITECTURE arch of control_butee IS
	signal sens : std_logic := '0'; -- Valeur fixée pour sens
    signal enable : std_logic := '1'; -- Valeur fixée pour enable
    signal butee_g : std_logic_vector (15 downto 0) := "0000101110111000"; -- 3000 en binaire sur 16 bits (avec complétion)
    signal butee_d : std_logic_vector (15 downto 0) := "0000000001100100"; -- 100 en binaire sur 16 bits (avec complétion)

BEGIN
process (angle_barre) 

begin
	if ( (angle_barre > butee_g) and sens = '0' and enable ='1') then
		out_pwm <= '0';
		f_g <= '1';
	elsif (angle_barre < butee_d and sens = '1' and enable ='1') then
		out_pwm <= '0';
		f_d <= '1';
		else 
			out_pwm <= pwm_in;
			f_d <= '0';
			f_g <= '0';
	end if;
end process;
	out_sens <= sens;
END arch ;