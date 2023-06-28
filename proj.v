module proj (input x, input clk, output reg y, output reg lck);
wire qa;
wire qan;
wire qb;
wire qbn;
wire qc;
wire qcn;
always @(clk) begin
	lck <= clk;
end
	d_flip_flop d0 (.d((qb & qan) | (x & qan) | (qc & qan)), .clk(clk), .q(qa), .qn(qan));
	d_flip_flop d1 (.d((qa & qbn & qcn) | (qan & qb)), .clk(clk), .q(qb), .qn(qbn));
	d_flip_flop d2 (.d((qc & qan) | (qa & qb)), .clk(clk), .q(qc), .qn(qcn));
always @(posedge clk) begin
y = ((qc & qa) | (qb & qa));
end
endmodule