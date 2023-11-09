	component pwm_av is
		port (
			clk_clk                                : in  std_logic                    := 'X';             -- clk
			bp_external_connection_export          : in  std_logic_vector(1 downto 0) := (others => 'X'); -- export
			leds_external_connection_export        : out std_logic_vector(7 downto 0);                    -- export
			pwm_0_conduit_end_writeresponsevalid_n : out std_logic                                        -- writeresponsevalid_n
		);
	end component pwm_av;

	u0 : component pwm_av
		port map (
			clk_clk                                => CONNECTED_TO_clk_clk,                                --                      clk.clk
			bp_external_connection_export          => CONNECTED_TO_bp_external_connection_export,          --   bp_external_connection.export
			leds_external_connection_export        => CONNECTED_TO_leds_external_connection_export,        -- leds_external_connection.export
			pwm_0_conduit_end_writeresponsevalid_n => CONNECTED_TO_pwm_0_conduit_end_writeresponsevalid_n  --        pwm_0_conduit_end.writeresponsevalid_n
		);

