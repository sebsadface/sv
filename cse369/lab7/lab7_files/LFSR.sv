module LFSR (
    input logic clk, reset,
    output logic [8:0] Q
);

always_ff @(posedge clk) begin
    if (reset) 
        Q <= 9'b0;
    else    
        Q[8] <= Q[7];
        Q[7] <= Q[6];
        Q[6] <= Q[5];
        Q[5] <= Q[4];
        Q[4] <= Q[3];
        Q[3] <= Q[2];
        Q[2] <= Q[1];
        Q[1] <= Q[0];
        Q[0] <= ~(Q[4] ^ Q[8]);
end 

endmodule // LFSR