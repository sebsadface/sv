module lab4 (
    output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5,
    input logic [9:0] SW
);

seg7 H0 (.bcd(~[3:0]SW), .leds([6:0]HEX0));

seg7 H1 (.bcd(~[4:7]SW), .leds([6:0]HEX1));
    
endmodule