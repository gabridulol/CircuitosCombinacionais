module Display (
    input [3:0] Output,
    output [6:0] Display
);

assign Display[6] = ~S2 ~S0 + ~S3 S1 + ~S3 S2 S0 + S2 S1 + S3 ~S2 ~S1 + S3 ~S0
assign Display[5] = ~S3 ~S2 + ~S3 ~S1 ~S0 + ~S2 ~S0 + ~S3 S1 S0 + S3 ~S1 S0
assign Display[4] = ~S3 ~S1 + ~S3 S0 + ~S1 S0 + ~S3 S2 + S3 ~S2
assign Display[3] = ~S3 ~S2 ~S0 + ~S2 S1 S0 + S2 ~S1 S0 + S2 S1 ~S0 + S3 ~S1
assign Display[2] = ~S2 ~S0 + S1 ~S0 + S3 S1 + S3 S2
assign Display[1] = ~S1 ~S0 + ~S3 S2 ~S1 + S2 ~S0 + S3 ~S2 + S3 S1
assign Display[0] = ~S2 S1 + S2 ~S1 + S2 ~S0 + S3

endmodule