`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 09:28:38 PM
// Design Name: 
// Module Name: gray_converter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gray_converter #(parameter width = 3) (
    input logic [width-1:0] bin,
    output logic [width-1:0] grey
);

    genvar i;
    generate
        for (i = 0; i < width; i++) begin
            assign grey[i] = (i == (width - 1)) ? bin[i] : (bin[i] ^ bin[i+1]);
        end
    endgenerate

endmodule
