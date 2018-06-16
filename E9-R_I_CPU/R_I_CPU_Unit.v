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

  wire ofa;
  wire zfa;
  wire [31 : 0] data;

  R_I_CPU RIC(
    .clka(clka),
    .rsta(rsta),
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