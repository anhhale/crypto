%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This sample codes shows how to run DSGE Nash under its default
%configuration. Players target the second-order sotchastic steady state as
%objective and optimally choose the value of policy parameters
%Authors: Massimo Ferrari       (massimo.ferrari1@ecb.europa.eu)
%         Maria Sole Pagliari   (maria-sole.pagliari@banque-france.fr)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all
clear all
clc
tic
addpath(['../4.6.3/matlab']);
%for second order solutinos, add at the end of the mod file
%stoch_simul(order=2,pruning,IRF=0,AR=0);
addpath(['./dsge_nash_file']);                  %path to the toolkit
opt.modname='flm_base';                         %mode file name
opt.usedynare=0;                                %=0 if dynare is not used. In this case 
                                                %all calculations need to
                                                %be done in the
                                                %user-defined file
                                                %including substituting the
                                                %parameter values!
opt.nplayers=2;                                 %number of players    
opt.parallel=1;                                 %use parallel computing
opt.userdefined=1;                              %user-defined objective functions
opt.ovveridedynare=1;                           %change dynare settings (eliminates useless output/computations)
opt.pruning=1;                                  %use pruning
opt.irf=0;                                      %IRFs length
opt.ar=0;                                       %AR coefficient
opt.nograph=1;                                  %do figures
opt.noprint=1;                                  %print on screen dynare output
opt.periods=0;                                  %length of simulated variables
opt.objname={'PO1';'PO2'};                      %objectives of players (Payoff of prisoner 1 and 2)
opt.instname{1,1}={'S1'};                        %instruments of player 1
opt.instname{2,1}={'S2'};                        %instruments of player 2
opt.grid{1,1}(1,1)={[1,0]};                     %grid for instrument 1 player 1: Confess (S1=1) or stay silent (S1=0)
opt.grid{2,1}(1,1)={[1,0]};                     %grid for instrument 1 player 2: Confess (S1=1) or stay silent (S1=0)
% opt.grid{2,1}(1,3)={[-2:0.5:2]};
% opt.exclusion_condition{1,:}=['PHI_HEAD+PHI_COMM+PHI_CORE+PHI_Y<1'];    %only one exclusion, taylor principle
% opt.exclusion_condition{2,:}=['[(PHI_HEAD>0) + (PHI_CORE>0)]==2'];
% opt.exclusion_condition{3,:}=['[(abs(Q_COMM)>0) + (abs(Q_Y)>0)]==2'];
opt.seed=1999;                                  %seed number
opt.keepout=0;                                  %keep all simulation results (default 0)
[OUT] = dsge_nash(opt);                         %main code to run
mytime=toc;


