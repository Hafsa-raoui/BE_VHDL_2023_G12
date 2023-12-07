	component sopc_compteur is
		port (
			avalon_pwm_0_conduit_end_writeresponsevalid_n : out std_logic;                                       -- writeresponsevalid_n
			boutons_external_connection_export            : in  std_logic_vector(1 downto 0) := (others => 'X'); -- export
			clk_clk                                       : in  std_logic                    := 'X';             -- clk
			leds_external_connection_export               : out std_logic_vector(7 downto 0);                    -- export
			avalon_anemo_0_conduit_end_conduit_end        : in  std_logic                    := 'X'              -- conduit_end
		);
	end component sopc_compteur;

	u0 : component sopc_compteur
		port map (
			avalon_pwm_0_conduit_end_writeresponsevalid_n => CONNECTED_TO_avalon_pwm_0_conduit_end_writeresponsevalid_n, --    avalon_pwm_0_conduit_end.writeresponsevalid_n
			boutons_external_connection_export            => CONNECTED_TO_boutons_external_connection_export,            -- boutons_external_connection.export
			clk_clk                                       => CONNECTED_TO_clk_clk,                                       --                         clk.clk
			leds_external_connection_export               => CONNECTED_TO_leds_external_connection_export,               --    leds_external_connection.export
			avalon_anemo_0_conduit_end_conduit_end        => CONNECTED_TO_avalon_anemo_0_conduit_end_conduit_end         --  avalon_anemo_0_conduit_end.conduit_end
		);

