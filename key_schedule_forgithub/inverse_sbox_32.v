module inverse_sbox_32 (output reg [0:31] out,input [0:31] in);
wire [0:7]out1;
wire [0:7]out2;
wire [0:7]out3;
wire [0:7]out4;
inverse_sbox s1(out1,in[0:7]);
inverse_sbox s2(out2,in[8:15]);
inverse_sbox s3(out3,in[16:23]);
inverse_sbox s4(out4,in[24:31]);
always @(*) begin
 out[0:7]=out1;
 out[8:15]=out2;
 out[16:23]=out3;
 out[24:31]=out4;
end

endmodule
