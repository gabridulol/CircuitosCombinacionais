module Codificador (
    input [3:0] Input,
    input Ready,
    input Reset,
    output [3:0] Output
);

assign Output[3] = (Ready & ~Reset) ? ((~Input[3] & ~Input[2] & ~Input[1]) | (~Input[2] & Input[0]) | (~Input[3] & Input[1] & Input[0]) | (Input[3] & Input[2] & ~Input[0])) : 1'b0;
assign Output[2] = (Ready & ~Reset) ? ((~Input[3] & ~Input[0]) | (~Input[3] & Input[1]) | (Input[2])) : 1'b0;
assign Output[1] = (Ready & ~Reset) ? ((~Input[3] & ~Input[2] & ~Input[1]) | (~Input[3] & ~Input[1] & ~Input[0]) | (~Input[3] & Input[2] & Input[1]) | (Input[3] & ~Input[1] & Input[0]) | (Input[3] & ~Input[2] & Input[1] & ~Input[0])) : 1'b0;
assign Output[0] = (Ready & ~Reset) ? ((~Input[3] & Input[1] & Input[0]) | (Input[2] & Input[0]) | (~Input[3] & Input[2] & Input[1]) | (Input[3] & ~Input[1] & Input[0]) | (Input[3] & Input[2] & ~Input[1])) : 1'b0;

endmodule
