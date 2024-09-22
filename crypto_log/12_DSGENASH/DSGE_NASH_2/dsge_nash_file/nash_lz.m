function [N_OUT] = nash_lz(nash_input,varagin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%0) input acquisition and parsin
[opt] = lz_parsinput(nash_input);
%reparsing numbers of players/instruments
opt.nplayers=max(size(opt.objname));
for jj=1:opt.nplayers
tmp = opt.instname{jj,:};
opt.instnum(jj,:)=max(size(tmp));
end
%add parallel computing if option missing
if isfield(opt,'parallel')
else
    opt.parallel=1;
end
%add user defined option if it is missing
if isfield(opt,'userdefined')
    opt.userdefined=0;
end
%add option to ovveryde dynare standard options
if isfield(opt,'ovveridedynare')
    opt.ovveridedynare=1;
end
%if the use of minimization is not selected in the 1-player case just set
%to zero
if isfield(opt,'usemin')==0
        opt.usemin=0;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%1) run dynare to get variable names and other model info
eval(['dynare ',opt.modname,' nolog nograph nopreprocessoroutput']);
M_  = evalin('base','M_');
oo_ = evalin('base','oo_');
options_ = evalin('base','options_');
clear global
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2) check that objective variables and instruments exist
nash_check_variables(opt,M_,oo_);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3) elimate global variables, override dynare options, print settings
M=M_;
oo=oo_;
options=options_;
clearvars oo_ M_ options_
if opt.ovveridedynare == 1
opt.solorder=options.order;
if opt.solorder>1
    options.pruning=logical(opt.pruning);     %use pruning
    options.irf=opt.irf;                      %no irfs
end
options.ar=opt.ar;                            %no autoregressive coefficients
options.nograph=logical(opt.nograph);         %no graphs
options.noprint=logical(opt.noprint);         %do not print results on screen
options.periods=opt.periods;                  %no simulations
end
opt.M=M;
opt.oo=oo;
opt.options=options;
%display options
clc
display('================================================================');
display('Settings are:');
display(['Name of mod file: ',opt.modname]);
display(['Number of players: ',num2str(opt.nplayers)]);
display(['Order of approximation: ',num2str(opt.solorder)]);
display(['Use of parallel computing: ',num2str(opt.parallel)]);
display(['User-defined objective functions: ',num2str(opt.userdefined)]);
for jj=1:opt.nplayers
display(['Objective of player ',num2str(jj),' is: ',opt.objname{jj,:}]);
tmp = opt.instname{jj,:};
tmp2 = '';
for kk=1:max(size(tmp))
tmp2 = [tmp2,' ',cell2mat(tmp(:,kk))];
end
tmp3 = opt.grid{jj,:};
display(['Instrument(s) of player ',num2str(jj),' is(are): ',tmp2]);
display(['Over the grids:']);
for kk=1:max(size(tmp3))
display(['Max: ',num2str(max(tmp3{1,kk})),' and min: ',num2str(min(tmp3{1,kk}))]);
end
end
input('Press ''Enter'' to continue...','s');
display('================================================================');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%4) set up the grid of strategies
% create a matrix P numbered for each player (P1, P2, P3...) that contains
% all combinations of the policy variable's parameters
% Each column of that matrix is a strategy thatcan be played and is
% rapresented by the number of the column. At the end we create a matrix XX
% where all combinations of strategies are computed. In XX the column
% indicate the strategy number for each player. One simply takes the value
% of the column and uses matrix P to get the parameter values. For example
% if XX(:,1) =[4;3]; it means there are 2 players, player 1 plays strategy 4
%player 2 plays strategy 3. To see what actual parameter values are
%associated to those strategies, one needs to check P1(:,4) and P2(:,3)
nstr = '';      %empty string to store the input for the final convolution of strategies
for jj=1:opt.nplayers
    tmp = opt.grid{jj,:};
    %make sure tmp has size 1 x instruments
    [a b] = size(tmp);
    if a>b
        tmp=tmp';
    end
    %generate one vector for all possible strategies
    mystr = '';
    for kk=1:max(size(tmp))
    tmp2 = cell2mat(tmp(1,kk));    
    eval(['s',num2str(kk),'=tmp2;'])
    mystr = [mystr,',','s',num2str(kk)];
    end
    mystr = mystr(2:end);
    %combine them into a unique set for each player
    eval(['P',num2str(jj),'=combvec(',mystr,');']);
    %generate number of possible different strategies for each player
    eval(['N',num2str(jj),'=1:max(size(P',num2str(jj),'));']);
    nstr = [nstr,',N',num2str(jj)];
    eval(['opt.P',num2str(jj),'=P',num2str(jj),';']);
    eval(['opt.N',num2str(jj),'=N',num2str(jj),';']);
    eval(['N_OUT.StrategyPlayer',num2str(jj),'=P',num2str(jj),';']);
end
nstr =nstr(2:end);
%get the matrix vector for all possible strategies
%this matrix has size Number of players x Possible combination of strategy
% Rows are plyers, columns contain the number of the strategy. For each
% player the number in the column indicates the number of the column of
% matrix P where actual values of parameters are stored
% there are up to size(XX,2) possible convolutions of the game 
XX=[];
eval(['XX','=combvec(',nstr,');']);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%5) simulation part consider first order separately.
% for first order user need to provide an equation to compute output
% (ideally user use the Benigno & Woodford (2005) linear quadratic
% approxiation

%set the seed
rng('default');
rng(opt.seed);
if opt.nplayers>1
display('================================================================');
display('Starting computation of payoffs');
display(['Total iterations are ',num2str(size(XX,2))]);
display('================================================================');
OUT = NaN(opt.nplayers,size(XX,2));
NNN = size(XX,2);
    if opt.parallel
        display('Progress with payoff computations');
        parfor_progress(NNN);
        parfor jj=1:NNN
            [OUT(:,jj)] = nash_payoff(opt,XX(:,jj),jj,M,oo,options);
             parfor_progress;
        end
        parfor_progress(0);
    else
        textprogressbar('Progress with payoff computations ');
        for jj=1:NNN
            [OUT(:,jj)] = nash_payoff(opt,XX(:,jj),jj,M,oo,options);
            textprogressbar(100*(jj/NNN));
        end
    end
clc
display('================================================================');
display('Payoff calculation completed');
display('================================================================');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%6) now that payoffs are computed, compute the optimal response function
display('================================================================');
display('Start computing optimal response functions');
display('================================================================');
%first notice that a nash equilibrium must be an optimal reply function for
%player 1. The equilibrium algorithm works this way:
%       a. find the optimal response function for player 1. This function
%       specifies the choice of 1 given a set of choices by other players
%       b. for all strategies included there in best reply of player 1
%       check if under the best reply of player 1, the choice of 2 is also
%       a best reply
%       c. repeat for all players if a set of choices is optimal for all
%       players at the same time it is nash equilibrium

%create best response functions by country
for jj=1:opt.nplayers
    
    %find unique strategies of all excpet player jj
    ii = XX(jj,:) == min(XX(jj,:));
    xx=XX(:,ii);
    xx(jj,:)=[];        %this is a list of all possible combination of 
                        %choices by other players
    XXX = XX;
    XXX(jj,:) = [];
    %loop across each combination of strategies and find the best response
    %of player jj conditional on a specific combination of choices by other
    %players
    
    tmp = OUT(jj,:);    %these are payoffs for player jj
    for kk = 1 : size(xx,2)
    ii = sum(XXX==xx(:,jj),1)==max(size(xx,1));
    out = OUT(jj,ii);   %these are the payoff of all choices of jj for 
                        %choices kk by other players
    ii=out==max(out);  
    o_res = XX(jj,ii); 
    eval(['o_res=opt.P',num2str(jj),'(:,o_res);']);
    O_RES(kk,:) = {o_res}; 
    end
    S_OTHER(jj,:)={xx};
    eval(['O_RES',num2str(jj),'=O_RES;']);
    clearvars O_RES
end

%save all
display('================================================================');
display('Saving output of the grid search as OutputGridSearch.mat');
display('Saving optimal response functions as OptimalResponseFunctions.mat');
display('================================================================');
save('OutputGridSearch.mat','OUT')
clearvars OUT
save('OptimalResponseFunctions.mat','O_RES1');
for jj=2:opt.nplayers
   save('OptimalResponseFunctions.mat',['O_RES',num2str(jj)],'-append'); 
end
%check for nash equilibrium. Pick first BRF of player 1, first BRF, see if
%the strategy of other player is also BR to the strategy of 1
% notice ALL nash equilibria need to be in the BR function of player 1 by
% definition
% Practically, for each BR of player one, we create a vector of the
% strategies of each player including one. If that specific combination of
% strategies is a Nash Equilibrium, we would have the same vector computed
% for all players. We start looping across player testing whether that is
% the case, as soon as we find that is not optimal for one player we stop
% keyboard
%get best response function of 1
jj=1;
eval(['tmp_res=O_RES',num2str(jj),';']);    %best response function of 1
tmp_other = S_OTHER{jj,:};                   %strategies of other players
nn=1;
%check strategy by strategy

%select best response for each strategy combination
for jj=1:size(tmp_res,1)
    tmp = tmp_res{jj,:};                %set of responses of 1
    tmp2= tmp_other(:,jj);              %strategies of other
    %there might be potentially more than one best response, loop through
    %all
    for kk=1:size(tmp,2)
    base1 = tmp(:,kk);                  %this is a vector of the combination of strategies
                                        %under the optimal response of
                                        %player 1 with strategy kk
    %find strategies of all other players
    for ss=2:opt.nplayers
    eval(['tmp3=opt.P',num2str(ss),'(:,tmp2(ss-1,:));']);
    base1=[base1;tmp3];
    clearvars tmp3
    end
    
    %now loop across players and check if it otpimal also for them
    isopt = 1;
    npl = 2;
    while (isopt ==1 && npl<=opt.nplayers )
        %start with player jj+1
        eval(['tmp3=opt.P',num2str(npl),'(:,tmp2(npl-1,:));']);      %strategy of player jj+1
        eval(['tmp_resin=O_RES',num2str(npl),';']); 
        clearvars tokeep
        for ss=1:size(tmp_resin,1)
        aa = tmp_resin{ss,:};
        %allow for multiple optimal strategies also for player jj+1
        
        for sss =1:size(aa,2)
        tokeep(ss,:)=sum(aa(:,sss)==tmp3)==max(size(aa(:,sss)));
        end
        end
        if sum(tokeep)==0
            %if nothing is found end here
            isopt=0;
            isnash=0;
        else
            %if at least one BR of the other player is strategy tmp3, check
            %if it is a BR for the same combinations of strategies for
            %which it is for one
            tmp_other2 = S_OTHER{npl,:};                           %opposite strategies for jj+1 
            tmp_other2 = tmp_other2(:,tokeep);                     %strategies saved
            %now construct the vector to compare with base1
            isnash=[];
            for ii=1:size(tmp_other2,2)
                clearvars base2
                tmp_other3 = tmp_other2(:,ii);
                for ss=1:opt.nplayers
                    if ss==1
                        %geting started with optimal response of 1
                        base2 = opt.P1(:,tmp_other3(1,:));
                    elseif ss==npl
                        %add response of player jj+1 (no need to search)
                        base2=[base2;tmp3];
                    elseif ss<npl
                        %case in which ss is below npl
                        eval(['Ptmp=opt.P',num2str(ss),';']);
                        base2=[base2;Ptmp(:,tmp_other3(ss,:))];
                        clearvars Ptmp
                    elseif ss>npl
                        %case in which ss is above npl (need to take one
                        %number off the index)
                        eval(['Ptmp=opt.P',num2str(ss),';']);
                        base2=[base2;Ptmp(:,tmp_other3(ss-1,:))];
                        clearvars Ptmp
                    end
                end
                %now we have a vector base2 to confront with base1, it
                %needs to be equal to base1 for the candidate set of
                %strategies to be a nash equilibrium
                aa=base1==base2;
                if sum(aa)==max(size(aa))
                    %if it matches
                    isnash(ii)=1;
                else
                    %if it does not matches
                    isnash(ii)=0;
                end
            end    
        end
        
        %final chack, if at least 1 combination matches, the candidate set
        %of strategies survives otherwise the loop ends
        if sum(isnash)>0
            npl = npl+1;
        else
            npl = npl+1;
            isopt = 0;
        end
        clearvars isnash
    end
%     if the candidate strategies combinations has survived so far, then we
%     can call this a nash equilibrium!
    if isopt
    NE(nn,:)={base1};
    nn=nn+1;
    else
    end
    
    end
end
if exist('NE')
N_OUT.NE=NE;
else
N_OUT.NE=[];
end
elseif opt.nplayers==1
%if only one player then it is a standard optimal policy exercise

if opt.usemin
display('================================================================');
display('Starting computation of optimal parameters');    
display('================================================================');
oo_=oo;
M_=M;
options_=options;
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
try
[x_out,fval,EXITFLAG,output] = fminsearch(@(x)optimization_sub(x,x_opt_name,objvar), x_start,options,opt);
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
        parfor_progress(NNN);
        parfor jj=1:NNN
            [OUT(:,jj)] = nash_payoff(opt,XX(:,jj),jj,M,oo,options);
             parfor_progress;
        end
        parfor_progress(0);
    else
        textprogressbar('Progress with payoff computations ');
        for jj=1:NNN
            [OUT(:,jj)] = nash_payoff(opt,XX(:,jj),jj,M,oo,options);
            textprogressbar(100*(jj/NNN));
        end
    end
    posmax=find(OUT==max(OUT));
    x_out=opt.P1(:,posmax);
    fval=max(OUT);
    if isempty(posmax)
        x_out=NaN;
        fval=NaN;
    end    
clc
end
N_OUT.opt_params=x_out;
N_OUT.opt_value=fval;
end

%7) display results
if opt.nplayers>1
display('================================================================');
display('Computations terminated');
display('Starting to display results.')
display('================================================================');
if isfield(N_OUT,'NE')==0
display(['There are no Nash Equilibria in pure strategy for the game.']);
display(['Outputs are saved in the file N_OUT.m']);
save('N_OUT.m','N_OUT');
else
display(['There are a total of ',num2str(max(size(N_OUT.NE))),' Nash Equilibria of the game']);
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
for jj=1:max(size(N_OUT.NE))
    Nash_EQ(:,jj)=N_OUT.NE{jj,:};
end
T = table(Instrument,Nash_EQ);
display('Equilibrium strategies are:')
disp(T);
end


if opt.nplayers==1
display('================================================================');
display('Computations terminated');
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
OptimalParameters=N_OUT.opt_params;
T = table(Instrument,OptimalParameters);
display('Optimal parameters are:')
disp(T);    
end
end

end