// Verilog test fixture created from schematic C:\Users\1\Documents\Xilinx\PCI-UART\e3.sch - Wed May 29 12:44:48 2019
//  30 ns - full period pci -- #6; 60 ns - full period UART -- #12
`timescale 5ns / 5ns

module e3_e3_sch_tb();

// Inputs
   reg RESET;
   reg PCI_CLK;
   reg FRAME;
   reg IRDY;
   reg IDSEL;
   reg [3:0] CBE;
   reg UART_CLK;
   reg [3:0] STOP_BITS;
   reg [3:0] START_BITS;

// Output
   wire XLXN_14;
   wire XLXN_15;
   wire XLXN_16;
   wire XLXN_17;
   wire [3:0] XLXN_18;
   wire UART_OUT;

// Bidirs
   wire XLXN_19;

// Instantiate the UUT
   e3 UUT (
		.RESET(RESET), 
		.PCI_CLK(PCI_CLK), 
		.FRAME(FRAME), 
		.IRDY(IRDY), 
		.IDSEL(IDSEL), 
		.CBE(CBE), 
		.XLXN_14(XLXN_14), 
		.XLXN_15(XLXN_15), 
		.XLXN_16(XLXN_16), 
		.XLXN_17(XLXN_17), 
		.XLXN_18(XLXN_18), 
		.XLXN_19(XLXN_19), 
		.UART_CLK(UART_CLK), 
		.UART_OUT(UART_OUT), 
		.STOP_BITS(STOP_BITS), 
		.START_BITS(START_BITS)
   );
// Initialize Inputs
      initial begin
		// test code 
		RESET = 1;
		PCI_CLK = 1;
		FRAME = 1;
		IRDY = 1;
		
		end

endmodule
