% This file is used to generate numbers presented in table 4
% volatilies and welfare gain under alternative policies in the extended
% model


%% Run mod file under constant CAR and optimal CAR
clear
%load calishock

dynare cdbc_fix
  
set_param_value('omega_pi',1.49);
set_param_value('opt_ex',0.3);
set_param_value('rho_i',0.8);
options_.order =2;

var_list_=[];
info = stoch_simul(var_list_);
oo_bench = oo_;
save resosr oo_bench;

load respolicy_fix_for
 
set_param_value('omega_pi',res_vk(1));
set_param_value('opt_ex',res_vk(2));
set_param_value('rho_i',0.8);
options_.order =2;

var_list_=[];
info = stoch_simul(var_list_);
oo_osr = oo_;
omega_pi =  res_vk(1);
opt_ex = res_vk(2);
rho_i=res_vk(3);
load resosr
save resosr oo_bench oo_osr omega_pi opt_ex rho_i res_vk;

ss_Y=oo_bench.steady_state(1);
ss_C=oo_bench.steady_state(2);
ss_Pi=oo_bench.steady_state(3);
ss_Net=oo_bench.steady_state(4);
ss_CBDC=oo_bench.steady_state(5);
ss_Cryp=oo_bench.steady_state(6);
ss_Cash=oo_bench.steady_state(7);
ss_debt=oo_bench.steady_state(8);
ss_totutility1=oo_bench.steady_state(9);

var_bench_Y=oo_bench.var(1,1) ;
var_bench_C=oo_bench.var(2,2) ;
var_bench_Pi=oo_bench.var(3,3) ;
var_bench_Net=oo_bench.var(4,4) ;
var_bench_CBDC=oo_bench.var(5,5) ;
var_bench_Cryp=oo_bench.var(6,6) ;
var_bench_Cash=oo_bench.var(7,7) ;
var_bench_debt=oo_bench.var(8,8) ;
var_bench_totutility1=oo_bench.var(9,9) ;


var_osr_Y=oo_osr.var(1,1) ;
var_osr_C=oo_osr.var(2,2) ;
var_osr_Pi=oo_osr.var(3,3) ;
var_osr_Net=oo_osr.var(4,4) ;
var_osr_CBDC=oo_osr.var(5,5) ;
var_osr_Cryp=oo_osr.var(6,6) ;
var_osr_Cash=oo_osr.var(7,7) ;
var_osr_debt=oo_osr.var(8,8) ;
var_osr_totutility1=oo_osr.var(9,9);


mean_bench_Y=oo_bench.mean(1) ;
mean_bench_C=oo_bench.mean(2) ;
mean_bench_Pi=oo_bench.mean(3) ;
mean_bench_Net=oo_bench.mean(4) ;
mean_bench_CBDC=oo_bench.mean(5) ;
mean_bench_Cryp=oo_bench.mean(6) ;
mean_bench_Cash=oo_bench.mean(7) ;
mean_bench_debt=oo_bench.mean(8) ;
mean_bench_totutility1=oo_bench.mean(9) ;

mean_osr_Y=oo_osr.mean(1) ;
mean_osr_C=oo_osr.mean(2) ;
mean_osr_Pi=oo_osr.mean(3) ;
mean_osr_Net=oo_osr.mean(4) ;
mean_osr_CBDC=oo_osr.mean(5) ;
mean_osr_Cryp=oo_osr.mean(6) ;
mean_osr_Cash=oo_osr.mean(7) ;
mean_osr_debt=oo_osr.mean(8) ;
mean_osr_totutility1=oo_osr.mean(9) ;

%% display statistics under alternative policies
% optimal policy coefficient
%gamma_v = [0 -VKY0]
% volatilities
std_Y=[sqrt(var_bench_Y) sqrt(var_osr_Y)]*100/ss_Y
std_C=[sqrt(var_bench_C) sqrt(var_osr_C)]*100/ss_C
std_Pi=[sqrt(var_bench_Pi) sqrt(var_osr_Pi)]*100/ss_Pi
std_Net=[sqrt(var_bench_Net) sqrt(var_osr_Net)]*100/ss_Net
std_CBDC=[sqrt(var_bench_CBDC) sqrt(var_osr_CBDC)]*100/ss_CBDC
std_Cryp=[sqrt(var_bench_Cryp) sqrt(var_osr_Cryp)]*100/ss_Cryp
std_Cash=[sqrt(var_bench_Cash) sqrt(var_osr_Cash)]*100/ss_Cash
std_debt=[sqrt(var_bench_debt) sqrt(var_osr_debt)]*100/ss_debt
%std_dc=[sqrt(var_bench_dc) sqrt(var_osr_dc)]*100/ss_dc
% welfare gain
utility =  [mean_bench_totutility1 mean_osr_totutility1];
BETA = 0.9852;
gain=(exp((utility -ss_totutility1)*(1-BETA))-1)*100
gamma_v = [res_vk(1) res_vk(2)]

