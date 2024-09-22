%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This is the main code of DSGE Nash, a toolkit to solve policy games in macro
%models. Inputs should be parsed in through the structure nash_input; if
%it is empty, the code will ask for inputs on screen.
%Please check the reference manual for more details and email us to report
%bugs or provide suggestions.
%Authors: Massimo Ferrari       (massimo.ferrari1@ecb.europa.eu)
%         Maria Sole Pagliari   (maria-sole.pagliari@banque-france.fr)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [N_OUT] = dsge_nash(nash_input,varagin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%0) input acquisition and parsin
[opt] = lz_parsinput(nash_input);
%if only one player, no minimization
if opt.nplayers>1
    opt.usemin=0; 
end
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
if isfield(opt,'userdefined')==0
    opt.userdefined=0;
end
%add option to ovveryde dynare standard options
if isfield(opt,'ovveridedynare')==0
    opt.ovveridedynare=1;
end
%if the use of minimization is not selected in the 1-player case just set
%to zero
if isfield(opt,'usemin')==0
        opt.usemin=0;
end
%use dynare option
if isfield(opt,'usedynare')==0 
    opt.usedynare=1;
end
if opt.usedynare==0
    opt.userdefined=1;
end
%check that nomoments field exists
if isfield(opt,'nomoments')
else
    opt.nomoments=0;
end
%add impulse response matching and moment matching if missing
if isfield(opt,'irfmatch')
else
    opt.irfmatch=0;
end
if isfield(opt,'momentmatch')
else
    opt.momentmatch=0;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%1) run dynare to get variable names and other model info
if opt.usedynare
eval(['dynare ',opt.modname,' nolog nograph nopreprocessoroutput']);
M_  = evalin('base','M_');
oo_ = evalin('base','oo_');
options_ = evalin('base','options_');
clear global
if isfield(opt,'solorder')==0    
    opt.solorder=options_.order;
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2) check that objective variables and instruments exist
if opt.usedynare && opt.irfmatch==0 && opt.momentmatch==0
nash_check_variables(opt,M_,oo_);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3) elimate global variables, override dynare options, print settings
if opt.usedynare
M=M_;
oo=oo_;
options=options_;
clearvars oo_ M_ options_
if opt.ovveridedynare == 1
options.order=opt.solorder;
options.pruning=logical(opt.pruning);     %use pruning
options.irf=opt.irf;                      %irfs
options.ar=opt.ar;                            %no autoregressive coefficients
options.nomoments=logical(opt.nomoments);     %no graphs
options.nograph=logical(opt.nograph);         %no graphs
options.noprint=logical(opt.noprint);         %do not print results on screen
options.periods=opt.periods;                  %no simulations
end
opt.M=M;
opt.oo=oo;
opt.options=options;
else
    opt.modname='';
    opt.solorder=NaN;
    oo=[];
    M=[];
    options=[];
end
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
    %impose exclusion restrictions by trimming the strategies available:
    %1) evaluate the parameers
    %2) check each restriction, if it is applied on other parameters it
    %will not work, for this reason the try/catch command
    %3) if works, trimm the strategies keep only those that do not violate
    %the condition
    if isfield(opt,'exclusion_condition')
    tmp_inst=opt.instname{jj,:};
    for ooo=1:max(size(opt.exclusion_condition))
        try
        for xxx=1:max(size(tmp_inst))
        eval([tmp_inst{xxx},'=P',num2str(jj),'(xxx,:);']);
        end    
        tmp_ex=opt.exclusion_condition{ooo};
        %evaluate the condition
        eval(['iii=',tmp_ex,';']);
        iii=iii==0;
        %trim the strategies
        eval(['P',num2str(jj),'=P',num2str(jj),'(:,iii);']);
        catch
        end
    end   
%clear all parameter sets from the workspace just to be safe
    for ooo=1:max(size(tmp_inst))
        eval(['clearvars ',tmp_inst{ooo},';']);
    end
    end
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
%multiple players, pure strategy
if opt.nplayers>1 && opt.irfmatch==0 && opt.momentmatch==0
pure_strategies_game;
end

%one player, simple optimal policy
if opt.nplayers==1 && opt.irfmatch==0 && opt.momentmatch==0
optimal_policy_one_player;
end
%impulse response or mement matching
if opt.irfmatch==1 || opt.momentmatch==1
matching_irf_and_moments
end
close all
end