function [obj]=match_sub(x_opt,x_opt_name,var_list_,opt)
global oo_ options_ M_
% set parameter for use in Dynare
for ii=1:size(x_opt_name,1)
    set_param_value(x_opt_name{ii,1},x_opt(ii));
end

if any(x_opt'<cell2mat(x_opt_name(:,2))) || any(x_opt'>cell2mat(x_opt_name(:,3))) %make sure parameters are inside their bounds
obj=999999999999999999999999999999999999999999999;
    return
end

var_list_={};
%solution and simulation of the model
[info, oo_, options_] = stoch_simul(M_, options_, oo_, var_list_); %get decision rules and moments
if info(1)~=0
    obj=999999999999999999999999999999999999999999999;
    return
else 
    %irf matching
    if opt.irfmatch==1
    %load irf to match
    load(opt.matchname);
    for oo=1:size(opt.irf_list,1)
    eval(['tmp1=',cell2mat(opt.irf_list(oo,:)),';']);
    eval(['tmp2=oo_.irfs.',cell2mat(opt.irf_list(oo,:)),';']);
    %make sure vectors have the same dimensions
    [a b]=size(tmp1);
    if b>a
        tmp1=tmp1';
    end
       [a b]=size(tmp2);
    if b>a
        tmp2=tmp2';
    end
    
    nn=max(size(tmp1));
    loss(oo,:)=sum((tmp1-tmp2(1:nn,:)).^2);
    clearvars tmp1 tmp2
    end
    obj=sum(sum(loss));
    
    %moment matching
    elseif opt.momentmatch==1
    loss1=0;        %loss of standard deviations distance
    loss2=0;        %loss of mean distance
    %load moments to match
    load(opt.matchname)
    %match variances and standard deviations
    if isempty(opt.matchname_std)==0   
    %find position of target variables
    for oo=1:size(opt.matchname_std,1)
    pos(oo,:)=find(strcmp(cell2mat(opt.matchname_std(oo,:)),M_.endo_names)==1);
    end
    %select variance / covariance matrix of endogenous variables
    V=oo_.var;
    V=(V(pos,pos));
    %compute distance
    distance=tril(V)-tril(VCOV);
    W=tril(opt.momentweight);
%     distance=distance.*W;
    loss1=sum((vec(distance).^2).*vec(W));
    end
    %match averages
    if isempty(opt.matchname_mean)==0   
    clearvars pos
    %find position of target variables
    for oo=1:size(opt.matchname_mean,1)
    pos(oo,:)=find(strcmp(cell2mat(opt.matchname_mean(oo,:)),M_.endo_names)==1);
    end
    %select variance / covariance matrix of endogenous variables
    M=oo_.mean;
    M=M(pos,:);
    %compute distance
    distance=M-AVG;
    W=opt.momentweight_mean;
    loss2=sum((distance.^2).*W);
    end
    obj=sum(loss1+loss2);
    else
    error('Either IRF matching or moment matching should be selected');
    end
end
end
