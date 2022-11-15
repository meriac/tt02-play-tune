/*
    Verilog database LUT for playing a RTTL ringtone on a Piezo Speaker

    Copyright 2022 Milosch Meriac <milosch@meriac.com>
    Location: https://github.com/meriac/tt02-play-tune/

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions
    are met:

    1. Redistributions of source code must retain the above copyright
       notice, this list of conditions and the following disclaimer.

    2. Redistributions in binary form must reproduce the above copyright
       notice, this list of conditions and the following disclaimer in the
       documentation and/or other materials provided with the distribution.

    3. Neither the name of the copyright holder nor the names of its
       contributors may be used to endorse or promote products derived
       from this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
    "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
    LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
    A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
    HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
    SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
    LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
    DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
    THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
    (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
    OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

*/

module meriac_tune_db (
    input wire [6:0] address,
    output reg [10:0] db_entry
);
    always @(*) begin
        case(address)
                // Song: Super Mario
                // One timer-tick equals 50ms
                // Per-note clock dividers assume 3000Hz clock
                // Bottom-nibble is tick-count per note, upper nibbles are the per-note clock dividers
                 0: db_entry = 11'h243; // e6  (82.41Hz , 150ms,  3 ticks,  36 fdiv)
                 1: db_entry = 11'h243; // e6  (82.41Hz , 150ms,  3 ticks,  36 fdiv)
                 2: db_entry = 11'h002; // p5  (pause   , 100ms,  2 ticks,   0 fdiv)
                 3: db_entry = 11'h246; // e6  (82.41Hz , 300ms,  6 ticks,  36 fdiv)
                 4: db_entry = 11'h2d3; // c6  (65.41Hz , 150ms,  3 ticks,  45 fdiv)
                 5: db_entry = 11'h246; // e6  (82.41Hz , 300ms,  6 ticks,  36 fdiv)
                 6: db_entry = 11'h1e6; // g6  (98.0Hz  , 300ms,  6 ticks,  30 fdiv)
                 7: db_entry = 11'h006; // p5  (pause   , 300ms,  6 ticks,   0 fdiv)
                 8: db_entry = 11'h3d6; // g5  (49.0Hz  , 300ms,  6 ticks,  61 fdiv)
                 9: db_entry = 11'h006; // p5  (pause   , 300ms,  6 ticks,   0 fdiv)
                10: db_entry = 11'h2d6; // c6  (65.41Hz , 300ms,  6 ticks,  45 fdiv)
                11: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks,   0 fdiv)
                12: db_entry = 11'h3d6; // g5  (49.0Hz  , 300ms,  6 ticks,  61 fdiv)
                13: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks,   0 fdiv)
                14: db_entry = 11'h486; // e5  (41.2Hz  , 300ms,  6 ticks,  72 fdiv)
                15: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks,   0 fdiv)
                16: db_entry = 11'h366; // a5  (55.0Hz  , 300ms,  6 ticks,  54 fdiv)
                17: db_entry = 11'h306; // b5  (61.74Hz , 300ms,  6 ticks,  48 fdiv)
                18: db_entry = 11'h333; // a#5 (58.27Hz , 150ms,  3 ticks,  51 fdiv)
                19: db_entry = 11'h366; // a5  (55.0Hz  , 300ms,  6 ticks,  54 fdiv)
                20: db_entry = 11'h3d4; // g5. (49.0Hz  , 200ms,  4 ticks,  61 fdiv)
                21: db_entry = 11'h243; // e6  (82.41Hz , 150ms,  3 ticks,  36 fdiv)
                22: db_entry = 11'h1e3; // g6  (98.0Hz  , 150ms,  3 ticks,  30 fdiv)
                23: db_entry = 11'h1b6; // a6  (110.0Hz , 300ms,  6 ticks,  27 fdiv)
                24: db_entry = 11'h223; // f6  (87.31Hz , 150ms,  3 ticks,  34 fdiv)
                25: db_entry = 11'h1e6; // g6  (98.0Hz  , 300ms,  6 ticks,  30 fdiv)
                26: db_entry = 11'h246; // e6  (82.41Hz , 300ms,  6 ticks,  36 fdiv)
                27: db_entry = 11'h2d3; // c6  (65.41Hz , 150ms,  3 ticks,  45 fdiv)
                28: db_entry = 11'h283; // d6  (73.42Hz , 150ms,  3 ticks,  40 fdiv)
                29: db_entry = 11'h306; // b5  (61.74Hz , 300ms,  6 ticks,  48 fdiv)
                30: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks,   0 fdiv)
                31: db_entry = 11'h2d6; // c6  (65.41Hz , 300ms,  6 ticks,  45 fdiv)
                32: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks,   0 fdiv)
                33: db_entry = 11'h3d6; // g5  (49.0Hz  , 300ms,  6 ticks,  61 fdiv)
                34: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks,   0 fdiv)
                35: db_entry = 11'h486; // e5  (41.2Hz  , 300ms,  6 ticks,  72 fdiv)
                36: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks,   0 fdiv)
                37: db_entry = 11'h366; // a5  (55.0Hz  , 300ms,  6 ticks,  54 fdiv)
                38: db_entry = 11'h306; // b5  (61.74Hz , 300ms,  6 ticks,  48 fdiv)
                39: db_entry = 11'h333; // a#5 (58.27Hz , 150ms,  3 ticks,  51 fdiv)
                40: db_entry = 11'h366; // a5  (55.0Hz  , 300ms,  6 ticks,  54 fdiv)
                41: db_entry = 11'h3d4; // g5. (49.0Hz  , 200ms,  4 ticks,  61 fdiv)
                42: db_entry = 11'h243; // e6  (82.41Hz , 150ms,  3 ticks,  36 fdiv)
                43: db_entry = 11'h1e3; // g6  (98.0Hz  , 150ms,  3 ticks,  30 fdiv)
                44: db_entry = 11'h1b6; // a6  (110.0Hz , 300ms,  6 ticks,  27 fdiv)
                45: db_entry = 11'h223; // f6  (87.31Hz , 150ms,  3 ticks,  34 fdiv)
                46: db_entry = 11'h1e6; // g6  (98.0Hz  , 300ms,  6 ticks,  30 fdiv)
                47: db_entry = 11'h246; // e6  (82.41Hz , 300ms,  6 ticks,  36 fdiv)
                48: db_entry = 11'h2d3; // c6  (65.41Hz , 150ms,  3 ticks,  45 fdiv)
                49: db_entry = 11'h283; // d6  (73.42Hz , 150ms,  3 ticks,  40 fdiv)
                50: db_entry = 11'h306; // b5  (61.74Hz , 300ms,  6 ticks,  48 fdiv)
                51: db_entry = 11'h006; // p5  (pause   , 300ms,  6 ticks,   0 fdiv)
                52: db_entry = 11'h1e3; // g6  (98.0Hz  , 150ms,  3 ticks,  30 fdiv)
                53: db_entry = 11'h203; // f#6 (92.5Hz  , 150ms,  3 ticks,  32 fdiv)
                54: db_entry = 11'h223; // f6  (87.31Hz , 150ms,  3 ticks,  34 fdiv)
                55: db_entry = 11'h263; // d#6 (77.78Hz , 150ms,  3 ticks,  38 fdiv)
                56: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks,   0 fdiv)
                57: db_entry = 11'h243; // e6  (82.41Hz , 150ms,  3 ticks,  36 fdiv)
                58: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks,   0 fdiv)
                59: db_entry = 11'h393; // g#5 (51.91Hz , 150ms,  3 ticks,  57 fdiv)
                60: db_entry = 11'h363; // a5  (55.0Hz  , 150ms,  3 ticks,  54 fdiv)
                61: db_entry = 11'h2d3; // c6  (65.41Hz , 150ms,  3 ticks,  45 fdiv)
                62: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks,   0 fdiv)
                63: db_entry = 11'h363; // a5  (55.0Hz  , 150ms,  3 ticks,  54 fdiv)
                64: db_entry = 11'h2d3; // c6  (65.41Hz , 150ms,  3 ticks,  45 fdiv)
                65: db_entry = 11'h283; // d6  (73.42Hz , 150ms,  3 ticks,  40 fdiv)
                66: db_entry = 11'h006; // p5  (pause   , 300ms,  6 ticks,   0 fdiv)
                67: db_entry = 11'h1e3; // g6  (98.0Hz  , 150ms,  3 ticks,  30 fdiv)
                68: db_entry = 11'h203; // f#6 (92.5Hz  , 150ms,  3 ticks,  32 fdiv)
                69: db_entry = 11'h223; // f6  (87.31Hz , 150ms,  3 ticks,  34 fdiv)
                70: db_entry = 11'h263; // d#6 (77.78Hz , 150ms,  3 ticks,  38 fdiv)
                71: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks,   0 fdiv)
                72: db_entry = 11'h243; // e6  (82.41Hz , 150ms,  3 ticks,  36 fdiv)
                73: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks,   0 fdiv)
                74: db_entry = 11'h163; // c7  (130.81Hz, 150ms,  3 ticks,  22 fdiv)
                75: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks,   0 fdiv)
                76: db_entry = 11'h163; // c7  (130.81Hz, 150ms,  3 ticks,  22 fdiv)
                77: db_entry = 11'h163; // c7  (130.81Hz, 150ms,  3 ticks,  22 fdiv)
                78: db_entry = 11'h00c; // p5  (pause   , 600ms, 12 ticks,   0 fdiv)
                79: db_entry = 11'h1e3; // g6  (98.0Hz  , 150ms,  3 ticks,  30 fdiv)
                80: db_entry = 11'h203; // f#6 (92.5Hz  , 150ms,  3 ticks,  32 fdiv)
                81: db_entry = 11'h223; // f6  (87.31Hz , 150ms,  3 ticks,  34 fdiv)
                82: db_entry = 11'h263; // d#6 (77.78Hz , 150ms,  3 ticks,  38 fdiv)
                83: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks,   0 fdiv)
                84: db_entry = 11'h243; // e6  (82.41Hz , 150ms,  3 ticks,  36 fdiv)
                85: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks,   0 fdiv)
                86: db_entry = 11'h393; // g#5 (51.91Hz , 150ms,  3 ticks,  57 fdiv)
                87: db_entry = 11'h363; // a5  (55.0Hz  , 150ms,  3 ticks,  54 fdiv)
                88: db_entry = 11'h2d3; // c6  (65.41Hz , 150ms,  3 ticks,  45 fdiv)
                89: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks,   0 fdiv)
                90: db_entry = 11'h363; // a5  (55.0Hz  , 150ms,  3 ticks,  54 fdiv)
                91: db_entry = 11'h2d3; // c6  (65.41Hz , 150ms,  3 ticks,  45 fdiv)
                92: db_entry = 11'h283; // d6  (73.42Hz , 150ms,  3 ticks,  40 fdiv)
                93: db_entry = 11'h006; // p5  (pause   , 300ms,  6 ticks,   0 fdiv)
                94: db_entry = 11'h263; // d#6 (77.78Hz , 150ms,  3 ticks,  38 fdiv)
                95: db_entry = 11'h006; // p5  (pause   , 300ms,  6 ticks,   0 fdiv)
                96: db_entry = 11'h283; // d6  (73.42Hz , 150ms,  3 ticks,  40 fdiv)
                97: db_entry = 11'h006; // p5  (pause   , 300ms,  6 ticks,   0 fdiv)
                98: db_entry = 11'h2d3; // c6  (65.41Hz , 150ms,  3 ticks,  45 fdiv)
                99: db_entry = 11'h00c; // p5  (pause   , 600ms, 12 ticks,   0 fdiv)
            default:    
                db_entry = 11'h000;
        endcase

    end

endmodule
