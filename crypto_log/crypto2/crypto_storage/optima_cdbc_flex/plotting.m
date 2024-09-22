clear all; clc;  close all; 
% Nispi Landi (2020): Capital Controls Spillovers, JIMF
% This file plots the IRFs to a risk-premiunm or a preference shock (follow the instruction in the readme)
% Author: Valerio Nispi Landi
% Date: 18/02/2021

clear all; close all; 
dynare spillovers noclearall

% Choose the shock: vts: risk premium. vps: preference.
shock='vts';   

FigW=30;FigH=FigW/2;% Size of figures
usedfont='Georgia'; % Font of figures
T=11;               % IRF horizon

% Interest rates are annualized
eval(['r_' shock ' =4*r_' shock ';']); eval(['rz_' shock ' =4*rz_' shock ';']); eval(['rs_' shock ' =4*rs_' shock ';']); 
eval(['reff_' shock ' =4*reff_' shock ';']); eval(['reffz_' shock ' =4*reffz_' shock ';']);

% Load the benchmark irfs
load(['irf_bench_vts.mat'])
load(['irf_bench_vps.mat'])

% Choose the endogenous variables (they need to be saved in save_irfs.m)
cellvars={'gdpl','cl','il','dy','fay','tby','r','pl','tau'};
cellvarlabels={'GDP','Consumption','Investment','Debt/GDP','Inflows/GDP','Trade balance','Interest Rate','Exchange Rate','Capital control'};

cellvars2={'gdpzl','czl','izl','dyz','fayz','tbyz','rz','pzl'};
cellvarlabels2={'GDP','Consumption','Investment','Debt/GDP','Inflows/GDP','Trade balance','Interest Rate','Exchange Rate'};

cellvars3={'gdpsl','csl','isl','bys','fays','tbys','rs'};
cellvarlabels3={'GDP','Consumption','Investment','Assets/GDP','Outflows/GDP','Trade balance','Interest Rate'};

%%  Risk-premium shock

if strcmp(shock, 'vts')

% AE
figure;
set(gcf,'color', 'white',...
        'PaperUnits','centimeters','PaperSize',[FigW FigH],...
        'PaperPosition',[0,0,FigW,FigH],'PaperPositionMode','manual',...
        'Units','centimeters',...
        'Position',[0,0,FigW,FigH]);
for j=1:7
subplot(3,3,j)
plottanda_b=eval(['100*' cellvars3{j} '_b' shock ';']);
plot([-1:1:T-1], [0; plottanda_b(1:T)],'Linewidth',2);
hold on
plottanda_=eval(['100*' cellvars3{j} '_' shock ';']);
plot([-1:1:T-1], [0; plottanda_(1:T)],'k--','Linewidth',2);
title(cellvarlabels3{j},'Fontsize',12,'fontweight','bold')
axis([-1 T-1 -inf inf])
xticks([0 4:4:T-1])
end    
    
% EME1
figure;
set(gcf,'color', 'white',...
        'PaperUnits','centimeters','PaperSize',[FigW FigH],...
        'PaperPosition',[0,0,FigW,FigH],'PaperPositionMode','manual',...
        'Units','centimeters',...
        'Position',[0,0,FigW,FigH]);
for j=1:9
subplot(3,3,j)
plottanda_b=eval(['100*' cellvars{j} '_b' shock ';']);                    
plot([-1:1:T-1], [0; plottanda_b(1:T)],'Linewidth',2);
hold on
plottanda_=eval(['100*' cellvars{j} '_' shock ';']);
plot([-1:1:T-1], [0; plottanda_(1:T)],'k--','Linewidth',2);
title(cellvarlabels{j},'Fontsize',12,'fontweight','bold')
axis([-1 T-1 -inf inf])
xticks([0 4:4:T-1])
end

% EME2
figure;
set(gcf,'color', 'white',...
        'PaperUnits','centimeters','PaperSize',[FigW FigH],...
        'PaperPosition',[0,0,FigW,FigH],'PaperPositionMode','manual',...
        'Units','centimeters',...
        'Position',[0,0,FigW,FigH]);
for j=1:8
subplot(3,3,j)
plottanda_b=eval(['100*' cellvars2{j} '_b' shock ';']);
plot([-1:1:T-1], [0; plottanda_b(1:T)],'Linewidth',2);
hold on
plottanda_=eval(['100*' cellvars2{j} '_' shock ';']);
plot([-1:1:T-1], [0; plottanda_(1:T)],'k--','Linewidth',2);
title(cellvarlabels2{j},'Fontsize',12,'fontweight','bold')
axis([-1 T-1 -inf inf])
xticks([0 4:4:T-1])
end


end

%% Preference shock

if strcmp(shock, 'vps')

% AE    
figure;
set(gcf,'color', 'white',...
        'PaperUnits','centimeters','PaperSize',[FigW FigH],...
        'PaperPosition',[0,0,FigW,FigH],'PaperPositionMode','manual',...
        'Units','centimeters',...
        'Position',[0,0,FigW,FigH]);
for j=1:7
subplot(3,3,j)
plottanda_b=eval(['100*' cellvars3{j} '_b' shock ';']);
plot([-1:1:T-1], [0; plottanda_b(1:T)],'Linewidth',2);
hold on
plottanda_=eval(['100*' cellvars3{j} '_' shock ';']);
plot([-1:1:T-1], [0; plottanda_(1:T)],'k--','Linewidth',2);
title(cellvarlabels3{j},'Fontsize',12,'fontweight','bold')
axis([-1 T-1 -inf inf])
xticks([-1 0 2:2:T-1])
end

    
% EME1
figure;
set(gcf,'color', 'white',...
        'PaperUnits','centimeters','PaperSize',[FigW FigH],...
        'PaperPosition',[0,0,FigW,FigH],'PaperPositionMode','manual',...
        'Units','centimeters',...
        'Position',[0,0,FigW,FigH]);
for j=1:9
subplot(3,3,j)
plottanda_b=eval(['100*' cellvars{j} '_b' shock ';']);                    
plot([-1:1:T-1], [0; plottanda_b(1:T)],'Linewidth',2);
hold on
plottanda_=eval(['100*' cellvars{j} '_' shock ';']);
plot([-1:1:T-1], [0; plottanda_(1:T)],'k--','Linewidth',2);
title(cellvarlabels{j},'Fontsize',12,'fontweight','bold')
axis([-1 T-1 -inf inf])
xticks([-1 0 2:2:T-1])
end

% EME2
figure;
set(gcf,'color', 'white',...
        'PaperUnits','centimeters','PaperSize',[FigW FigH],...
        'PaperPosition',[0,0,FigW,FigH],'PaperPositionMode','manual',...
        'Units','centimeters',...
        'Position',[0,0,FigW,FigH]);
for j=1:8
subplot(3,3,j)
plottanda_b=eval(['100*' cellvars2{j} '_b' shock ';']);
plot([-1:1:T-1], [0; plottanda_b(1:T)],'Linewidth',2);
hold on
plottanda_=eval(['100*' cellvars2{j} '_' shock ';']);
plot([-1:1:T-1], [0; plottanda_(1:T)],'k--','Linewidth',2);
title(cellvarlabels2{j},'Fontsize',12,'fontweight','bold')
axis([-1 T-1 -inf inf])
xticks([-1 0 2:2:T-1])
end


end



