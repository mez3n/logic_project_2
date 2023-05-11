module inverse_sbox_128 (input [0:127] in,output reg [0:127] out);
wire [0:31]out1;
wire [0:31]out2;
wire [0:31]out3;
wire [0:31]out4;
inverse_sbox_32 s1(out1,in[0:31]);
inverse_sbox_32 s2(out2,in[32:63]);
inverse_sbox_32 s3(out3,in[64:95]);
inverse_sbox_32 s4(out4,in[96:127]);
always@(*) begin
out[0:31]=out1;
out[32:63]=out2;
out[64:95]=out3;
out[96:127]=out4;
end
endmodule
