module Codificador_tb;

  reg [3:0] Input;
  reg Ready;
  reg Reset;
  wire [3:0] Output;
  wire [7:0] Display;

  Codificador UUT_Codificador (
    .Input(Input),
    .Ready(Ready),
    .Reset(Reset),
    .Output(Output)
  );

  Display UUT_Display (
    .Output(Output),
    .Display(Display)
  )

  initial begin
    
  end

endmodule
