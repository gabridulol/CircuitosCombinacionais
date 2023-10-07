module Codificador (
    input [3:0] Input,
    input Ready,
    input Reset,
    output reg [3:0] Output
    output reg [6:0] Display
);

always @(posedge Ready or posedge Reset) begin
  if (Reset) begin
    Output = 4'b0000;
    Display = 7'b0000000;
  end else if (Ready) begin

    Output[3] = ~A ~B ~C + ~B D + ~A C D + A B ~D  (~input[3] & ~input[2] & ~input[1]) | (~input[2] & input[0]) | (~input[3] & input[1] & input[0]) | (input[3] & input[2] & ~input[0])
    Output[2] = ~A ~D + ~A C + B  (~input[3] & ~input[0]) | (~input[3] & input[1]) | (input[2])
    Output[1] = ~A ~B ~C + ~A ~C ~D + ~A B C + A ~C D + A ~B C ~D (~input[3] & ~input[2] & ~input[1]) | (~input[3] & ~input[1] & ~input[0]) | (~input[3] & input[2] & input[1]) | (input[3] & ~input[1] & input[0]) | (input[3] & ~input[2] & input[1] & ~input[0])
    Output[0] = ~A C D + B D + ~A B C + A ~C D + A B ~C  (~input[3] & input[1] & input[0]) | (input[2] & input[0]) | (~input[3] & input[2] & input[1]) | (input[3] & ~input[1] & input[0]) | (input[3] & input[2] & ~input[1])

    Display[6] = ~S2 ~S0 + ~S3 S1 + ~S3 S2 S0 + S2 S1 + S3 ~S2 ~S1 + S3 ~S0
    Display[5] = ~S3 ~S2 + ~S3 ~S1 ~S0 + ~S2 ~S0 + ~S3 S1 S0 + S3 ~S1 S0
    Display[4] = ~S3 ~S1 + ~S3 S0 + ~S1 S0 + ~S3 S2 + S3 ~S2
    Display[3] = ~S3 ~S2 ~S0 + ~S2 S1 S0 + S2 ~S1 S0 + S2 S1 ~S0 + S3 ~S1
    Display[2] = ~S2 ~S0 + S1 ~S0 + S3 S1 + S3 S2
    Display[1] = ~S1 ~S0 + ~S3 S2 ~S1 + S2 ~S0 + S3 ~S2 + S3 S1
    Display[0] = ~S2 S1 + S2 ~S1 + S2 ~S0 + S3

  end
end

endmodule