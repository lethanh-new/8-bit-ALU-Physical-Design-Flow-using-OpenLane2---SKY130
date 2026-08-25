/*
 *inst[3:0]  =  4'h0 => reserved
 *inst[3:0]  =  4'h1 => Addition  
 *inst[3:0]  =  4'h2 => Substraction

 *inst[3:0]  =  4'h3 => Multiply  
 *inst[3:0]  =  4'h4 => division  
 *inst[3:0]  =  4'h5 => shift right
 *inst[3:0]  =  4'h6 => shift left
 *inst[3:0]  =  4'h7 => logical AND
 *inst[3:0]  =  4'h8 => logical OR
 *inst[3:0]  =  4'h9 => Bitwise AND
 *inst[3:0]  =  4'hA => Bitwise OR
 *inst[3:0]  =  4'hB => XOR        
 *inst[3:0]  =  4'hC => Reserved  
 *inst[3:0]  =  4'hD => Reserved  
 *inst[3:0]  =  4'hE => Reserved  
 *inst[3:0]  =  4'hF => Reserved  
 *
 *
 */


`timescale 1ns/100ps

module alu8bit (
      input [3:0] inst ,
      input [7:0] op_a,
      input [7:0] op_b,
      output [7:0] op_out
   );


reg [8:0] op_out_int;

assign op_out = op_out_int[7:0];

always @(*) begin
 case (inst)
   4'h1 :  //
       op_out_int = op_a + op_b ;  // can instantiate a adder here
   4'h2 :  //
       op_out_int = op_a - op_b ;
   4'h3 :  //
       op_out_int = op_a * op_b ;
   4'h4 :  //
       op_out_int = op_a / op_b ;
   4'h5 :  //
       op_out_int = op_a >> 1  ;
   4'h6 :  //
       op_out_int = op_a << 1 ;
   4'h7 :  //
       op_out_int = op_a && op_b ;
   4'h8 :  //
       op_out_int = op_a || op_b ;
   4'h9 :  //
       op_out_int = op_a & op_b ;
   4'hA :  //
       op_out_int = op_a | op_b ;
   4'hB :  //
       op_out_int = op_a ^ op_b ;
   default : op_out_int = 'b0;
 endcase
end


endmodule