%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This code solves the game in pure strategies
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%use this subcode to compute payoffs    
main_compute_payoff;

%adjusting for NaN
% OUT = OUT(:,logical(NoRun));
% XX = XX(:,logical(NoRun));
%6) now that payoffs are computed, compute the optimal response function
display('================================================================');
display('Start computing optimal response functions');
display('================================================================');
%first notice that a nash equilibrium must be an optimal reply function for
%player 1. The algorithm works this way:
%       a. find the optimal response function for player 1. This function
%       specifies the (optimal) choice of 1 given a specific set of choices 
%       by other players. Do this for all players.
%       b. for all strategies sets (i.e. strategy by 1,2...) included  
%       in best reply of player 1 check if they are also a best reply
%       set for 2
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
    ii = sum(XXX==xx(:,kk),1)==max(size(xx,1));
    out = OUT(jj,ii);   %these are the payoff of all choices of jj for 
                        %choices kk by other players
    tmp_s = XX(jj,ii);  %strategies corresponding to payoffs in out
    ii=out==max(out);  
    if isnan(max(out))
      o_res=[];  
    else
    o_res = tmp_s(:,ii); 
    end
    eval(['o_res=opt.P',num2str(jj),'(:,o_res);']);
    O_RES(kk,:) = {o_res}; 
    end
    S_OTHER(jj,:)={xx};
    eval(['O_RES',num2str(jj),'=O_RES;']);
    clearvars O_RES
    display(['Best reply function of player ',num2str(jj),' computed.']);
end

%save all
% display('================================================================');
% display('Saving output of the grid search as OutputGridSearch.mat');
% display('Saving optimal response functions as OptimalResponseFunctions.mat');
% display('================================================================');
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
%get best response function of 1
jj=1;
eval(['tmp_res=O_RES',num2str(jj),';']);    %best response function of 1
tmp_other = S_OTHER{jj,:};                  %strategies of other players
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
    %find the strategy combination (i.e. the strategies of the other
    %players under which kk is optimal for player 1)
    for ss=2:opt.nplayers
    eval(['tmp3=opt.P',num2str(ss),'(:,tmp2(ss-1,:));']);
    base1=[base1;tmp3];                 %base1 is the candidate vector to be a 
                                        %nash equilibrium of the game. It
                                        %needs to be in the best reply set
                                        %of all players
    clearvars tmp3
    end
    
    %now loop across players and check if it is otpimal also for them
    isopt = 1;                          %this needs to remain one to the end of the while loop
    npl = 2;                            %start off with the second player
    while (isopt ==1 && npl<=opt.nplayers )
        %start with player npl
        eval(['tmp3=opt.P',num2str(npl),'(:,tmp2(npl-1,:));']);      %strategy of player npl
        eval(['tmp_resin=O_RES',num2str(npl),';']); 
        clearvars tokeep
        for ss=1:size(tmp_resin,1)
        aa = tmp_resin{ss,:};               %this is the best response set of player npl
                                            %it might have mroe than on BR
                                            %as player 1
        %allow for multiple optimal strategies also for player npl
        
        for sss =1:size(aa,2)
        tokeep(ss,:)=sum(aa(:,sss)==tmp3)==max(size(aa(:,sss)));        %check if the choice in the candidate set is there
        end
        end
        if sum(tokeep)==0
            %if nothing is found end here
            isopt=0;
            isnash=0;
        else
            %if at least one BR of the other player is strategy tmp3, check
            %if it is a BR for the same combinations of strategies for
            %which it is for one otherwise it is not an equilibrium
            tmp_other2 = S_OTHER{npl,:};                           %opposite strategies for jj+1 
            tmp_other2 = tmp_other2(:,tokeep);                     %strategies saved
            %now construct a new vector to compare with the candidate base1
            %the two need to be the same
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
            npl = npl+1;    %test passed, moving to next player
        else
            npl = npl+1;    %test failed, dropping candidate vector base1    
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

%7) display results
if opt.nplayers>1
display('================================================================');
display('Computations terminated');
display(['Outputs are saved in the file N_OUT.m']);
display('Output of the grid search saved as OutputGridSearch.mat');
display('Optimal response functions saved as OptimalResponseFunctions.mat');
display('Starting to display results.')
display('================================================================');
if isfield(N_OUT,'NE')==0
display(['There are no Nash Equilibria in pure strategy for the game.']);
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
Variable=tmp;
for jj=1:max(size(N_OUT.NE))
    Nash_EQ(:,jj)=N_OUT.NE{jj,:};
end
%computing equilibrium results
var_list_ = opt.objname;
if isfield(opt,'simlist')
var_list_ = opt.simlist;
end
if opt.usedynare
%this if dynare is used  
for jj=1:max(size(N_OUT.NE))
    tmp=N_OUT.NE{jj,:};
    for kk=1:size(Variable,1)
    i = strmatch(Variable{kk,1},M.param_names,'exact');
    M.params(i)=tmp(kk,:);
    end
    [info, oo_, options_] = stoch_simul(M, options, oo, var_list_); %get decision rules and moments
    if info(1)~=0
    %if model does not solve    
    OUT(:,jj)=NaN(opt.nplayers,1);
    else
    %if solves correctly and no use of user defined function   
    if opt.userdefined==0
    OUT(:,jj)=oo_.mean;
    elseif opt.userdefined==1
    xx=tmp;
    %if solves correctly and user choose a custom function
    user_defined_function;
    for pp=1:opt.nplayers
    eval(['OUT(pp,jj)=',opt.objname{pp,:},';']);
    end
    
    end
    
    end
end
else
    %this if dynare is not used. In this case everything including
    %substituting the parameter value for each draw needs to be done in the
    %user_defined_function file
for jj=1:max(size(N_OUT.NE))
    tmp=N_OUT.NE{jj,:};             %these are the draws of parameters
    xx=tmp;
    %if solves correctly and user choose a custom function
    user_defined_function;
    for pp=1:opt.nplayers
    eval(['OUT(pp,jj)=',opt.objname{pp,:},';']);
    end
end
end
if max(size(N_OUT.NE))>0    
Variable=[Variable;opt.objname];
Values = [Nash_EQ;OUT];
T = table(Variable,Values);
display('Equilibrium strategies and objective functions are:')
disp(T);
end
save('N_OUT.mat','N_OUT');
end
end