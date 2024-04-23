module rom_crtl (
    input                   clk,
    input                   rstn,

    output [11:0]           data
);

reg [6:0] addr;

//地址位
always @(posedge clk or negedge rstn) begin
    if(!rstn)
        addr <= 0;
    else
        addr <= addr + 1;
end

//自己配置ROM ip核，产生正弦波信号
rom	rom_inst (
	.address ( addr ),
	.clock ( rstn ),
	.q ( data )
	);

endmodule //rom_crtl