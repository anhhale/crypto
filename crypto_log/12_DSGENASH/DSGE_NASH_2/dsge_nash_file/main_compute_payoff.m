%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This script computes payoffs of all possible combinations of strategies
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

display('================================================================');
display('Starting computation of payoffs');
display(['Total iterations are ',num2str(size(XX,2))]);
display('================================================================');
OUT = NaN(opt.nplayers,size(XX,2));
NNN = size(XX,2);
if opt.parallel
%Split the iteration into blocks of 50000
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
else
%Split the iteration into blocks of 50000
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
for jj=1:N_
    [OUT(:,mystart+jj),NoRun(:,mystart+jj)] = nash_payoff(opt,XX(:,mystart+jj),mystart+jj,M,oo,options);
end
mystart=mystart+N_;
display(['Completed ',num2str(round(100*(mystart)/NNN,3)),'% of iterations']);
end    
end
clc
display('================================================================');
display('Payoff calculation completed');
display('================================================================');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%