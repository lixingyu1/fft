module top (
    input               clk,
    input               rstn
);








//rom控制模块，产生信号
rom_crtl u_rom_crtl(
    .clk  ( clk  ),
    .rstn ( rstn ),
    .data  ( data  )
);

endmodule //top