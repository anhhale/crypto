function welfare = opt_rule2_sb_cond(VKY1,RHOVK1,OBJ)

global M_ oo_ options_ 


try

var_list_=[];
%var_list_ = 'totutility';

set_param_value('VKY',VKY1);
set_param_value('RHOVK',RHOVK1);

set_dynare_seed('default');
options_.order = 2;
info = stoch_simul(var_list_);
if OBJ ==1
W_pos=strmatch('totutility',M_.endo_names,'exact');
end
if OBJ ==2
W_pos=strmatch('totutility1',M_.endo_names,'exact');
end

SS = [M_.Sigma_e(:,1);M_.Sigma_e(:,2);M_.Sigma_e(:,3);M_.Sigma_e(:,4)];
welfare = - (oo_.dr.ys(W_pos)+0.5*oo_.dr.ghs2(oo_.dr.inv_order_var(W_pos))  + 0.5*oo_.dr.ghuu(oo_.dr.inv_order_var(W_pos),:)*SS); % conditional at the steady state


if length(find(abs((oo_.dr.eigval))>1+1e-6))~=8 | length(find(abs((oo_.dr.eigval))<1-1e-6))~=12 | isnan(welfare)
welfare = 1e10;
end;

catch 
    welfare = 1e10;
end
