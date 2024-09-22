function welfare = opt_rule2(opt_pi1,opt_ex1,opt_rho1)

global M_ oo_ options_ 


try

var_list_=[];
var_list_ = 'totutility1';
set_param_value('omega_pi',opt_pi1);
set_param_value('opt_ex',opt_ex1);
set_param_value('rho_i',opt_rho1);


set_dynare_seed('default');
options_.order = 2;
info = stoch_simul(var_list_);
welfare =  - oo_.mean(1);


if length(find(abs((oo_.dr.eigval))>1+1e-6))~=8 | length(find(abs((oo_.dr.eigval))<1-1e-6))~=15| abs(opt_pi1)> 7| opt_rho1 < 0| abs(opt_rho1) > 1| opt_ex1 < 0.| abs(opt_ex1)>0.5| isnan(welfare)
welfare = 1e10;
end;

catch 
    welfare = 1e10;
end
