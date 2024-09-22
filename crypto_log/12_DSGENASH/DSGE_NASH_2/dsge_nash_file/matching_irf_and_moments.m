display('================================================================');
display('Starting computation of optimal parameters');    
display('================================================================');
oo_=oo;
M_=M;
options_=options;
warning off
global M_ oo_ options_
%setting up inputs: parameter names, max and min values and starting
%values (calibration)
tmp=opt.instname{1,:};
for jj=1:max(size(tmp))
   pmax=max(opt.P1(jj,:));
   pmin=min(opt.P1(jj,:));
   pname=tmp{:,jj};
   i = strmatch(tmp{:,jj},M.param_names,'exact');
   x_opt_name(jj,:)={pname,pmin,pmax};
   x_start(:,jj)=M.params(i);
end    
objvar=opt.objname(1,:); 
if isfield(opt,'minoptions')
    options=opt.minoptions;
else
    options=optimset('Algorithm','interior-point','AlwaysHonorConstraints','bounds','TolFun', 1e-5, 'TolX', 1e-5,'MaxFunEvals',100000000,'MaxIter',100000000,'PlotFcns',@optimplotfval);
end

for jj=1:size(x_opt_name,1)
if any(x_start(jj)<cell2mat(x_opt_name(jj,2))) || any(x_start(jj)>cell2mat(x_opt_name(jj,3))) %make sure parameters are inside their bounds
error('Initial parameter values outside bounds');
    return
end  
end




try   
[x_out,fval,EXITFLAG,output] = fminsearch(@(x)match_sub(x,x_opt_name,objvar,opt), x_start,options);
fval=fval;
N_OUT.EXITFLAG=EXITFLAG;
catch
display('================================================================');
display('Something went wrong with the optimization');
display('================================================================'); 
x_out=NaN;
fval=NaN;
return
end

%Compute model with optimal parameters
for ii=1:size(x_opt_name,1)
    set_param_value(x_opt_name{ii,1},x_out(ii));
end
%solution and simulation of the model
var_list_={};
[info, oo_, options_] = stoch_simul(M_, options_, oo_, var_list_); %get decision rules and moments
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
%form final table
T = table(opt.irf_list,loss,'VariableNames',{'ImpulseResponse','Distance'});
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
loss1=sum((vec(distance).^2).*vec(W));  
loss1s=(vec(distance).^2).*(vec(W));
loss1s=loss1s(vec(W)~=0);
else
loss1=NaN;
opt.matchname_std={''};
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
loss2s=(distance.^2).*W;
loss2s=loss2s(W~=0);
else
loss2=NaN;
opt.matchname_mean={''};
end
vname=cell(max(size(opt.matchname_std)),max(size(opt.matchname_std)));
for ii=1:size(vname,1)
    for oo=1:size(vname,2)
        if ii==oo
            vname(ii,oo)={['Var(',cell2mat(opt.matchname_std(ii)),')']};
        else
            vname(ii,oo)={['Corr(',cell2mat(opt.matchname_std(ii)),',',cell2mat(opt.matchname_std(oo)),')']};
        end
    end
end
W=tril(opt.momentweight)~=0;
W=logical(vec(W));
std_tmp=vec(vname);
std_tmp=std_tmp(W,:);
T = table([{'STD'};std_tmp;{'AVG'};opt.matchname_mean],[NaN;loss1s;NaN;loss2s],'VariableNames',{'Moment','Distance'});
end
clc
display('================================================================');
display('================================================================');
display('Estimated parameters');
aa=opt.instname{1,:}';
TP = table(aa,x_out','VariableNames',{'Parameter','Value'});
disp(TP);
display('Matching statistics');
disp(T);
display(['Total loss is: ',num2str(fval)]);
N_OUT.Parameters=TP;
N_OUT.Moments=T;
N_OUT.OBJVALUE=fval;
N_OUT.EXIT=EXITFLAG;
N_OUT.OUTPUT=output;
save('N_OUT.mat','N_OUT');