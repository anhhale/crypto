function [obj]=optimization_sub(x_opt,x_opt_name,var_list_)
global oo_ options_ M_
% set parameter for use in Dynare
for ii=1:size(x_opt_name,1)
    set_param_value(x_opt_name{ii,1},x_opt(ii));
end

if any(x_opt<cell2mat(x_opt_name(:,2))) || any(x_opt>cell2mat(x_opt_name(:,3))) %make sure parameters are inside their bounds
%     obj=10e6+sum([x_opt].^2); %penalty function
obj=999999999999999999999999999999999999999999999;
    return
end
% keyboard
% objvar=evalin('base','objvar');
% var_list_ = {char(objvar)};
try
oo_ = rmfield(oo_,'mean');
catch
end
%solution and simulation of the model
[info, oo_, options_] = stoch_simul(M_, options_, oo_, var_list_); %get decision rules and moments
if info(1)~=0
    obj=10e6+sum([x_opt].^2);
    obj=999999999999999999999999999999999999999999999;
    return
else 
    
    obj=-oo_.mean;
end
end