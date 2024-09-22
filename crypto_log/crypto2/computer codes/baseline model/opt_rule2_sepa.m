function welfare = opt_rule2_sepa(VKY1,RHOVK1)

global M_ oo_ options_ 


try

var_list_=[];
var_list_ = 'totutility';

set_param_value('VKY',VKY1);
set_param_value('RHOVK',RHOVK1);

set_dynare_seed('default');
options_.order = 2;
info = stoch_simul(var_list_);

welfare =  - oo_.mean(1);

if length(find(abs((oo_.dr.eigval))>1+1e-6))~=7 | length(find(abs((oo_.dr.eigval))<1-1e-4))~=13 | isnan(welfare)
welfare = 1e10;
end;

catch 
    welfare = 1e10;
end
