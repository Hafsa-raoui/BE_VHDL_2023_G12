
module sopc_compteur (
	avalon_pwm_0_conduit_end_writeresponsevalid_n,
	boutons_external_connection_export,
	clk_clk,
	leds_external_connection_export,
	avalon_anemo_0_conduit_end_conduit_end);	

	output		avalon_pwm_0_conduit_end_writeresponsevalid_n;
	input	[1:0]	boutons_external_connection_export;
	input		clk_clk;
	output	[7:0]	leds_external_connection_export;
	input		avalon_anemo_0_conduit_end_conduit_end;
endmodule
