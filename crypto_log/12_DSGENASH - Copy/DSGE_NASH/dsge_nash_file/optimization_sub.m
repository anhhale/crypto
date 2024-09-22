function [obj]=optimization_sub(x_opt,x_opt_name,var_list_,opt)
global oo_ options_ M_
% set parameter for use in Dynare
% keyboard

if opt.usedynare
for ii=1:size(x_opt_name,1)
    set_param_value(x_opt_name{ii,1},x_opt(ii));
    eval([x_opt_name{ii,1},'=',num2str(x_opt(ii)),';']);
end

%in case exclusion conditions are met, no computation is run
if isfield(opt,'exclusion_condition')
    for ll=1:max(size(opt.exclusion_condition))
    if eval(opt.exclusion_condition{ll,:})
        obj=999999999999999999999999999999999999999999999;
        return
    end
    end
end



if any(x_opt'<cell2mat(x_opt_name(:,2))) || any(x_opt'>cell2mat(x_opt_name(:,3))) %make sure parameters are inside their bounds
%     obj=10e6+sum([x_opt].^2); %penalty function
obj=999999999999999999999999999999999999999999999;
    return
end
% keyboard
% objvar=evalin('base','objvar');
% var_list_ = {char(objvar)};
if isfield(opt,'simlist')
var_list_ = opt.simlist;
end

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
    if opt.userdefined==0

    obj=-oo_.mean;
    elseif opt.userdefined==1
    %if solves correctly and user choose a custom function
    user_defined_function;
    
    for kk=1:opt.nplayers
    eval(['obj=',opt.objname{kk,:},';']);
    end
    end
end
else
    %this if dynare is not used. In this case everything including
    %substituting the parameter value for each draw needs to be done in the
    %user_defined_function file
    try
        user_defined_function;
    
    for kk=1:opt.nplayers
    eval(['obj=-',opt.objname{kk,:},';']);
    end
    catch
    obj=999999999999999999999999999999999999999999999;
    end
end
end