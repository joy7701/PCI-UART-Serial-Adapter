////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : sch2hdl
//  /   /         Filename : e3.vf
// /___/   /\     Timestamp : 05/30/2019 12:53:19
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: sch2hdl -intstyle ise -family spartan6 -verilog C:/Users/1/Documents/Xilinx/PCI-UART/e3.vf -w C:/Users/1/Documents/Xilinx/PCI-UART/e3.sch
//Design Name: e3
//Device: spartan6
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module e3(CBE, 
          FRAME, 
          IDSEL, 
          IRDY, 
          PCI_CLK, 
          RESET, 
          START_BITS, 
          STOP_BITS, 
          UART_CLK, 
          DEVSEL, 
          INTA, 
          LED_OUT, 
          STOP, 
          TRDY, 
          UART_OUT, 
          PAR);

    input [3:0] CBE;
    input FRAME;
    input IDSEL;
    input IRDY;
    input PCI_CLK;
    input RESET;
    input [3:0] START_BITS;
    input [3:0] STOP_BITS;
    input UART_CLK;
   output DEVSEL;
   output INTA;
   output [3:0] LED_OUT;
   output STOP;
   output TRDY;
   output UART_OUT;
    inout PAR;
   
   wire [31:0] XLXN_1;
   wire [2:0] XLXN_2;
   wire [43:0] XLXN_4;
   wire [3:0] XLXN_5;
   wire [5:0] XLXN_7;
   wire XLXN_44;
   
   pci  XLXI_12 (.cbe(CBE[3:0]), 
                .clk(PCI_CLK), 
                .frame(FRAME), 
                .idsel(IDSEL), 
                .irdy(IRDY), 
                .reset(RESET), 
                .devsel(DEVSEL), 
                .enable_transaction(XLXN_2[2:0]), 
                .inta(INTA), 
                .led_out(LED_OUT[3:0]), 
                .stop(STOP), 
                .trdy(TRDY), 
                .ad(XLXN_1[31:0]), 
                .par(PAR));
   tristate_buffer  XLXI_13 (.enable(XLXN_44), 
                            .in_data(XLXN_1[31:0]), 
                            .parities(XLXN_5[3:0]), 
                            .start_bits(START_BITS[3:0]), 
                            .stop_bits(STOP_BITS[3:0]), 
                            .out_data(XLXN_4[43:0]));
   Parity  XLXI_14 (.data(XLXN_1[31:0]), 
                   .parity(XLXN_5[3:0]));
   shift_regiser44bits  XLXI_15 (.clk(UART_CLK), 
                                .in_data(XLXN_4[43:0]), 
                                .out_data(UART_OUT), 
                                .workload(XLXN_7[5:0]));
   Comparator  XLXI_16 (.clk(PCI_CLK), 
                       .state(XLXN_2[2:0]), 
                       .workload(XLXN_7[5:0]), 
                       .enable(XLXN_44));
endmodule
