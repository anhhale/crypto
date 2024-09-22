%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This sample codes shows how to run DSGE Nash for moments matching
%Authors: Massimo Ferrari       (massimo.ferrari1@ecb.europa.eu)
%         Maria Sole Pagliari   (maria-sole.pagliari@banque-france.fr)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all
clear all
clc
addpath(['../4.6.3/matlab']);

%Prepare the data
[a b c]=xlsread('USDATA.xlsx','Data'); %data are ordered RGDP, R Consumption, EFFR
%take log of RGD and R Consumption and first differences
a(:,[1,2])=log(a(:,[1,2]));
a=diff(a);
%generate VCOV matrix and vector of means
VCOV=cov(a);
AVG=mean(a,1)';
AVG=AVG(1);                                     %only mean of output matters
save('mydata.mat');

%Prepare DSGE Nash
addpath(['./dsge_nash_file']);                  %path to the toolkit
opt.modname='flm_base';                         %mode file name
opt.usedynare=1;                                %=0 if dynare is not used. In this case 
                                                %all calculations need to
                                                %be done in the
                                                %user-defined file
                                                %including substituting the
                                                %parameter values!
opt.nplayers=1;                                 %number of players; only 1 because there is no game
opt.momentmatch=1;                              %=1 to start momemnt matching
opt.irfmatch=0;                                 %=0 because we use moment match and not IRFs match
opt.parallel=0;                                 %use parallel computing
opt.userdefined=0;                              %user-defined objective functions
opt.ovveridedynare=1;                           %change dynare settings (eliminates useless output/computations)
opt.nomoents=0;                                 %=0 to compute moments of endogenous variables
opt.solorder=1;                                    %first order solution is sufficient
opt.pruning=0;                                  %use pruning
opt.irf=0;                                      %IRFs length (= 0 to ruppress IRFS)
opt.ar=0;                                       %AR coefficient
opt.nograph=1;                                  %do figures
opt.noprint=1;                                  %print on screen dynare output
opt.periods=0;                                  %length of simulated variables
opt.matchname='mydata';                         %name of the mat file with the data
opt.matchname_std={'DY';'DC';'DR'};              %lists the variables for which we are interested in matching volatilities or std
                                                %notice they appear in the same order as in the data file
opt.momentweight=[1 1 0;                        %this matrix tells which mements to target: Variance of all 3 variables +
                  1 1 0;                        %Correlations of Output and Consumption; we don't target the correlation between the risk-free                                            
                  0 0 1];                       %rate and other variables. One can assigne non-zero weights as well.
opt.matchname_mean={'DY'};                      %Here list the variables of which we target the mean
opt.momentweight_mean=1;                         %Here the vector of weights for the mean; in case no weights assignes just fill with ones
opt.objname={''};                               %objectives of players, can be empty
opt.instname{1,1}={'SA','SERR','SG','RHO_ERR',...
                    'RHO_A','RHO_G',...
                    'GAMMA','THETA','PHI_HEAD',...
                    'PHI_CORE','PHI_Y'};        %here list the parameters that will be calibrated by moment matching. Notice this is the same
                                                %sintax as listing target variables for player 1
opt.grid{1,1}(1,1)={[0,5]};                 %grid for instrument 1 player 1
opt.grid{1,1}(1,2)={[0,5]};                 %grid for instrument 2 player 1 
opt.grid{1,1}(1,3)={[0,5]}; 
opt.grid{1,1}(1,4)={[0,0.9]};
opt.grid{1,1}(1,5)={[0,0.9]};
opt.grid{1,1}(1,6)={[0,0.9]};
opt.grid{1,1}(1,7)={[0.05,0.3]};
opt.grid{1,1}(1,8)={[0.65,0.85]};
opt.grid{1,1}(1,9)={[1.1,2.5]};
opt.grid{1,1}(1,10)={[0,2.5]};
opt.grid{1,1}(1,11)={[0,2.5]};
opt.seed=1999;                                  %seed number
opt.keepout=0;                                  %keep all simulation results (default 0)

[OUT] = dsge_nash(opt);                         %main code to run