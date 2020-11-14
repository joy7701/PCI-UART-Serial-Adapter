// Verilog test fixture created from schematic C:\Users\1\Documents\Xilinx\PCI-UART\e3.sch - Wed May 29 13:43:52 2019

`timescale 1ns / 1ps

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
   wire TRDY;
   wire DEVSEL;
   wire STOP;
   wire INTA;
   wire [3:0] LED_OUT;
   wire UART_OUT;

// Bidirs
   wire PAR;

// Instantiate the UUT
   e3 UUT (
		.RESET(RESET), 
		.PCI_CLK(PCI_CLK), 
		.FRAME(FRAME), 
		.IRDY(IRDY), 
		.IDSEL(IDSEL), 
		.CBE(CBE), 
		.TRDY(TRDY), 
		.DEVSEL(DEVSEL), 
		.STOP(STOP), 
		.INTA(INTA), 
		.LED_OUT(LED_OUT), 
		.PAR(PAR), 
		.UART_CLK(UART_CLK), 
		.UART_OUT(UART_OUT), 
		.STOP_BITS(STOP_BITS), 
		.START_BITS(START_BITS)
   );
// Initialize Inputs
       initial begin
			// test code is here!
		
		
		//$finish;
		end
endmodule
