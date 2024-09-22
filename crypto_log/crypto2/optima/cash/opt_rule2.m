function welfare = opt_rule2(opt_pi1,opt_ex1)

global M_ oo_ options_ 


try

var_list_=[];
var_list_ = 'totutility1';
set_param_value('omega_pi',opt_pi1);
set_param_value('opt_ex',opt_ex1);
set_param_value('rho_i',0.8);


set_dynare_seed('default');
options_.order = 2;
info = stoch_simul(var_list_);

welfare =  - oo_.mean(1);


if length(find(abs((oo_.dr.eigval))>1+1e-6))~=8 | length(find(abs((oo_.dr.eigval))<1-1e-6))~=14| abs(opt_pi1)>1000 | abs(opt_ex1)>1000 | isnan(welfare)
welfare = 1e10;
end;

catch 
    welfare = 1e10;
end
