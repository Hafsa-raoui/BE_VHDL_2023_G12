	component sopc_anemometre is
		port (
			avalon_anemo_0_conduit_end_freq_in            : in  std_logic                    := 'X';             -- freq_in
			avalon_pwm_0_conduit_end_writeresponsevalid_n : out std_logic;                                       -- writeresponsevalid_n
			boutons_external_connection_export            : in  std_logic_vector(1 downto 0) := (others => 'X'); -- export
			clk_clk                                       : in  std_logic                    := 'X';             -- clk
			leds_external_connection_export               : out std_logic_vector(7 downto 0)                     -- export
		);
	end component sopc_anemometre;

	u0 : component sopc_anemometre
		port map (
			avalon_anemo_0_conduit_end_freq_in            => CONNECTED_TO_avalon_anemo_0_conduit_end_freq_in,            --  avalon_anemo_0_conduit_end.freq_in
			avalon_pwm_0_conduit_end_writeresponsevalid_n => CONNECTED_TO_avalon_pwm_0_conduit_end_writeresponsevalid_n, --    avalon_pwm_0_conduit_end.writeresponsevalid_n
			boutons_external_connection_export            => CONNECTED_TO_boutons_external_connection_export,            -- boutons_external_connection.export
			clk_clk                                       => CONNECTED_TO_clk_clk,                                       --                         clk.clk
			leds_external_connection_export               => CONNECTED_TO_leds_external_connection_export                --    leds_external_connection.export
		);

