// Tristate Buffer

module tristate_buffer(enable, in_data, start_bits, stop_bits, parities, out_data);

// divide buy groups input signals
input [31:0] in_data; // 44 bits input data
input [3:0] start_bits; 
input [3:0] stop_bits;
input [3:0] parities;

input enable; // 1 bit for connect ALL input data to output

output [43:0] out_data; // 44 bits output data

//assign output_x = enable? input_x : 'bz; main logic equal

// 1st UART package
assign out_data[0] = enable ? start_bits[0]:'bz; // start bit
assign out_data[8:1] = enable? in_data[7:0]:'bZ; // 8 bits of data
assign out_data[9] = enable? parities[0]:'bZ;//parity bit
assign out_data[10] = enable? stop_bits[0]:'bZ;//stop bit

//2nd UART package
assign out_data[11] = enable ? start_bits[0]:'bz; // start bit
assign out_data[19:12] = enable? in_data[7:0]:'bZ; // 8 bits of data
assign out_data[20] = enable? parities[0]:'bZ;//parity bit
assign out_data[21] = enable? stop_bits[0]:'bZ;//stop bit

//3rd UART package
assign out_data[22] = enable ? start_bits[0]:'bz; // start bit
assign out_data[30:23] = enable? in_data[7:0]:'bZ; // 8 bits of data
assign out_data[31] = enable? parities[0]:'bZ;//parity bit
assign out_data[32] = enable? stop_bits[0]:'bZ;//stop bit

//4th UART package
assign out_data[33] = enable ? start_bits[0]:'bz; // start bit
assign out_data[41:34] = enable? in_data[7:0]:'bZ; // 8 bits of data
assign out_data[42] = enable? parities[0]:'bZ;//parity bit
assign out_data[43] = enable? stop_bits[0]:'bZ;//stop bit

endmodule



