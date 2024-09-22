clear all; clc;  close all; 
% Nispi Landi (2020): Capital Controls Spillovers, JIMF
% This file computes the steady state of the baseline model using find_steady.m
% Author: Valerio Nispi Landi
% Date: 18/02/2021
% "z" denotes EME2, "s" denotes AE

%% Parameters
alpha=0.36;             % share of capital in production
mu=1.5;                 % elasticity of subtitution domestic-foreign
beta=0.99;              % EME discount factor
betas=0.99;             % AE discount factor
delta=0.015;            % depreciation rate
sigma=1;                % relative risk aversion
phi=1;                  % inverse of Frisch elasticity
n1=0.405;               % EME1 population
n2=0.405;               % EME2 population
n3=1-n1-n2;             % AE population
% Robustness 5.2
%n1=0.8*0.81; 
%n2=0.2*0.81; 
%n3=1-n1-n2;
eta=0.15;              % EME1 openness
etaz=0.15;             % EME2 openness
etas=0.15;             % AE openness
% Robustness 5.4
%eta=0.3; 
%etaz=0.3; 
%etas=0.3;
tau=1-beta/betas;    % EME1 capital control
tauz=1-beta/betas;   % EME2 capital control
dratio=0;            % EME1 debt/GDP ratio
dratioz=0;           % EME2 debt/GDP ratio
ypcratio=3.81;       % AE GDP per capita / EME GDP per capita

emeshare=0.5;        % EME1+EME2 share for weight in the consumption bundle
aeshare=1-emeshare;  % AE share for weight in the consumption bundle

% In footnote 12 of the published paper, I write "The resulting GDP share
% of AE is 50%". This is the value used in the code (emeshare=0.5) also to
% compute the nu parameters (equations 29-30-31): all the nu in the paper are computed
% using emeshare=0.5. But emeshare=0.5 is an approximated value. The
% share of EME1+EME GDP in the model is acutally 0.5281 
%(under the values of n1,n2,n3 and ypcratio given above) and you can compute
% it using the following commented formula:
% emeshare=(n1+n2)/(n1+n2+n3*ypcratio);     
% aeshare=1-emeshare;
% The nu paramters under this formula change only in the third decimal. Results barely change


% Coefficient
nu2=eta*emeshare*n2/(n1+n2);        % EME2 good weight in EME1 bundle
nu3=eta*aeshare;                    % AE good weight in EME1 bundle 
nu1=1-nu2-nu3;                      % EME1 good weight in EME1 bundle
nu1z=etaz*emeshare*n1/(n1+n2);      % EME1 good weight in EME2 bundle
nu3z=etaz*aeshare;                  % AE good weight in EME2 bundle
nu2z=1-nu1z-nu3z;                   % EME2 good weight in EME2 bundle
nu1s=etas*emeshare*n1/(n1+n2);      % EME1 good weight in AE bundle
nu2s=etas*emeshare*n2/(n1+n2);      % EME2 good weight in AE bundle
nu3s=1-nu2s-nu1s;                   % AE good weight in AE bundl2


%% Steady-Stade

% interest rates
r1=1/beta; 
r2=1/beta; 
rs=1/betas;
% renatl rate of capital
u=1/beta-1+delta; 
uz=1/beta-1+delta; 
us=1/betas-1+delta;

options = optimoptions('fsolve','MaxFunEvals',300000,'MaxIter',30000,'TolFun',1e-15);
load('x0');         % Initial values

x = fsolve(@(xx) find_steady(xx,alpha,mu,delta,beta,phi,dratio,dratioz,u,uz,us,n1,n3,n2,ypcratio,nu1,nu1z,nu1s,nu2,nu2z,nu2s,nu3,nu3z,nu3s),x0,options);

% consumption
c=x(1); cz=x(2); cs=x(3);
% labor
h=x(4); hz=x(5); hs=x(6);
% real exchange rate vis a vis AE
p=x(7); pz=x(8);
% capital
k=x(9); kz=x(10); ks=x(11);
% production
y=x(12); yz=x(13); ys=x(14);
% price of goods
p1=x(15); p2=x(16);p3=x(17);
% nfa
b=x(18); bz=x(19); bs=x(20);
Zs=x(21);                                                       % AE TFP
lambda=(c- 1/(1+phi)*h^(1+phi)) ^(-sigma);                      % EME1 marginal utility of consumption
psis=n1*lambda/(n3*((cs- 1/(1+phi)*hs^(1+phi)) ^(-sigma))*p);   % AE preference shifter
lambdas=psis*(cs- 1/(1+phi)*hs^(1+phi)) ^(-sigma);              % AE marginal utiluty of consumption
% Welfare
Welf= log(c- 1/(1+phi)*h^(1+phi))/(1-beta);     
Welfz=log(cz- 1/(1+phi)*hz^(1+phi))/(1-beta);
Welfs=psis*log(cs- 1/(1+phi)*hs^(1+phi))/(1-betas);
% World welfare
Welfw=n1*Welf+n2*Welfz+n3*Welfs;
% Import share
mshare_gdp  =(p2^(1-mu)*nu2*p^mu+p3^(1-mu)*nu3*p^mu)*(c+delta*k)/(p1*y);
msharez_gdpz=(p1^(1-mu)*nu1z*pz^mu+p3^(1-mu)*nu3z*pz^mu)*(cz+delta*kz)/(p2*yz);
mshares_gdpz=(p2^(1-mu)*nu2s+p1^(1-mu)*nu1s)*(cs+delta*ks)/(p3*ys);
% Update initial value and save it
x0=real(x);
save x0 x0;

% Save parameters for Dynare
save par alpha delta beta betas tau tauz sigma phi n1 n2 Zs psis mu...
    b bz k kz ks c cz cs Zs y yz ys h hz hs p pz p1 p2 p3 ...
    nu1 nu1z nu1s nu2 nu2z nu2s nu3 nu3z nu3s Welfw Welf Welfs Welfz