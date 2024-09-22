%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This code solves the optimal policy problem when there is only one player
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%if only one player then it is a standard optimal policy exercise
if opt.usemin
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
    
[x_out,fval,EXITFLAG,output] = fminsearch(@(x)optimization_sub(x,x_opt_name,objvar,opt), x_start,options);
fval=-fval;
N_OUT.EXITFLAG=EXITFLAG;
catch
display('================================================================');
display('Something went wrong with the optimization');
display('================================================================'); 
x_out=NaN;
fval=NaN;
end
clc    
else
display('================================================================');
display('Starting computation of payoffs');
display(['Total iterations are ',num2str(size(XX,2))]);
display('================================================================');
OUT = NaN(opt.nplayers,size(XX,2));
NNN = size(XX,2);
if opt.parallel
display('Progress with payoff computations');
N_=50000;
if N_>NNN
    N_=NNN;
end
mystart=0;
display('Progress with payoff computations');
while mystart<NNN
%last iteration condition, avoid to go above NNN
if mystart+N_>NNN
N_=NNN-mystart;
end
tic
parfor jj=1:N_
    [OUT(:,mystart+jj),NoRun(:,mystart+jj)] = nash_payoff(opt,XX(:,mystart+jj),mystart+jj,M,oo,options);
end
mystart=mystart+N_;
display(['Completed ',num2str(round(100*(mystart)/NNN,3)),'% of iterations']);
end

% % parfor_progress(NNN);
% parfor jj=1:NNN
%   [OUT(:,jj)] = nash_payoff(opt,XX(:,jj),jj,M,oo,options);
% %   parfor_progress;
% end
% parfor_progress(0);
else
N_=50000;
if N_>NNN
    N_=NNN;
end
mystart=0;
display('Progress with payoff computations');
while mystart<NNN
%last iteration condition, avoid to go above NNN
if mystart+N_>NNN
N_=NNN-mystart;
end
try
for jj=1:N_
    [OUT(:,mystart+jj),NoRun(:,mystart+jj)] = nash_payoff(opt,XX(:,mystart+jj),mystart+jj,M,oo,options);
end
catch
     keyboard
end
mystart=mystart+N_;
display(['Completed ',num2str(round(100*(mystart)/NNN,3)),'% of iterations']);
end     
    
    
% textprogressbar('Progress with payoff computations ');
% for jj=1:NNN
%   [OUT(:,jj)] = nash_payoff(opt,XX(:,jj),jj,M,oo,options);
%   textprogressbar(100*(jj/NNN));
% end
end
posmax=find(OUT==max(OUT));
x_out=opt.P1(:,posmax)';
fval=max(OUT);
if isempty(posmax)
    x_out=NaN;
    fval=NaN;
end    
clc
end
N_OUT.opt_params=x_out;
N_OUT.opt_value=fval;
if opt.nplayers==1
display('================================================================');
display('Computations terminated');
display(['Outputs are saved in the file N_OUT.m']);
display('Starting to display results.')
display('================================================================');    
if isnan(N_OUT.opt_value)
    display('No solution found, the problem might be wrongly specified');
else
kk=0;
clearvars tmp
for jj=1:opt.nplayers
tmp2=opt.instname{jj,:};
for tt=1:max(size(tmp2))
    kk=kk+1;
    tmp(kk,:)=tmp2(:,tt);  
end
end
Instrument=tmp;
Variable=[Instrument;opt.objname];
OptimalParameters=N_OUT.opt_params';
Values=[OptimalParameters;N_OUT.opt_value];
T = table(Variable,Values);
display('Optimal parameters and objective function are:')
disp(T); 
save('N_OUT.mat','N_OUT');
end
end