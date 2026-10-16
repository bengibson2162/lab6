module top
(

    input [7:0] sw,
    output [5:0] led
);

    light aaa
    (
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stairwaylight(led[0])
    );

    adder aab
    (
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .carry(led[2])
    );

    full_adder part1
    (
        .A(sw[4]),
        .B(sw[6]),
        .Y(led[3]),
        .Cin(1'b0),
        .Cout(carry)
    );

    full_adder part2
    (
        .A(sw[5]),
        .B(sw[7]),
        .Cin(carry),
        .Y(led[4]),
        .Cout(led[5])
    );
 
endmodule
// Implement top level module