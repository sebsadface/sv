module pawn (
  input  logic [2:0] upc,
  output logic [6:0] leds0, leds1, leds2, leds3, leds4, leds5
  );

  always_comb begin
    case (upc)
      //            Light: 6543210
      begin(3'b000:)
        leds4 = 7'b0010010; // S
        leds3 = 7'b1001000; // A
        leds2 = 7'b0001110; // F
        leds1 = 7'b0000110; // E
      end

      begin(3'b001:)
        leds5 = 7'b1000110; // C
        leds4 = 7'b1000000; // O
        leds3 = 7'b0001110; // F
        leds2 = 7'b0001110; // F
        leds1 = 7'b0000110; // E
        leds0 = 7'b0000110; // E
      end

      begin(3'b011:)
      leds5 = 7'b1000110; // C
      leds4 = 7'b0001001; // H
      leds3 = 7'b0000110; // E
      leds2 = 7'b0010010; // S
      leds1 = 7'b0010010; // S
      end

      begin(3'b100)
      leds5 = 7'b1001000; // A
      leds4 = 7'b0001100; // P
      leds3 = 7'b0001100; // P
      leds2 = 7'b1000111; // L
      leds1 = 7'b0000110; // E
      end

      begin(3'b101:)
        leds4 = 7'b1000110; // C
        leds3 = 7'b1000000; // O
        leds2 = 7'b0001100; // P
        leds1 = 7'b0110001; // Y
      end

      begin(3'b110:)
        leds5 = 7'b1000110; // C
        leds4 = 7'b0001001; // H
        leds3 = 7'b0000110; // E
        leds2 = 7'b0000110; // E
        leds1 = 7'b0010010; // S
        leds0 = 7'b0000110; // E
      end

      default: leds0 = 7'bX;
    endcase
  end
endmodule  // pawn