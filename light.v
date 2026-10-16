module light
(
    input downstairs, upstairs,
    output stairwaylight

    // Declare downstairs and upstairs input
    // Declare stair light output
);

    assign stairwaylight = (downstairs ^ upstairs);
    // Enter logic equation here

endmodule