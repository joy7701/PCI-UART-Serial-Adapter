module pci(reset,clk,frame,irdy,trdy,devsel,idsel,ad,cbe,par,stop,inta,led_out,enable_transaction);
    input reset;
    input clk;
    input frame;
    input irdy;
    output trdy;
    output devsel;
    input idsel;
    inout [31:0] ad;
    input [3:0] cbe;
    inout par;
    output stop;
    output inta;
    output [3:0] led_out;
	 output [2:0] enable_transaction;
parameter DEVICE_ID = 16'h9500;
parameter VENDOR_ID = 16'h106d;		// Sequent!
parameter DEVICE_CLASS = 24'hFF0000;	// Misc
parameter DEVICE_REV = 8'h01;
parameter SUBSYSTEM_ID = 16'h0001;	// Card identifier
parameter SUBSYSTEM_VENDOR_ID = 16'hBEBE; // Card identifier
parameter DEVSEL_TIMING = 2'b00;	// Fast!

reg [2:0] state;
reg [31:0] data;

reg [1:0] enable;
parameter EN_NONE = 0;
parameter EN_RD = 1;
parameter EN_WR = 2;
parameter EN_TR = 3;

reg memen; // respond to baseaddr?
reg [7:0] baseaddr;
reg [5:0] address;

parameter ST_IDLE = 3'b000;
parameter ST_BUSY = 3'b010;
parameter ST_MEMREAD = 3'b100;
parameter ST_MEMWRITE = 3'b101;
parameter ST_CFGREAD = 3'b110;
parameter ST_CFGWRITE = 3'b111;

parameter MEMREAD = 4'b0110;
parameter MEMWRITE = 4'b0111;
parameter CFGREAD = 4'b1010;
parameter CFGWRITE = 4'b1011;

`define LED
`ifdef LED
reg [3:0] led;
`endif

`undef STATE_DEBUG_LED
`ifdef STATE_DEBUG_LED
assign led_out = ~state;
assign enable_transaction = state;
`else
`ifdef LED
assign led_out = ~led;  // board is wired for active low LEDs
`endif
`endif

assign ad = (enable == EN_RD) ? data : 32'bZ;
assign trdy = (enable == EN_NONE) ? 'bZ : (enable == EN_TR ? 1 : 0);
assign par = (enable == EN_RD) ? 0 : 'bZ;
reg devsel;

assign stop = 1'bZ;
assign inta = 1'bZ;

wire cfg_hit = ((cbe == CFGREAD || cbe == CFGWRITE) && idsel && ad[1:0] == 2'b00);
wire addr_hit = ((cbe == MEMREAD || cbe == MEMWRITE) && memen && ad[31:12] == {12'b0, baseaddr});
wire hit = cfg_hit | addr_hit;

always @(posedge clk)
begin
    if (~reset) begin
        state <= ST_IDLE;
        enable <= EN_NONE;
        baseaddr <= 0;
        devsel <= 'bZ;
        memen <= 0;
`ifdef LED
        led <= 0;
`endif
    end
    else    begin
                
    case (state)
        ST_IDLE: begin
            enable <= EN_NONE;
            devsel <= 'bZ;
            if (~frame) begin
                address <= ad[7:2];
                if (hit) begin
                    state <= {1'b1, cbe[3], cbe[0]};
                    devsel <= 0;
                    // pipeline the write enable
                    if (cbe[0])
                        enable <= EN_WR;
                end
                else begin
                    state <= ST_BUSY;
                    enable <= EN_NONE;
                end
            end
        end

        ST_BUSY: begin
            devsel <= 'bZ;
            enable <= EN_NONE;
            if (frame)
                state <= ST_IDLE;
        end

        ST_CFGREAD: begin
            enable <= EN_RD;
            if (~irdy || trdy) begin
                case (address)
                    0: data <= { DEVICE_ID, VENDOR_ID };
                    1: data <= { 5'b0, DEVSEL_TIMING, 9'b0,  14'b0, memen, 1'b0};
                    2: data <= { DEVICE_CLASS, DEVICE_REV };
                    4: data <= { 12'b0, baseaddr, 8'b0, 4'b0010 }; // baseaddr + request mem < 1Mbyte
                    11: data <= {SUBSYSTEM_ID, SUBSYSTEM_VENDOR_ID };
                    16: data <= { 24'b0, baseaddr };
                    default: data <= 'h00000000;
                endcase
                address <= address + 1;
            end
            if (frame && ~irdy && ~trdy) begin
                devsel <= 1;
                state <= ST_IDLE;
                enable <= EN_TR;
            end
        end

        ST_CFGWRITE: begin
            enable <= EN_WR;
            if (~irdy) begin
                case (address)
                    4: baseaddr <= ad[19:12];  // XXX examine cbe
                    1: memen <= ad[1];
                    default: ;
                endcase
                address <= address + 1;
                if (frame) begin
                    devsel <= 1;
                    state <= ST_IDLE;
                    enable <= EN_TR;
                end
            end
        end

        ST_MEMREAD: begin
            enable <= EN_RD;
            if (~irdy || trdy) begin
                case (address)
`ifdef LED
                    0: data <= { 28'b0, led };
`endif
                    default: data <= 'h00000000;
                endcase
                address <= address + 1;
            end
            if (frame && ~irdy && ~trdy) begin
                devsel <= 1;
                state <= ST_IDLE;
                enable <= EN_TR;
            end
        end

        ST_MEMWRITE: begin
            enable <= EN_WR;
            if (~irdy) begin
                case (address)
`ifdef LED
                    0: led <= ad[3:0];
`endif
                    default: ;
                endcase
                address <= address + 1;
                if (frame) begin
                    devsel <= 1;
                    state <= ST_IDLE;
                    enable <= EN_TR;
                end
            end
        end

    endcase
    end
end
endmodule