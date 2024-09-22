% This file is used to generate numbers presented in table 5
% volatilies and expected means under conditional welfare


%% Run mod file under constant CAR and optimal CAR

clear
load calishock
if sepa == 0
dynare policy_sb
else 
dynare policy_sb_sepa;
end    


set_param_value('VKY',0);
set_param_value('RHOVK',0);
options_.order =2;
var_list_=[];
info = stoch_simul(var_list_);
oo_bench = oo_;
save resosr oo_bench;

if sepa == 0
 if shock == 1
    load respolicy_SIGA_sb_cond;
 end
 if shock == 2
    load respolicy_SIGS_sb_cond;
 end
 else
 if shock == 1
    load respolicy_SIGA_sepa_cond;
 end
 if shock == 2
    load respolicy_SIGS_sepa_cond;
 end
end

set_param_value('VKY',res_vk(1));
set_param_value('RHOVK',0);
options_.order =2;
var_list_=[];
info = stoch_simul(var_list_);
oo_osr = oo_;
VKY0 = res_vk(1);
load resosr
save resosr oo_bench oo_osr VKY0;


set_param_value('VKY',res_vk1(1));
set_param_value('RHOVK',0);
options_.order =2;
var_list_=[];
info = stoch_simul(var_list_);
oo_osr1 = oo_;
VKY1 = res_vk1(1);
load resosr
save resosr oo_bench oo_osr VKY0 oo_osr1 VKY1;

ss_lambda=oo_bench.steady_state(1);
ss_c=oo_bench.steady_state(2);
ss_h=oo_bench.steady_state(3);
ss_inv=oo_bench.steady_state(4);
ss_y=oo_bench.steady_state(5);
ss_k=oo_bench.steady_state(6);
ss_ne=oo_bench.steady_state(7);
ss_atilde=oo_bench.steady_state(8);
ss_b=oo_bench.steady_state(9);
ss_nc=oo_bench.steady_state(10);
ss_Hc=oo_bench.steady_state(11);
ss_bc=oo_bench.steady_state(12);
ss_Fc=oo_bench.steady_state(13);
ss_vc=oo_bench.steady_state(14);
ss_H1c=oo_bench.steady_state(15);
ss_Gc=oo_bench.steady_state(16);
ss_omegacbar=oo_bench.steady_state(17);
ss_rc=oo_bench.steady_state(18);
ss_G1c=oo_bench.steady_state(19);
ss_ns=oo_bench.steady_state(20);
ss_Hs=oo_bench.steady_state(21);
ss_bs=oo_bench.steady_state(22);
ss_Fs=oo_bench.steady_state(23);
ss_vs=oo_bench.steady_state(24);
ss_H1s=oo_bench.steady_state(25);
ss_Gs=oo_bench.steady_state(26);
ss_omegasbar=oo_bench.steady_state(27);
ss_rs=oo_bench.steady_state(28);
ss_G1s=oo_bench.steady_state(29);
ss_dc=oo_bench.steady_state(30);
ss_kb=oo_bench.steady_state(31);
ss_rcl=oo_bench.steady_state(32);
ss_w=oo_bench.steady_state(33);
ss_rp=oo_bench.steady_state(34);
ss_q=oo_bench.steady_state(35);
ss_rk=oo_bench.steady_state(36);
ss_a=oo_bench.steady_state(37);
ss_vk=oo_bench.steady_state(38);
ss_gdp=oo_bench.steady_state(39);
ss_sigma=oo_bench.steady_state(40);
ss_utility=oo_bench.steady_state(41);
ss_totutility=oo_bench.steady_state(42);
ss_fshock=oo_bench.steady_state(43);
ss_ai=oo_bench.steady_state(44);
ss_bsshare=oo_bench.steady_state(45);
ss_levtot=oo_bench.steady_state(46);
ss_levs=oo_bench.steady_state(47);
ss_levc=oo_bench.steady_state(48);
ss_car=oo_bench.steady_state(49);
ss_lnb=oo_bench.steady_state(50);
ss_zs=oo_bench.steady_state(51);
ss_zc=oo_bench.steady_state(52);
ss_lngdp=oo_bench.steady_state(53);
ss_Ftot=oo_bench.steady_state(54);
ss_bty=oo_bench.steady_state(55);
ss_dcar=oo_bench.steady_state(56);

var_bench_lambda=oo_bench.var(1,1) ;
var_bench_c=oo_bench.var(2,2) ;
var_bench_h=oo_bench.var(3,3) ;
var_bench_inv=oo_bench.var(4,4) ;
var_bench_y=oo_bench.var(5,5) ;
var_bench_k=oo_bench.var(6,6) ;
var_bench_ne=oo_bench.var(7,7) ;
var_bench_atilde=oo_bench.var(8,8) ;
var_bench_b=oo_bench.var(9,9) ;
var_bench_nc=oo_bench.var(10,10) ;
var_bench_Hc=oo_bench.var(11,11) ;
var_bench_bc=oo_bench.var(12,12) ;
var_bench_Fc=oo_bench.var(13,13) ;
var_bench_vc=oo_bench.var(14,14) ;
var_bench_H1c=oo_bench.var(15,15) ;
var_bench_Gc=oo_bench.var(16,16) ;
var_bench_omegacbar=oo_bench.var(17,17) ;
var_bench_rc=oo_bench.var(18,18) ;
var_bench_G1c=oo_bench.var(19,19) ;
var_bench_ns=oo_bench.var(20,20) ;
var_bench_Hs=oo_bench.var(21,21) ;
var_bench_bs=oo_bench.var(22,22) ;
var_bench_Fs=oo_bench.var(23,23) ;
var_bench_vs=oo_bench.var(24,24) ;
var_bench_H1s=oo_bench.var(25,25) ;
var_bench_Gs=oo_bench.var(26,26) ;
var_bench_omegasbar=oo_bench.var(27,27) ;
var_bench_rs=oo_bench.var(28,28) ;
var_bench_G1s=oo_bench.var(29,29) ;
var_bench_dc=oo_bench.var(30,30) ;
var_bench_kb=oo_bench.var(31,31) ;
var_bench_rcl=oo_bench.var(32,32) ;
var_bench_w=oo_bench.var(33,33) ;
var_bench_rp=oo_bench.var(34,34) ;
var_bench_q=oo_bench.var(35,35) ;
var_bench_rk=oo_bench.var(36,36) ;
var_bench_a=oo_bench.var(37,37) ;
var_bench_vk=oo_bench.var(38,38) ;
var_bench_gdp=oo_bench.var(39,39) ;
var_bench_sigma=oo_bench.var(40,40) ;
var_bench_utility=oo_bench.var(41,41) ;
var_bench_totutility=oo_bench.var(42,42) ;
var_bench_fshock=oo_bench.var(43,43) ;
var_bench_ai=oo_bench.var(44,44) ;
var_bench_bsshare=oo_bench.var(45,45) ;
var_bench_levtot=oo_bench.var(46,46) ;
var_bench_levs=oo_bench.var(47,47) ;
var_bench_levc=oo_bench.var(48,48) ;
var_bench_car=oo_bench.var(49,49) ;
var_bench_lnb=oo_bench.var(50,50) ;
var_bench_zs=oo_bench.var(51,51) ;
var_bench_zc=oo_bench.var(52,52) ;
var_bench_lngdp=oo_bench.var(53,53) ;
var_bench_Ftot=oo_bench.var(54,54) ;
var_bench_bty=oo_bench.var(55,55) ;
var_bench_dcar=oo_bench.var(56,56) ;

var_osr_lambda=oo_osr.var(1,1) ;
var_osr_c=oo_osr.var(2,2) ;
var_osr_h=oo_osr.var(3,3) ;
var_osr_inv=oo_osr.var(4,4) ;
var_osr_y=oo_osr.var(5,5) ;
var_osr_k=oo_osr.var(6,6) ;
var_osr_ne=oo_osr.var(7,7) ;
var_osr_atilde=oo_osr.var(8,8) ;
var_osr_b=oo_osr.var(9,9) ;
var_osr_nc=oo_osr.var(10,10) ;
var_osr_Hc=oo_osr.var(11,11) ;
var_osr_bc=oo_osr.var(12,12) ;
var_osr_Fc=oo_osr.var(13,13) ;
var_osr_vc=oo_osr.var(14,14) ;
var_osr_H1c=oo_osr.var(15,15) ;
var_osr_Gc=oo_osr.var(16,16) ;
var_osr_omegacbar=oo_osr.var(17,17) ;
var_osr_rc=oo_osr.var(18,18) ;
var_osr_G1c=oo_osr.var(19,19) ;
var_osr_ns=oo_osr.var(20,20) ;
var_osr_Hs=oo_osr.var(21,21) ;
var_osr_bs=oo_osr.var(22,22) ;
var_osr_Fs=oo_osr.var(23,23) ;
var_osr_vs=oo_osr.var(24,24) ;
var_osr_H1s=oo_osr.var(25,25) ;
var_osr_Gs=oo_osr.var(26,26) ;
var_osr_omegasbar=oo_osr.var(27,27) ;
var_osr_rs=oo_osr.var(28,28) ;
var_osr_G1s=oo_osr.var(29,29) ;
var_osr_dc=oo_osr.var(30,30) ;
var_osr_kb=oo_osr.var(31,31) ;
var_osr_rcl=oo_osr.var(32,32) ;
var_osr_w=oo_osr.var(33,33) ;
var_osr_rp=oo_osr.var(34,34) ;
var_osr_q=oo_osr.var(35,35) ;
var_osr_rk=oo_osr.var(36,36) ;
var_osr_a=oo_osr.var(37,37) ;
var_osr_vk=oo_osr.var(38,38) ;
var_osr_gdp=oo_osr.var(39,39) ;
var_osr_sigma=oo_osr.var(40,40) ;
var_osr_utility=oo_osr.var(41,41) ;
var_osr_totutility=oo_osr.var(42,42) ;
var_osr_fshock=oo_osr.var(43,43) ;
var_osr_ai=oo_osr.var(44,44) ;
var_osr_bsshare=oo_osr.var(45,45) ;
var_osr_levtot=oo_osr.var(46,46) ;
var_osr_levs=oo_osr.var(47,47) ;
var_osr_levc=oo_osr.var(48,48) ;
var_osr_car=oo_osr.var(49,49) ;
var_osr_lnb=oo_osr.var(50,50) ;
var_osr_zs=oo_osr.var(51,51) ;
var_osr_zc=oo_osr.var(52,52) ;
var_osr_lngdp=oo_osr.var(53,53) ;
var_osr_Ftot=oo_osr.var(54,54) ;
var_osr_bty=oo_osr.var(55,55) ;
var_osr_dcar=oo_osr.var(56,56) ;

var_osr1_lambda=oo_osr1.var(1,1) ;
var_osr1_c=oo_osr1.var(2,2) ;
var_osr1_h=oo_osr1.var(3,3) ;
var_osr1_inv=oo_osr1.var(4,4) ;
var_osr1_y=oo_osr1.var(5,5) ;
var_osr1_k=oo_osr1.var(6,6) ;
var_osr1_ne=oo_osr1.var(7,7) ;
var_osr1_atilde=oo_osr1.var(8,8) ;
var_osr1_b=oo_osr1.var(9,9) ;
var_osr1_nc=oo_osr1.var(10,10) ;
var_osr1_Hc=oo_osr1.var(11,11) ;
var_osr1_bc=oo_osr1.var(12,12) ;
var_osr1_Fc=oo_osr1.var(13,13) ;
var_osr1_vc=oo_osr1.var(14,14) ;
var_osr1_H1c=oo_osr1.var(15,15) ;
var_osr1_Gc=oo_osr1.var(16,16) ;
var_osr1_omegacbar=oo_osr1.var(17,17) ;
var_osr1_rc=oo_osr1.var(18,18) ;
var_osr1_G1c=oo_osr1.var(19,19) ;
var_osr1_ns=oo_osr1.var(20,20) ;
var_osr1_Hs=oo_osr1.var(21,21) ;
var_osr1_bs=oo_osr1.var(22,22) ;
var_osr1_Fs=oo_osr1.var(23,23) ;
var_osr1_vs=oo_osr1.var(24,24) ;
var_osr1_H1s=oo_osr1.var(25,25) ;
var_osr1_Gs=oo_osr1.var(26,26) ;
var_osr1_omegasbar=oo_osr1.var(27,27) ;
var_osr1_rs=oo_osr1.var(28,28) ;
var_osr1_G1s=oo_osr1.var(29,29) ;
var_osr1_dc=oo_osr1.var(30,30) ;
var_osr1_kb=oo_osr1.var(31,31) ;
var_osr1_rcl=oo_osr1.var(32,32) ;
var_osr1_w=oo_osr1.var(33,33) ;
var_osr1_rp=oo_osr1.var(34,34) ;
var_osr1_q=oo_osr1.var(35,35) ;
var_osr1_rk=oo_osr1.var(36,36) ;
var_osr1_a=oo_osr1.var(37,37) ;
var_osr1_vk=oo_osr1.var(38,38) ;
var_osr1_gdp=oo_osr1.var(39,39) ;
var_osr1_sigma=oo_osr1.var(40,40) ;
var_osr1_utility=oo_osr1.var(41,41) ;
var_osr1_totutility=oo_osr1.var(42,42) ;
var_osr1_fshock=oo_osr1.var(43,43) ;
var_osr1_ai=oo_osr1.var(44,44) ;
var_osr1_bsshare=oo_osr1.var(45,45) ;
var_osr1_levtot=oo_osr1.var(46,46) ;
var_osr1_levs=oo_osr1.var(47,47) ;
var_osr1_levc=oo_osr1.var(48,48) ;
var_osr1_car=oo_osr1.var(49,49) ;
var_osr1_lnb=oo_osr1.var(50,50) ;
var_osr1_zs=oo_osr1.var(51,51) ;
var_osr1_zc=oo_osr1.var(52,52) ;
var_osr1_lngdp=oo_osr1.var(53,53) ;
var_osr1_Ftot=oo_osr1.var(54,54) ;
var_osr1_bty=oo_osr1.var(55,55) ;
var_osr1_dcar=oo_osr1.var(56,56) ;

mean_bench_lambda=oo_bench.mean(1) ;
mean_bench_c=oo_bench.mean(2) ;
mean_bench_h=oo_bench.mean(3) ;
mean_bench_inv=oo_bench.mean(4) ;
mean_bench_y=oo_bench.mean(5) ;
mean_bench_k=oo_bench.mean(6) ;
mean_bench_ne=oo_bench.mean(7) ;
mean_bench_atilde=oo_bench.mean(8) ;
mean_bench_b=oo_bench.mean(9) ;
mean_bench_nc=oo_bench.mean(10) ;
mean_bench_Hc=oo_bench.mean(11) ;
mean_bench_bc=oo_bench.mean(12) ;
mean_bench_Fc=oo_bench.mean(13) ;
mean_bench_vc=oo_bench.mean(14) ;
mean_bench_H1c=oo_bench.mean(15) ;
mean_bench_Gc=oo_bench.mean(16) ;
mean_bench_omegacbar=oo_bench.mean(17) ;
mean_bench_rc=oo_bench.mean(18) ;
mean_bench_G1c=oo_bench.mean(19) ;
mean_bench_ns=oo_bench.mean(20) ;
mean_bench_Hs=oo_bench.mean(21) ;
mean_bench_bs=oo_bench.mean(22) ;
mean_bench_Fs=oo_bench.mean(23) ;
mean_bench_vs=oo_bench.mean(24) ;
mean_bench_H1s=oo_bench.mean(25) ;
mean_bench_Gs=oo_bench.mean(26) ;
mean_bench_omegasbar=oo_bench.mean(27) ;
mean_bench_rs=oo_bench.mean(28) ;
mean_bench_G1s=oo_bench.mean(29) ;
mean_bench_dc=oo_bench.mean(30) ;
mean_bench_kb=oo_bench.mean(31) ;
mean_bench_rcl=oo_bench.mean(32) ;
mean_bench_w=oo_bench.mean(33) ;
mean_bench_rp=oo_bench.mean(34) ;
mean_bench_q=oo_bench.mean(35) ;
mean_bench_rk=oo_bench.mean(36) ;
mean_bench_a=oo_bench.mean(37) ;
mean_bench_vk=oo_bench.mean(38) ;
mean_bench_gdp=oo_bench.mean(39) ;
mean_bench_sigma=oo_bench.mean(40) ;
mean_bench_utility=oo_bench.mean(41) ;
mean_bench_totutility=oo_bench.mean(42) ;
mean_bench_fshock=oo_bench.mean(43) ;
mean_bench_ai=oo_bench.mean(44) ;
mean_bench_bsshare=oo_bench.mean(45) ;
mean_bench_levtot=oo_bench.mean(46) ;
mean_bench_levs=oo_bench.mean(47) ;
mean_bench_levc=oo_bench.mean(48) ;
mean_bench_car=oo_bench.mean(49) ;
mean_bench_lnb=oo_bench.mean(50) ;
mean_bench_zs=oo_bench.mean(51) ;
mean_bench_zc=oo_bench.mean(52) ;
mean_bench_lngdp=oo_bench.mean(53) ;
mean_bench_Ftot=oo_bench.mean(54) ;
mean_bench_bty=oo_bench.mean(55) ;
mean_bench_dcar=oo_bench.mean(56) ;


mean_osr_lambda=oo_osr.mean(1) ;
mean_osr_c=oo_osr.mean(2) ;
mean_osr_h=oo_osr.mean(3) ;
mean_osr_inv=oo_osr.mean(4) ;
mean_osr_y=oo_osr.mean(5) ;
mean_osr_k=oo_osr.mean(6) ;
mean_osr_ne=oo_osr.mean(7) ;
mean_osr_atilde=oo_osr.mean(8) ;
mean_osr_b=oo_osr.mean(9) ;
mean_osr_nc=oo_osr.mean(10) ;
mean_osr_Hc=oo_osr.mean(11) ;
mean_osr_bc=oo_osr.mean(12) ;
mean_osr_Fc=oo_osr.mean(13) ;
mean_osr_vc=oo_osr.mean(14) ;
mean_osr_H1c=oo_osr.mean(15) ;
mean_osr_Gc=oo_osr.mean(16) ;
mean_osr_omegacbar=oo_osr.mean(17) ;
mean_osr_rc=oo_osr.mean(18) ;
mean_osr_G1c=oo_osr.mean(19) ;
mean_osr_ns=oo_osr.mean(20) ;
mean_osr_Hs=oo_osr.mean(21) ;
mean_osr_bs=oo_osr.mean(22) ;
mean_osr_Fs=oo_osr.mean(23) ;
mean_osr_vs=oo_osr.mean(24) ;
mean_osr_H1s=oo_osr.mean(25) ;
mean_osr_Gs=oo_osr.mean(26) ;
mean_osr_omegasbar=oo_osr.mean(27) ;
mean_osr_rs=oo_osr.mean(28) ;
mean_osr_G1s=oo_osr.mean(29) ;
mean_osr_dc=oo_osr.mean(30) ;
mean_osr_kb=oo_osr.mean(31) ;
mean_osr_rcl=oo_osr.mean(32) ;
mean_osr_w=oo_osr.mean(33) ;
mean_osr_rp=oo_osr.mean(34) ;
mean_osr_q=oo_osr.mean(35) ;
mean_osr_rk=oo_osr.mean(36) ;
mean_osr_a=oo_osr.mean(37) ;
mean_osr_vk=oo_osr.mean(38) ;
mean_osr_gdp=oo_osr.mean(39) ;
mean_osr_sigma=oo_osr.mean(40) ;
mean_osr_utility=oo_osr.mean(41) ;
mean_osr_totutility=oo_osr.mean(42) ;
mean_osr_fshock=oo_osr.mean(43) ;
mean_osr_ai=oo_osr.mean(44) ;
mean_osr_bsshare=oo_osr.mean(45) ;
mean_osr_levtot=oo_osr.mean(46) ;
mean_osr_levs=oo_osr.mean(47) ;
mean_osr_levc=oo_osr.mean(48) ;
mean_osr_car=oo_osr.mean(49) ;
mean_osr_lnb=oo_osr.mean(50) ;
mean_osr_zs=oo_osr.mean(51) ;
mean_osr_zc=oo_osr.mean(52) ;
mean_osr_lngdp=oo_osr.mean(53) ;
mean_osr_Ftot=oo_osr.mean(54) ;
mean_osr_bty=oo_osr.mean(55) ;
mean_osr_dcar=oo_osr.mean(56) ;

mean_osr1_lambda=oo_osr1.mean(1) ;
mean_osr1_c=oo_osr1.mean(2) ;
mean_osr1_h=oo_osr1.mean(3) ;
mean_osr1_inv=oo_osr1.mean(4) ;
mean_osr1_y=oo_osr1.mean(5) ;
mean_osr1_k=oo_osr1.mean(6) ;
mean_osr1_ne=oo_osr1.mean(7) ;
mean_osr1_atilde=oo_osr1.mean(8) ;
mean_osr1_b=oo_osr1.mean(9) ;
mean_osr1_nc=oo_osr1.mean(10) ;
mean_osr1_Hc=oo_osr1.mean(11) ;
mean_osr1_bc=oo_osr1.mean(12) ;
mean_osr1_Fc=oo_osr1.mean(13) ;
mean_osr1_vc=oo_osr1.mean(14) ;
mean_osr1_H1c=oo_osr1.mean(15) ;
mean_osr1_Gc=oo_osr1.mean(16) ;
mean_osr1_omegacbar=oo_osr1.mean(17) ;
mean_osr1_rc=oo_osr1.mean(18) ;
mean_osr1_G1c=oo_osr1.mean(19) ;
mean_osr1_ns=oo_osr1.mean(20) ;
mean_osr1_Hs=oo_osr1.mean(21) ;
mean_osr1_bs=oo_osr1.mean(22) ;
mean_osr1_Fs=oo_osr1.mean(23) ;
mean_osr1_vs=oo_osr1.mean(24) ;
mean_osr1_H1s=oo_osr1.mean(25) ;
mean_osr1_Gs=oo_osr1.mean(26) ;
mean_osr1_omegasbar=oo_osr1.mean(27) ;
mean_osr1_rs=oo_osr1.mean(28) ;
mean_osr1_G1s=oo_osr1.mean(29) ;
mean_osr1_dc=oo_osr1.mean(30) ;
mean_osr1_kb=oo_osr1.mean(31) ;
mean_osr1_rcl=oo_osr1.mean(32) ;
mean_osr1_w=oo_osr1.mean(33) ;
mean_osr1_rp=oo_osr1.mean(34) ;
mean_osr1_q=oo_osr1.mean(35) ;
mean_osr1_rk=oo_osr1.mean(36) ;
mean_osr1_a=oo_osr1.mean(37) ;
mean_osr1_vk=oo_osr1.mean(38) ;
mean_osr1_gdp=oo_osr1.mean(39) ;
mean_osr1_sigma=oo_osr1.mean(40) ;
mean_osr1_utility=oo_osr1.mean(41) ;
mean_osr1_totutility=oo_osr1.mean(42) ;
mean_osr1_fshock=oo_osr1.mean(43) ;
mean_osr1_ai=oo_osr1.mean(44) ;
mean_osr1_bsshare=oo_osr1.mean(45) ;
mean_osr1_levtot=oo_osr1.mean(46) ;
mean_osr1_levs=oo_osr1.mean(47) ;
mean_osr1_levc=oo_osr1.mean(48) ;
mean_osr1_car=oo_osr1.mean(49) ;
mean_osr1_lnb=oo_osr1.mean(50) ;
mean_osr1_zs=oo_osr1.mean(51) ;
mean_osr1_zc=oo_osr1.mean(52) ;
mean_osr1_lngdp=oo_osr1.mean(53) ;
mean_osr1_Ftot=oo_osr1.mean(54) ;
mean_osr1_bty=oo_osr1.mean(55) ;
mean_osr1_dcar=oo_osr1.mean(56) ;

%% display statistics under alternative policies
% optimal policy coefficient
gamma_v = [ 0 -VKY0 -VKY1]
% volatilities
std_gdp=[sqrt(var_bench_gdp) sqrt(var_osr_gdp)  sqrt(var_osr1_gdp)]*100/ss_gdp
std_inv=[sqrt(var_bench_inv) sqrt(var_osr_inv)  sqrt(var_osr1_inv)]*100/ss_inv
std_bc=[sqrt(var_bench_bc) sqrt(var_osr_bc)  sqrt(var_osr1_bc)]*100/ss_bc
std_bs=[sqrt(var_bench_bs) sqrt(var_osr_bs)  sqrt(var_osr1_bs)]*100/ss_bs
std_b=[sqrt(var_bench_b) sqrt(var_osr_b)  sqrt(var_osr1_b)]*100/ss_b
std_levc=[sqrt(var_bench_levc) sqrt(var_osr_levc)  sqrt(var_osr1_levc)]*100/ss_levc
std_levs=[sqrt(var_bench_levs) sqrt(var_osr_levs)  sqrt(var_osr1_levs)]*100/ss_levs
std_levtot=[sqrt(var_bench_levtot) sqrt(var_osr_levtot)  sqrt(var_osr1_levtot)]*100/ss_levtot
std_c=[sqrt(var_bench_c) sqrt(var_osr_c)  sqrt(var_osr1_c)]*100/ss_c
std_h=[sqrt(var_bench_h) sqrt(var_osr_h)  sqrt(var_osr1_h)]*100/ss_h
std_dc=[sqrt(var_bench_dc) sqrt(var_osr_dc)  sqrt(var_osr1_dc)]*100/ss_dc
% expected mean
mean_gdp=[mean_bench_gdp mean_osr_gdp mean_osr1_gdp]*100/ss_gdp - 100
mean_k=[mean_bench_k mean_osr_k mean_osr1_k]*100/ss_k - 100
mean_c=[mean_bench_c mean_osr_c mean_osr1_c]*100/ss_c - 100
mean_h=[mean_bench_h mean_osr_h mean_osr1_h]*100/ss_h - 100
mean_dc=[mean_bench_dc mean_osr_dc mean_osr1_dc]*100/ss_dc - 100

