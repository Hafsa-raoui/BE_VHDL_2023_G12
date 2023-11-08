	component hafsa_sopc is
		port (
			boutons_export : in  std_logic_vector(1 downto 0) := (others => 'X'); -- export
			clk_clk        : in  std_logic                    := 'X';             -- clk
			leds_export    : out std_logic_vector(7 downto 0)                     -- export
		);
	end component hafsa_sopc;

	u0 : component hafsa_sopc
		port map (
			boutons_export => CONNECTED_TO_boutons_export, -- boutons.export
			clk_clk        => CONNECTED_TO_clk_clk,        --     clk.clk
			leds_export    => CONNECTED_TO_leds_export     --    leds.export
		);

