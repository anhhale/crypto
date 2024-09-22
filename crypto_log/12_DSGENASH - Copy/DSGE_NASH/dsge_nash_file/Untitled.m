function [OUT] = nash_payoff(opt,xx,jj,M,oo,options)
%first parse in the correct values for parameters
for pp=1:opt.nplayers
    %get parameter names
    tmp = opt.instname{pp,:};
    eval(['P=opt.P',num2str(pp),';']);
    for ll = 1:max(size(tmp))
    %for each parameter, update the value in the M file
    i = strmatch(cell2mat(tmp(:,ll)),M.param_names,'exact');
    M.params(i) = P(ll,xx(pp));
    end
end
clearvars P
%now parameters are updated proceed with the solution
var_list_ = opt.objname;
try
    [info, oo_, options_] = stoch_simul(M, options, oo, var_list_); %get decision rules and moments
    if info(1)~=0
     OUT=NaN(6,1);
    else
     OUT=oo_.mean;
    end
catch
    OUT=NaN(6,1);
end
end