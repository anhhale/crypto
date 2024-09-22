%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Function to compute the payoff for a single combination of values of
%policy parameters
% INPUTS:
%       -M,oo,options structures with the model matrices and data from
%       dynare
%       -opt structure with the information form nash_lz, most importantly
%       the values of parameters for each policy
%       -jj iteration
%       -xx draw of strategies for iteration jj
% OUTPUTS
%       -OUT matrix with the payoff (i.e. the values of the target
%       variables for the specific combination of parameters under
%       consideration
% NOTICE: if user wants to specified a user-defined objective function, the
% script user_defined_function needs to be edited. The script can
% accomodate any calculation; the only constraint is that at the end of the
% script the objective variables for each player are assigned.
%Authors: Massimo Ferrari       (massimo.ferrari1@ecb.europa.eu)
%         Maria Sole Pagliari   (maria-sole.pagliari@banque-france.fr)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [OUT,NoRun] = nash_payoff(opt,xx,jj,M,oo,options)
NoRun=0;
% keyboard
%just to stay safe...
% clearvars oo_ M_ options_
% clear global
warning off
if opt.usedynare
%this if dynare is used    
%first parse in the correct values for parameters
for pp=1:opt.nplayers
    %get parameter names
    tmp = opt.instname{pp,:};
%     eval(['P=opt.P',num2str(pp),';']);
    for ll = 1:max(size(tmp))
    %for each parameter, update the value in the M file
    i = strmatch(cell2mat(tmp(:,ll)),M.param_names,'exact');
    eval(['M.params(i)=opt.P',num2str(pp),'(ll,xx(pp));']);
    eval([cell2mat(tmp(:,ll)),'=opt.P',num2str(pp),'(ll,xx(pp));']);
%     M.params(i) = P(ll,xx(pp));
    end
end
%in case exclusion conditions are met, no computation is run
if isfield(opt,'exclusion_condition')
    for ll=1:max(size(opt.exclusion_condition))
    if eval(opt.exclusion_condition{ll,:})
        OUT=NaN(opt.nplayers,1);
        return
    end
    end
end
% clearvars P
%now parameters are updated proceed with the solution
if isfield(opt,'simlist')
var_list_ = opt.simlist;
else
var_list_ = opt.objname;    
end
try
    [info, oo_, options_] = stoch_simul(M, options, oo, var_list_); %get decision rules and moments
    if info(1)~=0
    %if model does not solve    
     OUT=NaN(opt.nplayers,1);
    else
    %if solves correctly and no use of user defined function   
    if opt.userdefined==0
    OUT=oo_.mean;
    NoRun=1;
    elseif opt.userdefined==1
    %if solves correctly and user choose a custom function
    user_defined_function;
    
    for kk=1:opt.nplayers
    eval(['OUT(kk,:)=',opt.objname{kk,:},';']);
    end
    NoRun=1;
    
    end
    
    end
catch
    %if anything else does not work
    OUT=NaN(opt.nplayers,1);
end
else
    %this if dynare is not used. In this case everything including
    %substituting the parameter value for each draw needs to be done in the
    %user_defined_function file
    try
        user_defined_function;
    
    for kk=1:opt.nplayers
    eval(['OUT(kk,:)=',opt.objname{kk,:},';']);
    end
    NoRun=1;
    catch
        OUT=NaN(opt.nplayers,1);
    end
end
end