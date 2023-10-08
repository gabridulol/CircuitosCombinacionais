module Display (
    input [3:0] Output,
    output [6:0] Display
);

assign Display[6] = (~Output[2] & ~Output[0]) | (~Output[3] & Output[1]) | (~Output[3] & Output[2] & Output[0]) | (Output[2] & Output[1]) | (Output[3] & ~Output[2] & ~Output[1]) | (Output[3] & ~Output[0]);
assign Display[5] = (~Output[3] & ~Output[2]) | (~Output[3] & ~Output[1] & ~Output[0]) | (~Output[2] & ~Output[0]) | (~Output[3] & Output[1] & Output[0]) | (Output[3] & ~Output[1] & Output[0]);
assign Display[4] = (~Output[3] & ~Output[1]) | (~Output[3] & Output[0]) | (~Output[1] & Output[0]) | (~Output[3] & Output[2]) | (Output[3] & ~Output[2]);
assign Display[3] = (~Output[3] & ~Output[2] & ~Output[0]) | (~Output[2] & Output[1] & Output[0]) | (Output[2] & ~Output[1] & Output[0]) | (Output[2] & Output[1] & ~Output[0]) | (Output[3] & ~Output[1]);
assign Display[2] = (~Output[2] & ~Output[0]) | (Output[1] & ~Output[0]) | (Output[3] & Output[1]) | (Output[3] & Output[2]);
assign Display[1] = (~Output[1] & ~Output[0]) | (~Output[3] & Output[2] & ~Output[1]) | (Output[2] & ~Output[0]) | (Output[3] & ~Output[2]) | (Output[3] & Output[1]);
assign Display[0] = (~Output[2] & Output[1]) | (Output[1] & ~Output[0]) | (~Output[3] & Output[2] & ~Output[1]) | (Output[3] & ~Output[2]) | (Output[3] & Output[0]);


endmodule
