%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code to replicate the baseline model of:
% Monetary policy spillovers, global commodity prices and cooperation
% by A. Filardo, M. Lombardi, C. Montoro and M. Ferrari
% Paper: https://www.bis.org/publ/work696.pdf
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


var NTY NY NC NQ NOY NR G NCY NOC
    NPI NPIY DD NN NMC DELTA NWP NA NL
    NO NX NZ NETA Z OMEGA A ERR WELF
    NPE RER TPE OBJQ MRKQ
;


varexo EZ, EOMEGA, EA, EG, EERR;

parameters  GAMMA ALPHA NU PHI_HEAD PHI_CORE PHI_COMM RHO_Z RHO_OMEGA RHO_A RHO_ERR SZ SOMEGA SA SERR     
ES EPS BETA THETA ZS AS RHO_G SG PHI_BENCH PHI_NAT PHI_EFF PHI_Y PHI_Yn PHI_Yfe MRKss Q_COMM Q_Y Q_RER;

% Main parameters
GAMMA=0.2;    %foreign share in CPI
ALPHA = 0.2;  %share of commodity in production
NU    = 0.5;  %elasticity of labor
EPS   = 7.67; %elasticity of substitution (good market)
BETA  = 0.99; %fiscount factor
THETA = 0.75; %clavo probability  

%Monetary policy parameters; reactions to headline inflation, core inflation,
%commodity price and relevant output gap
PHI_HEAD = 0;
PHI_CORE = 1.5;
PHI_COMM = 0.00;
PHI_Yn    = 0.0;
PHI_Yfe   = 0.0;
PHI_Y     = 0.0;

%Select model based on natural rate and output gap (benchmark, natural, 
%efficient) based on equations 3.2 to 3.9

PHI_BENCH = 0;
PHI_NAT   = 0;
PHI_EFF   = 1;

% Parameters steady state

AS  = 1;
ZS  = 1;
ES  = 0.01;

% Parameters shocks
%AR components
RHO_Z 	   = 0.5;  %commodity productivity shock
RHO_OMEGA  = 0.5;   %number of fringe exporters shock  
RHO_A      = 0.95;   %TFP process (commodity importer)   
RHO_G      = 0.5;         %Consumers' preference shock (commodity importer)
RHO_ERR    = 0.5;         %Mon. policy shock (commodity importer)  
%standard deviations and autocorrelations
SZ   	   = 0.01;
SOMEGA     = 0.01;
SA         = 0.01;
SG         = 0.01;
SERR       = 0.01;
%Markup rule on commodity price
MRKss=1;
Q_COMM=0;
Q_Y=0;
Q_RER=0;


% Parameters signal-extraction problem


model;
#XI=1-GAMMA;
#MU    = EPS/(EPS-1);    %markup
#KAPPA = (1-THETA)/THETA*(1-BETA*THETA);
#NOMEGAS =  steady_state(ES)* steady_state(NY)/ steady_state(ZS);

% Aggregate demand

//TYS*(TY+Y) = CS*C + QS*OYS*(Q+OY)+G; (1)
NTY*NY  = (NC + NQ*NOY); 

//Euler condition (commodity importer) (2)
//C - C(+1)  = -(R-PI(+1));
1 = BETA*NR*exp(G(+1))/exp(G)*(NC(+1)/NC)^(-1)/NPI(1);

//Demand for goods (3)
//C = (1-GAMMA)*CY+GAMMA*OC;
NC   = NCY^(1-GAMMA)*(NOC^GAMMA);

//Relative price (4)
//0 = (1-GAMMA)*TY+GAMMA*Q;
1 = NTY^(1-GAMMA)*NQ^GAMMA;


% Aggregate supply 

//CPI (5)
//PI = (1-GAMMA)*PIY+GAMMA*(Q-Q(-1)+PI);
NPI = NPIY^(1-GAMMA)*(NQ/NQ(-1)*NPI)^GAMMA;

//Recursive Phillips curve (6) (7) (8) (9)
//PIY = KAPPA*MC + BETA*PIY(+1);
DD = NY/NC + THETA*BETA*(NPIY(+1)^(EPS-1)*DD(+1));
NN = MU*NY/NC*NMC + THETA*BETA*(NPIY(+1)^(EPS)*NN(+1));
THETA*(NPIY)^(EPS-1) = 1-(1-THETA)*(NN/DD)^(1-EPS);

DELTA = (1-THETA)*(NN/DD)^(-EPS) + THETA*DELTA(-1)*(NPIY)^EPS; 

//Marginal cost (10)
//MC = (1-ALPHA)*WP + ALPHA*Q-A;
NMC  = NWP^(1-ALPHA)*NQ^(ALPHA)/(NA*(1-ALPHA)^(1-ALPHA)*ALPHA^ALPHA);

% Labour market

//Supply of labor (11)
//WP = C + NU*L;
NWP = NC*NL^NU;

//Demand for labor (12)
//L = MC - WP +Y;
NL =(1-ALPHA)*NMC/NWP*NY*DELTA;


% Monetary policy

//Standard taylor rule without expectations (13)
//NR = ((NR(-1))^(PHI_HEAD))*(((1/BETA)  * (NPIY^PHI_CORE) * ((NQ/NQ(-1))^PHI_COMM) * (NY/steady_state(NY))^PHI_Y )^(1-PHI_HEAD))* exp(ERR);
NR = ((1/BETA) * (NPI^PHI_HEAD) * (NPIY^PHI_CORE) * ((NQ/NQ(-1))^PHI_COMM) * (NY/steady_state(NY))^PHI_Y )* exp(ERR);


% Commodity sector / countries

//Commodity demand (14)
//OS*O = OCS*OC + OYS*OY - XS*X;
NO = NOC + NOY - NX;

//Commodity consumption demand
//OC = C - Q; (15)
NOC  = GAMMA*NC/NQ;

//Commodity production demand (16)
//OY = MC + Y - Q;
NOY = ALPHA*NMC/NQ*NY*DELTA;

//Supply of the fringe (17)
//X  = OMEGA + Z + Q;
NX = NOMEGAS*exp(OMEGA)*NQ*NZ;

//Commodity price (18)
//Q  = - Z + XI/(XI-ETAS)*ETA ;
NQ/MRKQ=((1/NZ)*(1/(1-(NETA/XI))))^(XI);

//Commodity markup (19)
//NETA = NO/sqrt(NO^2 + 4*(NO+NX)*NX);
NETA=NO/(NO+2*NX);


% EXOGENOUS VARIABLES

//Commodity price shock (i.e. if negative price of commodity increases) (20)
Z = RHO_Z*Z(-1) - EZ; 
//Fringe size shock (21)
OMEGA = RHO_OMEGA*OMEGA(-1) + EOMEGA;
//TFP shock (commodity importer) (22)
A = RHO_A*A(-1) + EA;
//Monetary policy shock (commodity importer) (23)
ERR = RHO_ERR*ERR(-1) + EERR;
//Government spending (demand) shock (commodity importer) (24)
G= RHO_G*G(-1) + EG;

//NOMEGA = NOMEGAS*exp(OMEGA); //OMEGA = ln(NOMEGA/NOMEGAS); (25)
A= ln(NA); 
Z = ln(NZ);

% WELFARE FUNCTION
WELF = ((ln(NC)-NL^(1+NU)/(1+NU))*exp(G))+BETA*WELF(+1);

%Profits for the exporter
//Profit of commodity exporter
NPE = NO*(NQ) - NO*(1/NZ);
//^(1/(1-GAMMA))
//RER
RER = NC/NPE;
TPE = (1/RER)*NPE + BETA*TPE(+1);
//Objective commondity price stability
OBJQ = -(NQ-steady_state(NQ))^2;
//MRKRULE
MRKQ = MRKss*((NQ/NQ(-1))^Q_COMM) * ((NY/(NY(-1)))^Q_Y)  * ((RER/steady_state(RER))^Q_RER) ;
end;


steady ;
check;
model_diagnostics;

shocks;
var EZ; stderr SZ;
var EOMEGA; stderr SOMEGA;
var EA; stderr SA;
var EG; stderr SG;
var EERR; stderr SERR;
end;

%SIMULATION
//stoch_simul(nograph,noprint,order=1);
stoch_simul(nograph,noprint,order=2,pruning,AR=0,IRF=0);
