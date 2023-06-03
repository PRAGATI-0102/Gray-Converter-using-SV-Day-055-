`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 09:30:51 PM
// Design Name: 
// Module Name: tb_gray_converter
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


module tb_gray_converter();

    parameter width = 3;
    
    logic [width-1:0] bin;
    
    logic [width-1:0] grey;
    
    gray_converter dut(.*);
    
    always #5 bin = bin + 1;
    
    initial 
    begin
        bin = 0;
        #100;
        $finish();
    
    end
    
endmodule