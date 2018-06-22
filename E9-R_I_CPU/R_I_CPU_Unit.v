module R_I_CPU_Unit(
  clka,
  clkb,
  rsta,
  sela,
  LED
  );

  input clka;
  input clkb;
  input rsta;
  input [3 : 0] sela;
  output [7 : 0] LED;
  
  wire clk_de;
  wire ofa;
  wire zfa;
  wire [31 : 0] data;
  
  DEBOUNCE DBCLKA(
    .clk(clkb),
    .key_xi(clka),
    .key_xo(clk_de)
  );
  
  DEBOUNCE DBRSTA(
    .clk(clkb),
    .key_xi(rsta),
    .key_xo(rst_de)
  );
  R_I_CPU RIC(
    .clka(clk_de),
    .rsta(rst_de),
    .ofa(ofa),
    .zfa(zfa),
    .douta(data)
  );

  LED_DISPLAY L_D(
    .dina(data),
    .zfa(zfa),
    .ofa(ofa),
    .sela(sela),
    .LED(LED)
  );
endmodule