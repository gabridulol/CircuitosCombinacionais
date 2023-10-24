module Codificador (
    input [3:0] Input,
    input Ready,
    input Reset,
    output [3:0] Output
);

assign Output[3] = (~Ready & Reset) ? (~Input[3] & ~Input[2] & ~Input[1]) | (~Input[2] & Input[0]) | (~Input[3] & Input[1] & Input[0]) | (Input[3] & Input[2] & ~Input[0]) : 1'b0;
assign Output[2] = (~Ready & Reset) ? (~Input[3] & ~Input[0]) | (~Input[3] & Input[1]) | (Input[2] & Input[1]) : 1'b0;
assign Output[1] = (~Ready & Reset) ? (~Input[3] & ~Input[2] & ~Input[1]) | (~Input[3] & ~Input[1] & ~Input[0]) | (~Input[3] & Input[2] & Input[1]) | (Input[3] & ~Input[1] & Input[0]) | (Input[3] & ~Input[2] & Input[1] & ~Input[0]) : 1'b0;
assign Output[0] = (~Ready & Reset) ? (~Input[3] & Input[1] & Input[0]) | (Input[2] & Input[0]) | (~Input[3] & Input[2] & Input[1]) | (Input[3] & ~Input[1] & Input[0]) | (Input[3] & Input[2] & ~Input[1]) : 1'b0;

endmodule

module Display (
    input [3:0] Output,
    output [6:0] Display
);

assign Display[0] = ~((~Output[2] & ~Output[0]) | (~Output[3] & Output[1]) | (~Output[3] & Output[2] & Output[0]) | (Output[2] & Output[1]) | (Output[3] & ~Output[2] & ~Output[1]) | (Output[3] & ~Output[0]));
assign Display[1] = ~((~Output[3] & ~Output[2]) | (~Output[3] & ~Output[1] & ~Output[0]) | (~Output[2] & ~Output[0]) | (~Output[3] & Output[1] & Output[0]) | (Output[3] & ~Output[1] & Output[0]));
assign Display[2] = ~((~Output[3] & ~Output[1]) | (~Output[3] & Output[0]) | (~Output[1] & Output[0]) | (~Output[3] & Output[2]) | (Output[3] & ~Output[2]));
assign Display[3] = ~((~Output[3] & ~Output[2] & ~Output[0]) | (~Output[2] & Output[1] & Output[0]) | (Output[2] & ~Output[1] & Output[0]) | (Output[2] & Output[1] & ~Output[0]) | (Output[3] & ~Output[1]));
assign Display[4] = ~((~Output[2] & ~Output[0]) | (Output[1] & ~Output[0]) | (Output[3] & Output[1]) | (Output[3] & Output[2]));
assign Display[5] = ~((~Output[1] & ~Output[0]) | (~Output[3] & Output[2] & ~Output[1]) | (Output[2] & ~Output[0]) | (Output[3] & ~Output[2]) | (Output[3] & Output[1]));
assign Display[6] = ~((~Output[2] & Output[1]) | (Output[1] & ~Output[0]) | (~Output[3] & Output[2] & ~Output[1]) | (Output[3] & ~Output[2]) | (Output[3] & Output[0]));


endmodule
