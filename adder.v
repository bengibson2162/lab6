module adder
(
    
    input A, B,
    output Y, carry
    
    // Declare your A/B inputs
    // Declare Y output
    // Declare carry output
);
    assign Y = (A ^ B);
    assign carry = (A & B);
    // Enter logic equation here

endmodule