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
%addpath(['../4.6.3/matlab']);
%for second order solutinos, add at the end of the mod file
%stoch_simul(order=2,pruning,IRF=0,AR=0);
addpath(['./dsge_nash_file']);                  %path to the toolkit
opt.modname='cdbc_flex_optim';                         %mode file name
opt.usedynare=1;                                %=0 if dynare is not used. In this case 
                                                %all calculations need to
                                                %be done in the
                                                %user-defined file
                                                %including substituting the
                                                %parameter values!
opt.nplayers=1;                                 %number of players    
opt.parallel=1;                                 %use parallel computing
opt.userdefined=0;                              %user-defined objective functions
opt.ovveridedynare=1;                           %change dynare settings (eliminates useless output/computations)
opt.pruning=0;                                  %use pruning
opt.irf=0;                                      %IRFs length
opt.ar=0;                                       %AR coefficient
opt.nograph=1;                                  %do figures
opt.noprint=1;                                  %print on screen dynare output
opt.periods=0;                                  %length of simulated variables
opt.objname={'Welf'};                     %objectives of players
opt.instname{1,1}={'rho_i','omega_pi',...
                    'opt_ex'};        %instruments of player 1
opt.instname{2,1}={};                %instruments of player 2
opt.grid{1,1}(1,1)={[0:0.01:0.99]};                 %grid for instrument 1 player 1
opt.grid{1,1}(1,2)={[1:0.1:5]};                 %grid for instrument 2 player 1 
opt.grid{1,1}(1,3)={[0:0.1:1]}; 
opt.grid{1,1}(1,4)={[0:0.2:2]};
opt.grid{2,1}(1,1)={[1:0.2:2]};            %grid for instrument 1 player 2
opt.grid{2,1}(1,2)={[-2:0.5:2]};
opt.grid{2,1}(1,3)={[-2:0.5:2]};
% opt.grid{2,1}(1,3)={[-2:0.5:2]};
opt.exclusion_condition{1,:}=['rho_i>1'];    %only one exclusion, taylor principle
opt.exclusion_condition{2,:}=['omega_pi<1'];
opt.exclusion_condition{3,:}=['opt_ex<0.1'];
%opt.exclusion_condition{2,:}=[];
opt.seed=1999;                                  %seed number
opt.keepout=0;                                  %keep all simulation results (default 0)
[OUT] = dsge_nash(opt);                         %main code to run
mytime=toc;
save(['WRK_',datestr(today,'dd-mmm-yyyy')]);

