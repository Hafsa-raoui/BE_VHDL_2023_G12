
module pwm_av (
	clk_clk,
	bp_external_connection_export,
	leds_external_connection_export,
	pwm_0_conduit_end_writeresponsevalid_n);	

	input		clk_clk;
	input	[1:0]	bp_external_connection_export;
	output	[7:0]	leds_external_connection_export;
	output		pwm_0_conduit_end_writeresponsevalid_n;
endmodule
