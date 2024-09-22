%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This sample codes shows how to run DSGE Nash when user specify a 
%custom-mande objective. Payoffs are computed in the ayers target the 
%user_defined_function.m file, which user need to code followig instructions
%In this case players target the volatility of output and inflation (player 1)
%and profits (player 2).
%Authors: Massimo Ferrari       (massimo.ferrari1@ecb.europa.eu)
%         Maria Sole Pagliari   (maria-sole.pagliari@banque-france.fr)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all
clear all
clc
addpath(['../4.6.3/matlab']);
%for second order solutinos, add at the end of the mod file
%stoch_simul(order=2,pruning,IRF=0,AR=0);
addpath(['./dsge_nash_file']);                  %path to the toolkit
opt.modname='flm_base';                         %mode file name
opt.usedynare=1;                                %=0 if dynare is not used. In this case 
                                                %all calculations need to
                                                %be done in the
                                                %user-defined file
                                                %including substituting the
                                                %parameter values!
opt.nplayers=2;                                 %number of players    
opt.parallel=0;                                 %use parallel computing
opt.userdefined=1;                              %user-defined objective functions
opt.ovveridedynare=1;                           %change dynare settings (eliminates useless output/computations)
opt.pruning=1;                                  %use pruning
opt.irf=0;                                      %IRFs length
opt.ar=0;                                       %AR coefficient
opt.nograph=1;                                  %do figures
opt.noprint=1;                                  %print on screen dynare output
opt.periods=0;                                  %length of simulated variables
opt.objname={'V1';'V2'};                        %objectives of players
opt.simlist={'NY';'NPI';'NPE'}                  %list of variables to simulate out of dynare
opt.instname{1,1}={'PHI_HEAD','PHI_COMM'};      %instruments of player 1
opt.instname{2,1}={'NETA'};                     %instruments of player 2
opt.grid{1,1}(1,1)={[0:0.2:4]};                 %grid for instrument 1 player 1
opt.grid{1,1}(1,2)={[0:0.2:4]};                 %grid for instrument 2 player 1 
opt.grid{2,1}(1,1)={[0.000000001:0.05:0.8]};    %grid for instrument 1 player 2
opt.seed=1999;                                  %seed number
opt.keepout=0;                                  %keep all simulation results (default 0)
[OUT] = dsge_nash(opt);                         %main code to run