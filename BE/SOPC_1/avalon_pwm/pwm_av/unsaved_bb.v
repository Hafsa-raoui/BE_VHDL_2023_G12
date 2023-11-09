
module unsaved (
	bp_external_connection_export,
	clk_clk,
	leds_external_connection_export,
	pwm_0_conduit_end_writeresponsevalid_n);	

	input	[1:0]	bp_external_connection_export;
	input		clk_clk;
	output	[7:0]	leds_external_connection_export;
	output		pwm_0_conduit_end_writeresponsevalid_n;
endmodule
