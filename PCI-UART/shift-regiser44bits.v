// 44 bits Shift register works on posedge (rise)

module shift_regiser44bits(in_data, clk, out_data, workload);
input clk; // clock signal

input [43:0] in_data; // input parallel data

output out_data; // serial output
reg [43:0]temp; // temp register where data stored
reg top;// top of temp

output [5:0] workload; // contain 0 if chip is free max steps 44
reg [5:0] workload_reg = 0; // register where stores workloads default 0
wire workload; // create wire for workload

assign workload = workload_reg; // assign to workload output workload_reg
assign out_data = temp[0]; // pull data outside

always @ (posedge clk) // every time when clock signal rises
begin
	if (workload_reg == 0) // load input data into temp register
	begin
		temp = in_data; // connect and store in_data in temp
		workload_reg = 44; // workload now is 44 future cycles
	end	
	else //shifting
	begin
			temp = { 1'b0, temp[43:1]}; // move data down
			workload_reg = workload_reg - 1; //  workload_reg decrement by one
	end		
end
endmodule
