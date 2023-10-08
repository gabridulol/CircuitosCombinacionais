module Testbench();

  reg [3:0] Input;
  reg Ready;
  reg Reset;
  wire [3:0] Output;
  wire [6:0] Display;

  Codificador UUT_Codificador (
    .Input(Input),
    .Ready(Ready),
    .Reset(Reset),
    .Output(Output)
  );

  Display UUT_Display (
    .Output(Output),
    .Display(Display)
  );

  integer i;

  initial begin
    $dumpfile("GTKWaves.vcd");
    $dumpvars();
    Ready = 0; // Sinal de Controle - Ready
    Reset = 0; // Sinal de Controle - Reset
    for (i = 0; i <= 15; i = i + 1) begin
      Input = i;
      #10
      $display("Entrada : %b %b %b %b", Input[3], Input[2], Input[1], Input[0]);
      $display("Codificado : %b %b %b %b", Output[3], Output[2], Output[1], Output[0]);
      $display("Display : %b %b %b %b %b %b %b\n", Display[6], Display[5], Display[4], Display[3], Display[2], Display[1], Display[0]);
    end
    $finish;
  end

endmodule
