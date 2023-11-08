
module hafsa_sopc (
	boutons_export,
	clk_clk,
	leds_export);	

	input	[1:0]	boutons_export;
	input		clk_clk;
	output	[7:0]	leds_export;
endmodule
