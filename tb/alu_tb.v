`timescale 1ns/1ps

module testbench_alu;

reg [7:0] op_a;
reg [7:0] op_b;
reg [3:0] inst;

wire [7:0] op_out;

alu8bit i1 (
    .inst(inst),
    .op_a(op_a),
    .op_b(op_b),
    .op_out(op_out)
);

initial begin

    $dumpfile("alu.vcd");
    $dumpvars(0, testbench_alu);

    // =========================
    // ADD
    // =========================
    op_a = 8'd10;
    op_b = 8'd5;
    inst = 4'h1;

    #20;
    $display("ADD: %d + %d = %d", op_a, op_b, op_out);


    // =========================
    // SUBTRACT
    // =========================
    op_a = 8'd10;
    op_b = 8'd5;
    inst = 4'h2;

    #20;
    $display("SUB: %d - %d = %d", op_a, op_b, op_out);


    // =========================
    // MULTIPLY
    // =========================
    op_a = 8'd10;
    op_b = 8'd5;
    inst = 4'h3;

    #20;
    $display("MUL: %d * %d = %d", op_a, op_b, op_out);


    // =========================
    // DIVISION
    // =========================
    op_a = 8'd50;
    op_b = 8'd5;
    inst = 4'h4;

    #20;
    $display("DIV: %d / %d = %d", op_a, op_b, op_out);


    // =========================
    // SHIFT RIGHT
    // =========================
    op_a = 8'b10101010;
    op_b = 8'd0;
    inst = 4'h5;

    #20;
    $display("SHR: %b -> %b", op_a, op_out);


    // =========================
    // SHIFT LEFT
    // =========================
    op_a = 8'b00001111;
    op_b = 8'd0;
    inst = 4'h6;

    #20;
    $display("SHL: %b -> %b", op_a, op_out);


    // =========================
    // BITWISE AND
    // =========================
    op_a = 8'b11001100;
    op_b = 8'b00110011;
    inst = 4'h9;

    #20;
    $display("AND: %b & %b = %b", op_a, op_b, op_out);


    // =========================
    // BITWISE OR
    // =========================
    op_a = 8'b11001100;
    op_b = 8'b00110011;
    inst = 4'hA;

    #20;
    $display("OR : %b | %b = %b", op_a, op_b, op_out);


    // =========================
    // XOR
    // =========================
    op_a = 8'b11001100;
    op_b = 8'b00110011;
    inst = 4'hB;

    #20;
    $display("XOR: %b ^ %b = %b", op_a, op_b, op_out);


    $finish;

end

endmodule