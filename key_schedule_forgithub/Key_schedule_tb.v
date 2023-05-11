module Key_schedule_tb;
reg [0:127] k_128;
wire[0:1407] out_128;
reg [0:191] k_192;
wire[0:1663] out_192;
reg [0:255] k_256;
wire[0:1919] out_256;
reg[0:127] state_in ;
wire[0:127] state_in_key_added ;
wire[0:127] state_out;
//reg[0:127] DE_state_in ;
//wire[0:127] DE_state_in_key_added ;
//wire[0:127] DE_state_out;
generate
key_schedule #(128) expand_128(k_128,out_128);
key_schedule #(192) expand_192(k_192,out_192);
key_schedule #(256) expand_256(k_256,out_256);
assign state_in_key_added =state_in ^ out_128[0:127];
//assign DE_state_in_key_added =DE_state_in ^ out_128[0:127];
sbox_128 sbox1(state_in_key_added,state_out);
//sbox_128 inverse_sbox1(DE_state_in_key_added,DE_state_out);
endgenerate
initial begin

k_128=128'h 2B_7E_15_16_28_AE_D2_A6_AB_F7_15_88_09_CF_4F_3C;
k_192=192'h 8E_73_B0_F7_DA_0E_64_52_C8_10_F3_2B_80_90_79_E5_62_F8_EA_D2_52_2C_6B_7B;
k_256=256'h 60_3D_EB_10_15_CA_71_BE_2B_73_AE_F0_85_7D_77_81_1F_35_2C_07_3B_61_08_D7_2D_98_10_A3_09_14_DF_F4; 
state_in=128'h 32_43_F6_A8_88_5A_30_8D_31_31_98_A2_E0_37_07_34;		
// DE_state_in=128'h 39_25_84_1D_02_DC_09_FB_DC_11_85_97_19_6A_0B_32;		

				



end
endmodule


















