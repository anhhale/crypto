%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This sample codes shows how to run DSGE Nash when there is only one player. 
%In this case the problem is a simpler optimal monetary policy problem. In 
%this application we solve through a minimization algorithm but als a grid
%search is supported.
%Authors: Massimo Ferrari       (massimo.ferrari1@ecb.europa.eu)
%         Maria Sole Pagliari   (maria-sole.pagliari@banque-france.fr)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all
clear all
clc
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
opt.parallel=0;                                 %use parallel computing
opt.userdefined=0;                              %user-defined objective functions
opt.ovveridedynare=1;                           %change dynare settings (eliminates useless output/computations)
opt.pruning=1;                                  %use pruning
opt.irf=0;                                      %IRFs length
opt.ar=0;                                       %AR coefficient
opt.nograph=1;                                  %do figures
opt.noprint=1;                                  %print on screen dynare output
opt.periods=0;                                  %length of simulated variables
opt.usemin=1;                                   %use minimization function if only one player (0/1)
opt.minoptions=optimset('Algorithm','interior-point',...
    'AlwaysHonorConstraints','bounds','TolFun', 1e-6,...
    'TolX', 1e-5,'MaxFunEvals',100000000,'MaxIter',...
    100000000,'PlotFcns',@optimplotfval);       %optimization options in case usemin=1
opt.objname={'Welf'};                     %objectives of players
opt.instname{1,1}={'rho_i','omega_pi',...
                    'opt_ex','opt_pi','opt_y','rho_r2'};           %instruments of player 1
opt.grid{1,1}(1,1)={[0.:0.1:1]};                 %grid for instrument 1 player 1
opt.grid{1,1}(1,2)={[1:0.1:8]};                 %grid for instrument 2 player 1 
opt.grid{1,1}(1,3)={[0:0.1:1]};              %grid for instrument 3 player 1 
opt.grid{1,1}(1,4)={[1:0.1:5]};
opt.grid{1,1}(1,5)={[0:0.1:1]};
opt.grid{1,1}(1,6)={[0.:0.1:1]};
%opt.grid{1,1}(1,4)={[0:0.1:2]};                 %grid for instrument 4 player 1 
% opt.exclusion_condition{1,:}=['PHI_HEAD+PHI_COMM+PHI_CORE+PHI_Y<1'];    %only one exclusion, taylor principle
opt.exclusion_condition{1,:}=['rho_i>1'];    %only one exclusion, taylor principle
opt.exclusion_condition{2,:}=['omega_pi<1'];
opt.exclusion_condition{3,:}=['opt_ex<0.01'];
opt.seed=1999;                                  %seed number
opt.keepout=0;                                  %keep all simulation results (default 0)
[OUT] = dsge_nash(opt);                         %main code to run