module Comparator(state, workload, enable, clk);

input [2:0] state; // check pci transaction state
input [5:0] workload; // check shift register workload
output enable; // enable connection betweeen PCI and UART
input clk; // clock signal
reg enable_reg;// register for enable
assign enable = enable_reg;

always @ (posedge clk)
begin
	if(state == 0 && workload == 0 ) // deady to send
	begin
		enable_reg = 1;		
	end
	else 
	begin
		enable_reg = 0;
	end
end

endmodule
