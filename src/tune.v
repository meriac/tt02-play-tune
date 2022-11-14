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
                // Per-note clock dividers assume 10000Hz clock
                // Bottom-nibble is tick-count per note, upper nibbles are the per-note clock dividers
                 0: db_entry = 11'h3c3; // e6  (164.81Hz, 150ms,  3 ticks)
                 1: db_entry = 11'h3c3; // e6  (164.81Hz, 150ms,  3 ticks)
                 2: db_entry = 11'h002; // p5  (pause   , 100ms,  2 ticks)
                 3: db_entry = 11'h3c6; // e6  (164.81Hz, 300ms,  6 ticks)
                 4: db_entry = 11'h4c3; // c6  (130.81Hz, 150ms,  3 ticks)
                 5: db_entry = 11'h3c6; // e6  (164.81Hz, 300ms,  6 ticks)
                 6: db_entry = 11'h336; // g6  (196.0Hz , 300ms,  6 ticks)
                 7: db_entry = 11'h006; // p5  (pause   , 300ms,  6 ticks)
                 8: db_entry = 11'h666; // g5  (98.0Hz  , 300ms,  6 ticks)
                 9: db_entry = 11'h006; // p5  (pause   , 300ms,  6 ticks)
                10: db_entry = 11'h4c6; // c6  (130.81Hz, 300ms,  6 ticks)
                11: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks)
                12: db_entry = 11'h666; // g5  (98.0Hz  , 300ms,  6 ticks)
                13: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks)
                14: db_entry = 11'h796; // e5  (82.41Hz , 300ms,  6 ticks)
                15: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks)
                16: db_entry = 11'h5a6; // a5  (110.0Hz , 300ms,  6 ticks)
                17: db_entry = 11'h506; // b5  (123.47Hz, 300ms,  6 ticks)
                18: db_entry = 11'h553; // a#5 (116.54Hz, 150ms,  3 ticks)
                19: db_entry = 11'h5a6; // a5  (110.0Hz , 300ms,  6 ticks)
                20: db_entry = 11'h664; // g5. (98.0Hz  , 200ms,  4 ticks)
                21: db_entry = 11'h3c3; // e6  (164.81Hz, 150ms,  3 ticks)
                22: db_entry = 11'h333; // g6  (196.0Hz , 150ms,  3 ticks)
                23: db_entry = 11'h2d6; // a6  (220.0Hz , 300ms,  6 ticks)
                24: db_entry = 11'h393; // f6  (174.61Hz, 150ms,  3 ticks)
                25: db_entry = 11'h336; // g6  (196.0Hz , 300ms,  6 ticks)
                26: db_entry = 11'h3c6; // e6  (164.81Hz, 300ms,  6 ticks)
                27: db_entry = 11'h4c3; // c6  (130.81Hz, 150ms,  3 ticks)
                28: db_entry = 11'h443; // d6  (146.83Hz, 150ms,  3 ticks)
                29: db_entry = 11'h506; // b5  (123.47Hz, 300ms,  6 ticks)
                30: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks)
                31: db_entry = 11'h4c6; // c6  (130.81Hz, 300ms,  6 ticks)
                32: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks)
                33: db_entry = 11'h666; // g5  (98.0Hz  , 300ms,  6 ticks)
                34: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks)
                35: db_entry = 11'h796; // e5  (82.41Hz , 300ms,  6 ticks)
                36: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks)
                37: db_entry = 11'h5a6; // a5  (110.0Hz , 300ms,  6 ticks)
                38: db_entry = 11'h506; // b5  (123.47Hz, 300ms,  6 ticks)
                39: db_entry = 11'h553; // a#5 (116.54Hz, 150ms,  3 ticks)
                40: db_entry = 11'h5a6; // a5  (110.0Hz , 300ms,  6 ticks)
                41: db_entry = 11'h664; // g5. (98.0Hz  , 200ms,  4 ticks)
                42: db_entry = 11'h3c3; // e6  (164.81Hz, 150ms,  3 ticks)
                43: db_entry = 11'h333; // g6  (196.0Hz , 150ms,  3 ticks)
                44: db_entry = 11'h2d6; // a6  (220.0Hz , 300ms,  6 ticks)
                45: db_entry = 11'h393; // f6  (174.61Hz, 150ms,  3 ticks)
                46: db_entry = 11'h336; // g6  (196.0Hz , 300ms,  6 ticks)
                47: db_entry = 11'h3c6; // e6  (164.81Hz, 300ms,  6 ticks)
                48: db_entry = 11'h4c3; // c6  (130.81Hz, 150ms,  3 ticks)
                49: db_entry = 11'h443; // d6  (146.83Hz, 150ms,  3 ticks)
                50: db_entry = 11'h506; // b5  (123.47Hz, 300ms,  6 ticks)
                51: db_entry = 11'h006; // p5  (pause   , 300ms,  6 ticks)
                52: db_entry = 11'h333; // g6  (196.0Hz , 150ms,  3 ticks)
                53: db_entry = 11'h363; // f#6 (185.0Hz , 150ms,  3 ticks)
                54: db_entry = 11'h393; // f6  (174.61Hz, 150ms,  3 ticks)
                55: db_entry = 11'h403; // d#6 (155.56Hz, 150ms,  3 ticks)
                56: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks)
                57: db_entry = 11'h3c3; // e6  (164.81Hz, 150ms,  3 ticks)
                58: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks)
                59: db_entry = 11'h603; // g#5 (103.83Hz, 150ms,  3 ticks)
                60: db_entry = 11'h5a3; // a5  (110.0Hz , 150ms,  3 ticks)
                61: db_entry = 11'h4c3; // c6  (130.81Hz, 150ms,  3 ticks)
                62: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks)
                63: db_entry = 11'h5a3; // a5  (110.0Hz , 150ms,  3 ticks)
                64: db_entry = 11'h4c3; // c6  (130.81Hz, 150ms,  3 ticks)
                65: db_entry = 11'h443; // d6  (146.83Hz, 150ms,  3 ticks)
                66: db_entry = 11'h006; // p5  (pause   , 300ms,  6 ticks)
                67: db_entry = 11'h333; // g6  (196.0Hz , 150ms,  3 ticks)
                68: db_entry = 11'h363; // f#6 (185.0Hz , 150ms,  3 ticks)
                69: db_entry = 11'h393; // f6  (174.61Hz, 150ms,  3 ticks)
                70: db_entry = 11'h403; // d#6 (155.56Hz, 150ms,  3 ticks)
                71: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks)
                72: db_entry = 11'h3c3; // e6  (164.81Hz, 150ms,  3 ticks)
                73: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks)
                74: db_entry = 11'h263; // c7  (261.63Hz, 150ms,  3 ticks)
                75: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks)
                76: db_entry = 11'h263; // c7  (261.63Hz, 150ms,  3 ticks)
                77: db_entry = 11'h263; // c7  (261.63Hz, 150ms,  3 ticks)
                78: db_entry = 11'h00c; // p5  (pause   , 600ms, 12 ticks)
                79: db_entry = 11'h333; // g6  (196.0Hz , 150ms,  3 ticks)
                80: db_entry = 11'h363; // f#6 (185.0Hz , 150ms,  3 ticks)
                81: db_entry = 11'h393; // f6  (174.61Hz, 150ms,  3 ticks)
                82: db_entry = 11'h403; // d#6 (155.56Hz, 150ms,  3 ticks)
                83: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks)
                84: db_entry = 11'h3c3; // e6  (164.81Hz, 150ms,  3 ticks)
                85: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks)
                86: db_entry = 11'h603; // g#5 (103.83Hz, 150ms,  3 ticks)
                87: db_entry = 11'h5a3; // a5  (110.0Hz , 150ms,  3 ticks)
                88: db_entry = 11'h4c3; // c6  (130.81Hz, 150ms,  3 ticks)
                89: db_entry = 11'h003; // p5  (pause   , 150ms,  3 ticks)
                90: db_entry = 11'h5a3; // a5  (110.0Hz , 150ms,  3 ticks)
                91: db_entry = 11'h4c3; // c6  (130.81Hz, 150ms,  3 ticks)
                92: db_entry = 11'h443; // d6  (146.83Hz, 150ms,  3 ticks)
                93: db_entry = 11'h006; // p5  (pause   , 300ms,  6 ticks)
                94: db_entry = 11'h403; // d#6 (155.56Hz, 150ms,  3 ticks)
                95: db_entry = 11'h006; // p5  (pause   , 300ms,  6 ticks)
                96: db_entry = 11'h443; // d6  (146.83Hz, 150ms,  3 ticks)
                97: db_entry = 11'h006; // p5  (pause   , 300ms,  6 ticks)
                98: db_entry = 11'h4c3; // c6  (130.81Hz, 150ms,  3 ticks)
                99: db_entry = 11'h00c; // p5  (pause   , 600ms, 12 ticks)
            default:    
                db_entry = 11'h000;
        endcase

    end

endmodule
