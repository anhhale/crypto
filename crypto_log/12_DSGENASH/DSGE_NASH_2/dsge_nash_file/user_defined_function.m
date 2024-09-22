%EXAMPLE for using Dynare to solve the model and have a user-defined
%objective variable
%This example is for the Prisoners Dilemma game 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Assign the policy parameters if needed (no need in this case)
%parameters need to appear in the workspace at this stage
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%in case exclusion conditions are met, no computation is run
if isfield(opt,'exclusion_condition')
    for ll=1:max(size(opt.exclusion_condition))
    if eval(opt.exclusion_condition{ll,:})
        OUT=NaN(opt.nplayers,1);
        obj=999999999999999999999999999999999999999999999;
        return
    end
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Do calculations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for pp=1:opt.nplayers
    %get parameter names
    tmp = opt.instname{pp,:};
%     eval(['P=opt.P',num2str(pp),';']);
    for ll = 1:max(size(tmp))
        %evaluate strategy
        eval([tmp{ll},'=opt.P',num2str(pp),'(ll,xx(pp));']);
    end
end
%4 payoffs of prisoners dilemma
if S1==1 && S2==1
    %confess / confess
    PO1=-5;
    PO2=-5;
elseif S1==0 && S2==1
    %stay silent / confess
    PO1=-10;
    PO2=0;
elseif S1==1 && S2==0
    %confess / stay silent
    PO1=0;
    PO2=-10;
elseif S1==0 && S2==0
    %stay silent / stay silent
    PO1=-2;
    PO2=-2;
end
% %Target volatility of output and inflation, equal weight, for player 1
% pos1 = find(strcmp(opt.simlist,'NY')==1);
% pos2 = find(strcmp(opt.simlist,'NPI')==1);
% obj1 = 0.5*oo_.var(pos1,pos1)+0.5*oo_.var(pos2,pos2);
% %Target volatility of period profits, for player 2
% pos1 = find(strcmp(opt.simlist,'NPE')==1);
% obj2 = oo_.var(pos1,pos1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Assigne the objective variables
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Assign to the objective variable name
% for ooo=1:size(opt.objname,1)
% eval([opt.objname{ooo,:},'=obj',num2str(ooo),';']);
% end

%EXAMPLE when dynare is not used to solve the model
%objective variable
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Assign the policy parameters if needed (no need in this case)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% for pp=1:opt.nplayers
%     %get parameter names
%     tmp = opt.instname{pp,:};
%     for ll = 1:max(size(tmp))
%     %assign parameter values    
%     eval([tmp{:,ll},'=opt.P',num2str(pp),'(ll,xx(pp));']);    
%    end
% end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Do calculations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%INSERT HERE THE USER CODE TO DO CALCULATIONS
%WE ASSUME THAT OBJECTIVE VARIABLES ARE CALLED obj1, obj2, obj3 .....
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Assigne the objective variables
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Assign to the objective variable name
% for ooo=1:size(opt.objname,1)
% eval([opt.objname{ooo,:},'=obj',num2str(ooo),';']);
% end