//////////////////////////////////////////////////////////////////////////////////
// Company: MIET
// Engineer: Andrei Solodovnikov

// Module Name:    tb_fulladder
// Project Name:   RISCV_practicum
// Target Devices: Nexys A7-100T
// Description: tb for 1-bit fulladder
//////////////////////////////////////////////////////////////////////////////////

module tb_fulladder();

    logic tb_a_i;
    logic tb_b_i;
    logic tb_carry_i;
    logic tb_carry_o;
    logic tb_sum_o;
    logic [2:0] test_case;

    fulladder DUT (
        .a_i(tb_a_i),
        .b_i(tb_b_i),
        .sum_o(tb_sum_o),
        .carry_i(tb_carry_i),
        .carry_o(tb_carry_o)
    );

    assign {tb_a_i, tb_b_i, tb_carry_i} = test_case;

    initial begin
      $display("\nTest has been started\n");
      #5ns;
      test_case = 3'd0;
      repeat(8) begin
        #5ns;
        test_case++;
      end
      $display("\nTest has been finished\n");
      $finish();
    end

endmodule
