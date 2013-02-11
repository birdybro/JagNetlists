`include "defs.v"

module memwidth
(
	input w_0,
	input w_1,
	input w_2,
	input w_3,
	input ba_0,
	input ba_1,
	input ba_2,
	input mw_0,
	input mw_1,
	input ack,
	input nextc,
	input clk,
	input vcc,
	input gnd,
	input bigend,
	output maskw_0,
	output maskw_1,
	output maskw_2,
	output maskw_3,
	output maska_0,
	output maska_1,
	output maska_2,
	output at_0,
	output at_1,
	output at_2,
	output lastcycle,
	output lastc,
	output bm_0,
	output bm_1,
	output bm_2,
	output bm_3,
	output bm_4,
	output bm_5,
	output bm_6,
	output bm_7
);
wire [0:3] rw;
wire [0:3] w;
wire [0:3] maskw;
wire [0:3] rw1;
wire [0:2] maska;
wire [0:2] ba1;
wire rw_0;
wire rw_1;
wire rw_2;
wire rw_3;
wire rw1_0;
wire rw1_1;
wire rw1_2;
wire rw1_3;
wire ba1_0;
wire ba1_1;
wire ba1_2;
wire pw_0;
wire pw_1;
wire pw_2;
wire pw_3;
wire nba_0;
wire nba_1;
wire nba_2;
wire ba1l_0;
wire ba1l_1;
wire ba1l_2;
wire maskai_0;
wire maskai_1;
wire maskai_2;
wire mwl_0;
wire mwl_1;
wire cw1_0;
wire cw1_1;
wire cw1_2;
wire cw1_3;
wire d_0;
wire d_1;
wire d_2;
wire d_3;
wire mw8;
wire mw16;
wire mw32;
wire mw64;
wire cw2_0;
wire direct;
wire cw2_1;
wire cw2_2;
wire cw2_3;
wire maskwl_0;
wire maskwl_1;
wire maskwl_2;
wire maskwl_3;
wire rwc_0;
wire rwc_1;
wire rwc_2;
wire rwc_3;
wire zerol;
wire nbc_0;
wire nbc_1;
wire nbc_2;
wire dra;
wire drb;
wire w32;
wire drc;
wire w16;
wire drd;
wire sa_0;
wire sa_1;
wire sa_2;
wire sa_3;
wire sa_4;
wire sa_5;
wire sa_6;
wire sa_7;
wire rwl_1;
wire rwl_2;
wire rwl_3;
wire rwgt1;
wire rwgt2a;
wire rwgt2;
wire rwgt3;
wire rwgt4a;
wire rwgt4b;
wire rwgt4;
wire rwgt5;
wire rwgt6a;
wire rwgt6;
wire rwlte1;
wire rwlte2;
wire rwlte3;
wire rwlte4;
wire bmwa_1;
wire bmwb_1;
wire bmw_1;
wire bmwa_3;
wire bmwb_3;
wire bmw_3;
wire bmwa_5;
wire bmwb_5;
wire bmw_5;
wire bmwa_7;
wire bmwb_7;
wire bmw_7;
wire bmla_2;
wire bmlb_2;
wire bmlc_2;
wire bml_2;
wire bmla_3;
wire bmlb_3;
wire bmlc_3;
wire bmld_3;
wire bml_3;
wire bmla_6;
wire bmlb_6;
wire bmlc_6;
wire bml_6;
wire bmla_7;
wire bmlb_7;
wire bmlc_7;
wire bmld_7;
wire bml_7;
wire bmpa_4;
wire bmpb_4;
wire bmpc_4;
wire bmpd_4;
wire bmpe_4;
wire bmp_4;
wire bmpa_5;
wire bmpb_5;
wire bmpc_5;
wire bmpd_5;
wire bmpe_5;
wire bmpf_5;
wire bmp_5;
wire bmpa_6;
wire bmpb_6;
wire bmpc_6;
wire bmpd_6;
wire bmpe_6;
wire bmpf_6;
wire bmpg_6;
wire bmp_6;
wire bmpa_7;
wire bmpb_7;
wire bmpc_7;
wire bmpd_7;
wire bmpe_7;
wire bmpf_7;
wire bmpg_7;
wire bmph_7;
wire bmp_7;
wire bmd_0;
wire bmd_1;
wire bmd_2;
wire bmd_3;
wire bmd_4;
wire bmd_5;
wire bmd_6;
wire bmd_7;
wire bmd1_0;
wire bmd1_1;
wire bmd1_2;
wire bmd1_3;
wire bmd1_4;
wire bmd1_5;
wire bmd1_6;
wire bmd1_7;
wire last16a;
wire last16b;
wire last16;
wire last32a;
wire last32b;
wire last32c;
wire last32d;
wire last32;
wire negba_0;
wire nbac_0;
wire negba_1;
wire nbac_1;
wire negba_2;
wire negba_3;
wire d216;

// Output buffers
wire maskw_0_obuf;
wire maskw_1_obuf;
wire maskw_2_obuf;
wire maskw_3_obuf;
wire maska_0_obuf;
wire maska_1_obuf;
wire maska_2_obuf;
wire at_0_obuf;
wire at_1_obuf;
wire at_2_obuf;
wire lastcycle_obuf;
wire lastc_obuf;
wire bm_0_obuf;
wire bm_1_obuf;
wire bm_2_obuf;
wire bm_3_obuf;
wire bm_4_obuf;
wire bm_5_obuf;
wire bm_6_obuf;
wire bm_7_obuf;


// Output buffers
assign maskw_0 = maskw_0_obuf;
assign maskw_1 = maskw_1_obuf;
assign maskw_2 = maskw_2_obuf;
assign maskw_3 = maskw_3_obuf;
assign maska_0 = maska_0_obuf;
assign maska_1 = maska_1_obuf;
assign maska_2 = maska_2_obuf;
assign at_0 = at_0_obuf;
assign at_1 = at_1_obuf;
assign at_2 = at_2_obuf;
assign lastcycle = lastcycle_obuf;
assign lastc = lastc_obuf;
assign bm_0 = bm_0_obuf;
assign bm_1 = bm_1_obuf;
assign bm_2 = bm_2_obuf;
assign bm_3 = bm_3_obuf;
assign bm_4 = bm_4_obuf;
assign bm_5 = bm_5_obuf;
assign bm_6 = bm_6_obuf;
assign bm_7 = bm_7_obuf;


// MEMWIDTH.NET (38) - rw : join
assign rw[0] = rw_0;
assign rw[1] = rw_1;
assign rw[2] = rw_2;
assign rw[3] = rw_3;

// MEMWIDTH.NET (39) - rwu : dummy

// MEMWIDTH.NET (40) - rw1 : join
assign rw1[0] = rw1_0;
assign rw1[1] = rw1_1;
assign rw1[2] = rw1_2;
assign rw1[3] = rw1_3;

// MEMWIDTH.NET (41) - rw1u : dummy

// MEMWIDTH.NET (42) - w : join
assign w[0] = w_0;
assign w[1] = w_1;
assign w[2] = w_2;
assign w[3] = w_3;

// MEMWIDTH.NET (43) - wu : dummy

// MEMWIDTH.NET (44) - mw : join
assign maskw[0] = maskw_0_obuf;
assign maskw[1] = maskw_1_obuf;
assign maskw[2] = maskw_2_obuf;
assign maskw[3] = maskw_3_obuf;

// MEMWIDTH.NET (45) - mwu : dummy

// MEMWIDTH.NET (46) - ma : join
assign maska[0] = maska_0_obuf;
assign maska[1] = maska_1_obuf;
assign maska[2] = maska_2_obuf;

// MEMWIDTH.NET (47) - mau : dummy

// MEMWIDTH.NET (48) - ba : join
assign ba1[0] = ba1_0;
assign ba1[1] = ba1_1;
assign ba1[2] = ba1_2;

// MEMWIDTH.NET (49) - bau : dummy

// MEMWIDTH.NET (69) - rw1[0-3] : mx2h
mx2 rw1_from_0_to_3_inst_0
(
	.z(rw1_0), // OUT
	.a0(rw_0), // IN
	.a1(w_0), // IN
	.s(ack)  // IN
);
mx2 rw1_from_0_to_3_inst_1
(
	.z(rw1_1), // OUT
	.a0(rw_1), // IN
	.a1(w_1), // IN
	.s(ack)  // IN
);
mx2 rw1_from_0_to_3_inst_2
(
	.z(rw1_2), // OUT
	.a0(rw_2), // IN
	.a1(w_2), // IN
	.s(ack)  // IN
);
mx2 rw1_from_0_to_3_inst_3
(
	.z(rw1_3), // OUT
	.a0(rw_3), // IN
	.a1(w_3), // IN
	.s(ack)  // IN
);

// MEMWIDTH.NET (73) - pw[0-3] : slatch
slatch pw_from_0_to_3_inst_0
(
	.q(pw_0), // IO
	.d(rw1_0), // IN
	.clk(clk), // IN
	.en(nextc)  // IN
);
slatch pw_from_0_to_3_inst_1
(
	.q(pw_1), // IO
	.d(rw1_1), // IN
	.clk(clk), // IN
	.en(nextc)  // IN
);
slatch pw_from_0_to_3_inst_2
(
	.q(pw_2), // IO
	.d(rw1_2), // IN
	.clk(clk), // IN
	.en(nextc)  // IN
);
slatch pw_from_0_to_3_inst_3
(
	.q(pw_3), // IO
	.d(rw1_3), // IN
	.clk(clk), // IN
	.en(nextc)  // IN
);

// MEMWIDTH.NET (77) - ba1[0-2] : mx2h
mx2 ba1_from_0_to_2_inst_0
(
	.z(ba1_0), // OUT
	.a0(nba_0), // IN
	.a1(ba_0), // IN
	.s(ack)  // IN
);
mx2 ba1_from_0_to_2_inst_1
(
	.z(ba1_1), // OUT
	.a0(nba_1), // IN
	.a1(ba_1), // IN
	.s(ack)  // IN
);
mx2 ba1_from_0_to_2_inst_2
(
	.z(ba1_2), // OUT
	.a0(nba_2), // IN
	.a1(ba_2), // IN
	.s(ack)  // IN
);

// MEMWIDTH.NET (78) - ba1l[0-2] : iv
assign ba1l_0 = ~ba1_0;
assign ba1l_1 = ~ba1_1;
assign ba1l_2 = ~ba1_2;

// MEMWIDTH.NET (82) - maskai[0-2] : fd1q
fd1q maskai_from_0_to_2_inst_0
(
	.q(maskai_0), // OUT
	.d(at_0_obuf), // IN
	.cp(clk)  // IN
);
fd1q maskai_from_0_to_2_inst_1
(
	.q(maskai_1), // OUT
	.d(at_1_obuf), // IN
	.cp(clk)  // IN
);
fd1q maskai_from_0_to_2_inst_2
(
	.q(maskai_2), // OUT
	.d(at_2_obuf), // IN
	.cp(clk)  // IN
);

// MEMWIDTH.NET (83) - at[0-2] : mx2
mx2 at_from_0_to_2_inst_0
(
	.z(at_0_obuf), // OUT
	.a0(maskai_0), // IN
	.a1(ba1_0), // IN
	.s(nextc)  // IN
);
mx2 at_from_0_to_2_inst_1
(
	.z(at_1_obuf), // OUT
	.a0(maskai_1), // IN
	.a1(ba1_1), // IN
	.s(nextc)  // IN
);
mx2 at_from_0_to_2_inst_2
(
	.z(at_2_obuf), // OUT
	.a0(maskai_2), // IN
	.a1(ba1_2), // IN
	.s(nextc)  // IN
);

// MEMWIDTH.NET (84) - maska[0] : nivu
assign maska_0_obuf = maskai_0;

// MEMWIDTH.NET (85) - maska[1] : nivu2
assign maska_1_obuf = maskai_1;

// MEMWIDTH.NET (86) - maska[2] : nivu
assign maska_2_obuf = maskai_2;

// MEMWIDTH.NET (115) - mwl[0-1] : iv
assign mwl_0 = ~mw_0;
assign mwl_1 = ~mw_1;

// MEMWIDTH.NET (135) - cw1[0-3] : mx2p
mx2 cw1_from_0_to_3_inst_0
(
	.z(cw1_0), // OUT
	.a0(d_0), // IN
	.a1(rw1_0), // IN
	.s(lastc_obuf)  // IN
);
mx2 cw1_from_0_to_3_inst_1
(
	.z(cw1_1), // OUT
	.a0(d_1), // IN
	.a1(rw1_1), // IN
	.s(lastc_obuf)  // IN
);
mx2 cw1_from_0_to_3_inst_2
(
	.z(cw1_2), // OUT
	.a0(d_2), // IN
	.a1(rw1_2), // IN
	.s(lastc_obuf)  // IN
);
mx2 cw1_from_0_to_3_inst_3
(
	.z(cw1_3), // OUT
	.a0(d_3), // IN
	.a1(rw1_3), // IN
	.s(lastc_obuf)  // IN
);

// MEMWIDTH.NET (139) - mw8 : an2p
assign mw8 = mwl_1 & mwl_0;

// MEMWIDTH.NET (140) - mw16 : an2p
assign mw16 = mwl_1 & mw_0;

// MEMWIDTH.NET (141) - mw32 : an2p
assign mw32 = mw_1 & mwl_0;

// MEMWIDTH.NET (142) - mw64 : an2p
assign mw64 = mw_1 & mw_0;

// MEMWIDTH.NET (144) - cw2[0] : mx2p
mx2 cw2_index_0_inst
(
	.z(cw2_0), // OUT
	.a0(cw1_0), // IN
	.a1(mw8), // IN
	.s(direct)  // IN
);

// MEMWIDTH.NET (145) - cw2[1] : mx2p
mx2 cw2_index_1_inst
(
	.z(cw2_1), // OUT
	.a0(cw1_1), // IN
	.a1(mw16), // IN
	.s(direct)  // IN
);

// MEMWIDTH.NET (146) - cw2[2] : mx2p
mx2 cw2_index_2_inst
(
	.z(cw2_2), // OUT
	.a0(cw1_2), // IN
	.a1(mw32), // IN
	.s(direct)  // IN
);

// MEMWIDTH.NET (147) - cw2[3] : mx2p
mx2 cw2_index_3_inst
(
	.z(cw2_3), // OUT
	.a0(cw1_3), // IN
	.a1(mw64), // IN
	.s(direct)  // IN
);

// MEMWIDTH.NET (149) - maskw[0-3] : slatch
slatch maskw_from_0_to_3_inst_0
(
	.q(maskw_0_obuf), // IO
	.d(cw2_0), // IN
	.clk(clk), // IN
	.en(nextc)  // IN
);
slatch maskw_from_0_to_3_inst_1
(
	.q(maskw_1_obuf), // IO
	.d(cw2_1), // IN
	.clk(clk), // IN
	.en(nextc)  // IN
);
slatch maskw_from_0_to_3_inst_2
(
	.q(maskw_2_obuf), // IO
	.d(cw2_2), // IN
	.clk(clk), // IN
	.en(nextc)  // IN
);
slatch maskw_from_0_to_3_inst_3
(
	.q(maskw_3_obuf), // IO
	.d(cw2_3), // IN
	.clk(clk), // IN
	.en(nextc)  // IN
);

// MEMWIDTH.NET (154) - maskwl[0-3] : iv
assign maskwl_0 = ~maskw_0_obuf;
assign maskwl_1 = ~maskw_1_obuf;
assign maskwl_2 = ~maskw_2_obuf;
assign maskwl_3 = ~maskw_3_obuf;

// MEMWIDTH.NET (156) - rw[0] : fa1
fa1 rw_index_0_inst
(
	.s(rw_0), // OUT
	.co(rwc_0), // OUT
	.ci(pw_0), // IN
	.a(maskwl_0), // IN
	.b(vcc)  // IN
);

// MEMWIDTH.NET (157) - rw[1-3] : fa1
fa1 rw_from_1_to_3_inst_0
(
	.s(rw_1), // OUT
	.co(rwc_1), // OUT
	.ci(pw_1), // IN
	.a(maskwl_1), // IN
	.b(rwc_0)  // IN
);
fa1 rw_from_1_to_3_inst_1
(
	.s(rw_2), // OUT
	.co(rwc_2), // OUT
	.ci(pw_2), // IN
	.a(maskwl_2), // IN
	.b(rwc_1)  // IN
);
fa1 rw_from_1_to_3_inst_2
(
	.s(rw_3), // OUT
	.co(rwc_3), // OUT
	.ci(pw_3), // IN
	.a(maskwl_3), // IN
	.b(rwc_2)  // IN
);

// MEMWIDTH.NET (161) - zerol : or4
assign zerol = rw_0 | rw_1 | rw_2 | rw_3;

// MEMWIDTH.NET (162) - lastcycle : nd2
assign lastcycle_obuf = ~(zerol & rwc_3);

// MEMWIDTH.NET (166) - nba[0] : fa1
fa1 nba_index_0_inst
(
	.s(nba_0), // OUT
	.co(nbc_0), // OUT
	.ci(maska_0_obuf), // IN
	.a(maskw_0_obuf), // IN
	.b(gnd)  // IN
);

// MEMWIDTH.NET (167) - nba[1-2] : fa1
fa1 nba_from_1_to_2_inst_0
(
	.s(nba_1), // OUT
	.co(nbc_1), // OUT
	.ci(maska_1_obuf), // IN
	.a(maskw_1_obuf), // IN
	.b(nbc_0)  // IN
);
fa1 nba_from_1_to_2_inst_1
(
	.s(nba_2), // OUT
	.co(nbc_2), // OUT
	.ci(maska_2_obuf), // IN
	.a(maskw_2_obuf), // IN
	.b(nbc_1)  // IN
);

// MEMWIDTH.NET (168) - nbc[2] : dummy

// MEMWIDTH.NET (172) - dra : nd3
assign dra = ~(mw_1 & mw_0 & rw1_3);

// MEMWIDTH.NET (173) - drb : nd6
assign drb = ~(mw_1 & mwl_0 & ba1l_0 & ba1l_1 & w32 & vcc);

// MEMWIDTH.NET (174) - drc : nd4
assign drc = ~(mwl_1 & mw_0 & ba1l_0 & w16);

// MEMWIDTH.NET (175) - drd : nd2
assign drd = ~(mwl_1 & mwl_0);

// MEMWIDTH.NET (176) - direct : nd4p
assign direct = ~(dra & drb & drc & drd);

// MEMWIDTH.NET (180) - w32 : or2
assign w32 = rw1_2 | rw1_3;

// MEMWIDTH.NET (181) - w16 : or3
assign w16 = rw1_1 | rw1_2 | rw1_3;

// MEMWIDTH.NET (190) - sa : dec38h
dec38h sa_inst
(
	.z_0(sa_0), // IO
	.z_1(sa_1), // IO
	.z_2(sa_2), // IO
	.z_3(sa_3), // IO
	.z_4(sa_4), // IO
	.z_5(sa_5), // IO
	.z_6(sa_6), // IO
	.z_7(sa_7), // IO
	.a(ba1_0), // IN
	.b(ba1_1), // IN
	.c(ba1_2)  // IN
);

// MEMWIDTH.NET (192) - rwl[1-3] : ivh
assign rwl_1 = ~rw1_1;
assign rwl_2 = ~rw1_2;
assign rwl_3 = ~rw1_3;

// MEMWIDTH.NET (193) - rwgt1 : nd3p
assign rwgt1 = ~(rwl_1 & rwl_2 & rwl_3);

// MEMWIDTH.NET (194) - rwgt2a : nd2
assign rwgt2a = ~(rw1_0 & rw1_1);

// MEMWIDTH.NET (195) - rwgt2 : nd3p
assign rwgt2 = ~(rwgt2a & rwl_2 & rwl_3);

// MEMWIDTH.NET (196) - rwgt3 : nd2p
assign rwgt3 = ~(rwl_2 & rwl_3);

// MEMWIDTH.NET (197) - rwgt4a : nd2
assign rwgt4a = ~(rw1_0 & rw1_2);

// MEMWIDTH.NET (198) - rwgt4b : nd2
assign rwgt4b = ~(rw1_1 & rw1_2);

// MEMWIDTH.NET (199) - rwgt4 : nd3p
assign rwgt4 = ~(rwgt4a & rwgt4b & rwl_3);

// MEMWIDTH.NET (200) - rwgt5 : nd2p
assign rwgt5 = ~(rwgt4b & rwl_3);

// MEMWIDTH.NET (201) - rwgt6a : nd3
assign rwgt6a = ~(rw1_0 & rw1_1 & rw1_2);

// MEMWIDTH.NET (202) - rwgt6 : nd2p
assign rwgt6 = ~(rwgt6a & rwl_3);

// MEMWIDTH.NET (203) - rwlte1 : ivh
assign rwlte1 = ~rwgt1;

// MEMWIDTH.NET (204) - rwlte2 : ivh
assign rwlte2 = ~rwgt2;

// MEMWIDTH.NET (205) - rwlte3 : ivh
assign rwlte3 = ~rwgt3;

// MEMWIDTH.NET (206) - rwlte4 : ivh
assign rwlte4 = ~rwgt4;

// MEMWIDTH.NET (211) - bmwa[1] : iv
assign bmwa_1 = ~sa_1;

// MEMWIDTH.NET (212) - bmwb[1] : nd2
assign bmwb_1 = ~(sa_0 & rwgt1);

// MEMWIDTH.NET (213) - bmw[1] : nd2
assign bmw_1 = ~(bmwa_1 & bmwb_1);

// MEMWIDTH.NET (214) - bmwa[3] : iv
assign bmwa_3 = ~sa_3;

// MEMWIDTH.NET (215) - bmwb[3] : nd2
assign bmwb_3 = ~(sa_2 & rwgt1);

// MEMWIDTH.NET (216) - bmw[3] : nd2
assign bmw_3 = ~(bmwa_3 & bmwb_3);

// MEMWIDTH.NET (217) - bmwa[5] : iv
assign bmwa_5 = ~sa_5;

// MEMWIDTH.NET (218) - bmwb[5] : nd2
assign bmwb_5 = ~(sa_4 & rwgt1);

// MEMWIDTH.NET (219) - bmw[5] : nd2
assign bmw_5 = ~(bmwa_5 & bmwb_5);

// MEMWIDTH.NET (220) - bmwa[7] : iv
assign bmwa_7 = ~sa_7;

// MEMWIDTH.NET (221) - bmwb[7] : nd2
assign bmwb_7 = ~(sa_6 & rwgt1);

// MEMWIDTH.NET (222) - bmw[7] : nd2
assign bmw_7 = ~(bmwa_7 & bmwb_7);

// MEMWIDTH.NET (226) - bmla[2] : iv
assign bmla_2 = ~sa_2;

// MEMWIDTH.NET (227) - bmlb[2] : nd2
assign bmlb_2 = ~(sa_0 & rwgt2);

// MEMWIDTH.NET (228) - bmlc[2] : nd2
assign bmlc_2 = ~(sa_1 & rwgt1);

// MEMWIDTH.NET (229) - bml[2] : nd3
assign bml_2 = ~(bmla_2 & bmlb_2 & bmlc_2);

// MEMWIDTH.NET (230) - bmla[3] : iv
assign bmla_3 = ~sa_3;

// MEMWIDTH.NET (231) - bmlb[3] : nd2
assign bmlb_3 = ~(sa_0 & rwgt3);

// MEMWIDTH.NET (232) - bmlc[3] : nd2
assign bmlc_3 = ~(sa_1 & rwgt2);

// MEMWIDTH.NET (233) - bmld[3] : nd2
assign bmld_3 = ~(sa_2 & rwgt1);

// MEMWIDTH.NET (234) - bml[3] : nd4
assign bml_3 = ~(bmla_3 & bmlb_3 & bmlc_3 & bmld_3);

// MEMWIDTH.NET (235) - bmla[6] : iv
assign bmla_6 = ~sa_6;

// MEMWIDTH.NET (236) - bmlb[6] : nd2
assign bmlb_6 = ~(sa_4 & rwgt2);

// MEMWIDTH.NET (237) - bmlc[6] : nd2
assign bmlc_6 = ~(sa_5 & rwgt1);

// MEMWIDTH.NET (238) - bml[6] : nd3
assign bml_6 = ~(bmla_6 & bmlb_6 & bmlc_6);

// MEMWIDTH.NET (239) - bmla[7] : iv
assign bmla_7 = ~sa_7;

// MEMWIDTH.NET (240) - bmlb[7] : nd2
assign bmlb_7 = ~(sa_4 & rwgt3);

// MEMWIDTH.NET (241) - bmlc[7] : nd2
assign bmlc_7 = ~(sa_5 & rwgt2);

// MEMWIDTH.NET (242) - bmld[7] : nd2
assign bmld_7 = ~(sa_6 & rwgt1);

// MEMWIDTH.NET (243) - bml[7] : nd4
assign bml_7 = ~(bmla_7 & bmlb_7 & bmlc_7 & bmld_7);

// MEMWIDTH.NET (247) - bmpa[4] : iv
assign bmpa_4 = ~sa_4;

// MEMWIDTH.NET (248) - bmpb[4] : nd2
assign bmpb_4 = ~(sa_0 & rwgt4);

// MEMWIDTH.NET (249) - bmpc[4] : nd2
assign bmpc_4 = ~(sa_1 & rwgt3);

// MEMWIDTH.NET (250) - bmpd[4] : nd2
assign bmpd_4 = ~(sa_2 & rwgt2);

// MEMWIDTH.NET (251) - bmpe[4] : nd2
assign bmpe_4 = ~(sa_3 & rwgt1);

// MEMWIDTH.NET (252) - bmp[4] : nd6
assign bmp_4 = ~(bmpa_4 & bmpb_4 & bmpc_4 & bmpd_4 & bmpe_4 & vcc);

// MEMWIDTH.NET (253) - bmpa[5] : iv
assign bmpa_5 = ~sa_5;

// MEMWIDTH.NET (254) - bmpb[5] : nd2
assign bmpb_5 = ~(sa_0 & rwgt5);

// MEMWIDTH.NET (255) - bmpc[5] : nd2
assign bmpc_5 = ~(sa_1 & rwgt4);

// MEMWIDTH.NET (256) - bmpd[5] : nd2
assign bmpd_5 = ~(sa_2 & rwgt3);

// MEMWIDTH.NET (257) - bmpe[5] : nd2
assign bmpe_5 = ~(sa_3 & rwgt2);

// MEMWIDTH.NET (258) - bmpf[5] : nd2
assign bmpf_5 = ~(sa_4 & rwgt1);

// MEMWIDTH.NET (259) - bmp[5] : nd6
assign bmp_5 = ~(bmpa_5 & bmpb_5 & bmpc_5 & bmpd_5 & bmpe_5 & bmpf_5);

// MEMWIDTH.NET (260) - bmpa[6] : iv
assign bmpa_6 = ~sa_6;

// MEMWIDTH.NET (261) - bmpb[6] : nd2
assign bmpb_6 = ~(sa_0 & rwgt6);

// MEMWIDTH.NET (262) - bmpc[6] : nd2
assign bmpc_6 = ~(sa_1 & rwgt5);

// MEMWIDTH.NET (263) - bmpd[6] : nd2
assign bmpd_6 = ~(sa_2 & rwgt4);

// MEMWIDTH.NET (264) - bmpe[6] : nd2
assign bmpe_6 = ~(sa_3 & rwgt3);

// MEMWIDTH.NET (265) - bmpf[6] : nd2
assign bmpf_6 = ~(sa_4 & rwgt2);

// MEMWIDTH.NET (266) - bmpg[6] : nd2
assign bmpg_6 = ~(sa_5 & rwgt1);

// MEMWIDTH.NET (267) - bmp[6] : nd8
assign bmp_6 = ~(bmpa_6 & bmpb_6 & bmpc_6 & bmpd_6 & bmpe_6 & bmpf_6 & bmpg_6 & vcc);

// MEMWIDTH.NET (269) - bmpa[7] : iv
assign bmpa_7 = ~sa_7;

// MEMWIDTH.NET (270) - bmpb[7] : nd2
assign bmpb_7 = ~(sa_0 & rw1_3);

// MEMWIDTH.NET (271) - bmpc[7] : nd2
assign bmpc_7 = ~(sa_1 & rwgt6);

// MEMWIDTH.NET (272) - bmpd[7] : nd2
assign bmpd_7 = ~(sa_2 & rwgt5);

// MEMWIDTH.NET (273) - bmpe[7] : nd2
assign bmpe_7 = ~(sa_3 & rwgt4);

// MEMWIDTH.NET (274) - bmpf[7] : nd2
assign bmpf_7 = ~(sa_4 & rwgt3);

// MEMWIDTH.NET (275) - bmpg[7] : nd2
assign bmpg_7 = ~(sa_5 & rwgt2);

// MEMWIDTH.NET (276) - bmph[7] : nd2
assign bmph_7 = ~(sa_6 & rwgt1);

// MEMWIDTH.NET (277) - bmp[7] : nd8
assign bmp_7 = ~(bmpa_7 & bmpb_7 & bmpc_7 & bmpd_7 & bmpe_7 & bmpf_7 & bmpg_7 & bmph_7);

// MEMWIDTH.NET (282) - bmd[0] : niv
assign bmd_0 = sa_0;

// MEMWIDTH.NET (283) - bmd[1] : mx4p
mx4 bmd_index_1_inst
(
	.z(bmd_1), // OUT
	.a0(sa_1), // IN
	.a1(bmw_1), // IN
	.a2(bmw_1), // IN
	.a3(bmw_1), // IN
	.s0(mw_0), // IN
	.s1(mw_1)  // IN
);

// MEMWIDTH.NET (284) - bmd[2] : mx4p
mx4 bmd_index_2_inst
(
	.z(bmd_2), // OUT
	.a0(sa_2), // IN
	.a1(sa_2), // IN
	.a2(bml_2), // IN
	.a3(bml_2), // IN
	.s0(mw_0), // IN
	.s1(mw_1)  // IN
);

// MEMWIDTH.NET (285) - bmd[3] : mx4p
mx4 bmd_index_3_inst
(
	.z(bmd_3), // OUT
	.a0(sa_3), // IN
	.a1(bmw_3), // IN
	.a2(bml_3), // IN
	.a3(bml_3), // IN
	.s0(mw_0), // IN
	.s1(mw_1)  // IN
);

// MEMWIDTH.NET (286) - bmd[4] : mx4p
mx4 bmd_index_4_inst
(
	.z(bmd_4), // OUT
	.a0(sa_4), // IN
	.a1(sa_4), // IN
	.a2(sa_4), // IN
	.a3(bmp_4), // IN
	.s0(mw_0), // IN
	.s1(mw_1)  // IN
);

// MEMWIDTH.NET (287) - bmd[5] : mx4p
mx4 bmd_index_5_inst
(
	.z(bmd_5), // OUT
	.a0(sa_5), // IN
	.a1(bmw_5), // IN
	.a2(bmw_5), // IN
	.a3(bmp_5), // IN
	.s0(mw_0), // IN
	.s1(mw_1)  // IN
);

// MEMWIDTH.NET (288) - bmd[6] : mx4p
mx4 bmd_index_6_inst
(
	.z(bmd_6), // OUT
	.a0(sa_6), // IN
	.a1(sa_6), // IN
	.a2(bml_6), // IN
	.a3(bmp_6), // IN
	.s0(mw_0), // IN
	.s1(mw_1)  // IN
);

// MEMWIDTH.NET (289) - bmd[7] : mx4p
mx4 bmd_index_7_inst
(
	.z(bmd_7), // OUT
	.a0(sa_7), // IN
	.a1(bmw_7), // IN
	.a2(bml_7), // IN
	.a3(bmp_7), // IN
	.s0(mw_0), // IN
	.s1(mw_1)  // IN
);

// MEMWIDTH.NET (293) - bmd1[0] : mx2
mx2 bmd1_index_0_inst
(
	.z(bmd1_0), // OUT
	.a0(bmd_0), // IN
	.a1(bmd_7), // IN
	.s(bigend)  // IN
);

// MEMWIDTH.NET (294) - bmd1[1] : mx2
mx2 bmd1_index_1_inst
(
	.z(bmd1_1), // OUT
	.a0(bmd_1), // IN
	.a1(bmd_6), // IN
	.s(bigend)  // IN
);

// MEMWIDTH.NET (295) - bmd1[2] : mx2
mx2 bmd1_index_2_inst
(
	.z(bmd1_2), // OUT
	.a0(bmd_2), // IN
	.a1(bmd_5), // IN
	.s(bigend)  // IN
);

// MEMWIDTH.NET (296) - bmd1[3] : mx2
mx2 bmd1_index_3_inst
(
	.z(bmd1_3), // OUT
	.a0(bmd_3), // IN
	.a1(bmd_4), // IN
	.s(bigend)  // IN
);

// MEMWIDTH.NET (297) - bmd1[4] : mx2
mx2 bmd1_index_4_inst
(
	.z(bmd1_4), // OUT
	.a0(bmd_4), // IN
	.a1(bmd_3), // IN
	.s(bigend)  // IN
);

// MEMWIDTH.NET (298) - bmd1[5] : mx2
mx2 bmd1_index_5_inst
(
	.z(bmd1_5), // OUT
	.a0(bmd_5), // IN
	.a1(bmd_2), // IN
	.s(bigend)  // IN
);

// MEMWIDTH.NET (299) - bmd1[6] : mx2
mx2 bmd1_index_6_inst
(
	.z(bmd1_6), // OUT
	.a0(bmd_6), // IN
	.a1(bmd_1), // IN
	.s(bigend)  // IN
);

// MEMWIDTH.NET (300) - bmd1[7] : mx2
mx2 bmd1_index_7_inst
(
	.z(bmd1_7), // OUT
	.a0(bmd_7), // IN
	.a1(bmd_0), // IN
	.s(bigend)  // IN
);

// MEMWIDTH.NET (302) - bm[0-7] : slatch
slatch bm_from_0_to_7_inst_0
(
	.q(bm_0_obuf), // IO
	.d(bmd1_0), // IN
	.clk(clk), // IN
	.en(nextc)  // IN
);
slatch bm_from_0_to_7_inst_1
(
	.q(bm_1_obuf), // IO
	.d(bmd1_1), // IN
	.clk(clk), // IN
	.en(nextc)  // IN
);
slatch bm_from_0_to_7_inst_2
(
	.q(bm_2_obuf), // IO
	.d(bmd1_2), // IN
	.clk(clk), // IN
	.en(nextc)  // IN
);
slatch bm_from_0_to_7_inst_3
(
	.q(bm_3_obuf), // IO
	.d(bmd1_3), // IN
	.clk(clk), // IN
	.en(nextc)  // IN
);
slatch bm_from_0_to_7_inst_4
(
	.q(bm_4_obuf), // IO
	.d(bmd1_4), // IN
	.clk(clk), // IN
	.en(nextc)  // IN
);
slatch bm_from_0_to_7_inst_5
(
	.q(bm_5_obuf), // IO
	.d(bmd1_5), // IN
	.clk(clk), // IN
	.en(nextc)  // IN
);
slatch bm_from_0_to_7_inst_6
(
	.q(bm_6_obuf), // IO
	.d(bmd1_6), // IN
	.clk(clk), // IN
	.en(nextc)  // IN
);
slatch bm_from_0_to_7_inst_7
(
	.q(bm_7_obuf), // IO
	.d(bmd1_7), // IN
	.clk(clk), // IN
	.en(nextc)  // IN
);

// MEMWIDTH.NET (310) - last16a : nd2
assign last16a = ~(ba1_0 & rwlte1);

// MEMWIDTH.NET (311) - last16b : nd2
assign last16b = ~(ba1l_0 & rwlte2);

// MEMWIDTH.NET (312) - last16 : nd2
assign last16 = ~(last16a & last16b);

// MEMWIDTH.NET (316) - last32a : nd3
assign last32a = ~(ba1_1 & ba1_0 & rwlte1);

// MEMWIDTH.NET (317) - last32b : nd3
assign last32b = ~(ba1_1 & ba1l_0 & rwlte2);

// MEMWIDTH.NET (318) - last32c : nd3
assign last32c = ~(ba1l_1 & ba1_0 & rwlte3);

// MEMWIDTH.NET (319) - last32d : nd3
assign last32d = ~(ba1l_1 & ba1l_0 & rwlte4);

// MEMWIDTH.NET (320) - last32 : nd4
assign last32 = ~(last32a & last32b & last32c & last32d);

// MEMWIDTH.NET (324) - lastc : mx4p
mx4 lastc_inst
(
	.z(lastc_obuf), // OUT
	.a0(rwlte1), // IN
	.a1(last16), // IN
	.a2(last32), // IN
	.a3(vcc), // IN
	.s0(mw_0), // IN
	.s1(mw_1)  // IN
);

// MEMWIDTH.NET (333) - negba[0] : ha1p
ha1 negba_index_0_inst
(
	.s(negba_0), // OUT
	.co(nbac_0), // OUT
	.a(ba1l_0), // IN
	.b(vcc)  // IN
);

// MEMWIDTH.NET (334) - negba[1] : ha1p
ha1 negba_index_1_inst
(
	.s(negba_1), // OUT
	.co(nbac_1), // OUT
	.a(ba1l_1), // IN
	.b(nbac_0)  // IN
);

// MEMWIDTH.NET (335) - negba[2] : ha1p
ha1 negba_index_2_inst
(
	.s(negba_2), // OUT
	.co(negba_3), // OUT
	.a(ba1l_2), // IN
	.b(nbac_1)  // IN
);

// MEMWIDTH.NET (339) - d[0] : mx4p
mx4 d_index_0_inst
(
	.z(d_0), // OUT
	.a0(vcc), // IN
	.a1(negba_0), // IN
	.a2(negba_0), // IN
	.a3(negba_0), // IN
	.s0(mw_0), // IN
	.s1(mw_1)  // IN
);

// MEMWIDTH.NET (340) - d[1] : mx4p
mx4 d_index_1_inst
(
	.z(d_1), // OUT
	.a0(gnd), // IN
	.a1(ba1l_0), // IN
	.a2(negba_1), // IN
	.a3(negba_1), // IN
	.s0(mw_0), // IN
	.s1(mw_1)  // IN
);

// MEMWIDTH.NET (341) - d[2] : mx4p
mx4 d_index_2_inst
(
	.z(d_2), // OUT
	.a0(gnd), // IN
	.a1(gnd), // IN
	.a2(d216), // IN
	.a3(negba_2), // IN
	.s0(mw_0), // IN
	.s1(mw_1)  // IN
);

// MEMWIDTH.NET (342) - d[3] : mx4p
mx4 d_index_3_inst
(
	.z(d_3), // OUT
	.a0(gnd), // IN
	.a1(gnd), // IN
	.a2(gnd), // IN
	.a3(negba_3), // IN
	.s0(mw_0), // IN
	.s1(mw_1)  // IN
);

// MEMWIDTH.NET (344) - d216 : an2
assign d216 = ba1l_0 & ba1l_1;
endmodule
