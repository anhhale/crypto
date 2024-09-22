function parameter = cali( )
%the following variable will be temp variable.
%Household
%----------------------------------------------------------------------
FRISCH     =  1;% inverse labor supply elasticity
CHI        =          8.0313;
HABIT     = 0;

%firms
%-----------------------------------------------------------------------
INVELAST = 2.5;% inverse elasticity of investment
DELTA      = 0.025 ; % depreciation for capital
ALPHA        = 1 - 0.36;% labor share

THETAE =  0.8863;% target ROIC = 1.025 annulized 10% 

%commercial banks
%-----------------------------------------------------------------------

THETAC = 1-0.03; % target annual dividends to equity ratio =0.12

%shadow banks
%-----------------------------------------------------------------------

%shock 
%-----------------------------------------------------------------------
RHOA         = 0.95 ; 
RHOS         = 0.97;
RHOMC        = 0;
RHOVK        = 0;
RHOWK        = 0.9;

%% Target historical average in the data
VK = 10;

BETA = 1/(1+0.75/100/4);

KAPPAB = 0.001;%11.06/VK^4;
%;% take reference on JMCB paper

RCTARGET = 1/BETA - 0.08/100/4;%target PSID

%RCTARGET = 1.0117;
rc = RCTARGET;


Fc = 3.9/100;% use sigma to target
bc_b = 2/3;%target THETA
zc = 1/BETA + 0.03/4;%spread betweewn prime loan rate and government bonds, use GAMMAC to target   1.0099

GAMMAS = 0.097;
GAMMAC = 0.082;
SIGMA = 0.28; % use TRANSB to target corporate leverage = 2
THETA = 0.04; %share of top executives in 

%% Calibrate PSID and TRANSB

rs = 1/BETA;
rp = 1/BETA;

q  = 1;
inv_k = 1-(1-DELTA);
a=1;
sigma = SIGMA;
vk    = VK;
rcl   = rc;
rk    = 1/BETA - (1-DELTA);

xfin = fsolve(@(x)  solvesb(exp(x(1)),exp(x(2)),exp(x(3)),rc,BETA,DELTA,SIGMA,VK,GAMMAC,GAMMAS,KAPPAB),[0 0 0],optimset('TolFun',1e-18));
omegasbar = exp(xfin(1));
omegacbar = exp(xfin(2));
atilde    = exp(xfin(3));

%Firms
% Shadow banking
vs = log(omegasbar)/sigma+0.5*sigma;
Fs = normcdf(vs,0,1);
Hs = 1-normcdf(vs-sigma,0,1)-(1-normcdf(vs,0,1))*omegasbar;
Gs = (1-normcdf(vs,0,1))*omegasbar+(1-GAMMAS)*normcdf(vs-sigma,0,1);
H1s = -(1-normcdf(vs,0,1));
G1s = (1-normcdf(vs,0,1)) - GAMMAS*normpdf(vs,0,1)*1/sigma;

%Gs*atilde*(ns + bs) = rs*bs;
levs = 1/(1-Gs*atilde/rs);
bs_ns = levs - 1;


vc = log(omegacbar)/sigma+0.5*sigma;
Fc = normcdf(vc,0,1);
Hc = 1-normcdf(vc-sigma,0,1)-(1-normcdf(vc,0,1))*omegacbar;
Gc = (1-normcdf(vc,0,1))*omegacbar+(1-GAMMAC)*normcdf(vc-sigma,0,1);
%H1c = (-normpdf(vc-sigma)-(1-normcdf(vc))*omegacbar*sigma+normpdf(vc)*omegacbar)/sigma/omegacbar;
H1c = -(1-normcdf(vc,0,1));
G1c = (1-normcdf(vc,0,1)) - GAMMAC*normpdf(vc,0,1)*1/sigma;

%Gc*atilde*(nc + bc) = rcl*bc;
levc = 1/(1-Gc*atilde/rcl);
bc_nc = levc - 1;

nc_ne = fzero(@(nc_ne) THETAE*Hs*levs*atilde + ALPHA*THETA*(1 + bc_nc*nc_ne + bs_ns*(1-nc_ne)) - 1,0.5,optimset('TolFun',1e-12));
ns_ne = 1 - nc_ne;

zs = omegasbar*atilde*(1 + 1/bs_ns);
zc = omegacbar*atilde*(1 + 1/bc_nc);
% (zs-1/BETA)*4 % target zc = 1/BETA + 0.03/4;%spread betweewn prime loan rate and government bonds, use GAMMAC to target   1.0099
% (zc-1/BETA)*4
% Fc % Fc = 3.33/100
% Fs
% 
% nc_ne
% bc_nc*nc_ne/(bc_nc*nc_ne + bs_ns*ns_ne)
% atilde
% return

b_ne  = bc_nc*nc_ne + bs_ns*ns_ne;

dc_bc = 1 - 1/vk;

dc_y = dc_bc*bc_nc*nc_ne*1/(1 + b_ne)*(1/atilde);

k_y = (1-ALPHA)/rk*(1/atilde);

inv_y = inv_k*k_y;

c_y = 1 - inv_y;


lambdaxdc = dc_y/c_y*((1 - HABIT)^(-1)-BETA*HABIT*(1-HABIT)^(-1));
PSID = (1 -  BETA*rc)*lambdaxdc;
TRANSB = (1/VK - THETAC*(rcl*1 - rc*dc_bc));

lambdaxy = 1/c_y*((1 - HABIT)^(-1)-BETA*HABIT*(1-HABIT)^(-1));
CHI = (1-THETA)*ALPHA*(1/atilde)*lambdaxy/(1/3)^(FRISCH+1);

SIGA = 0.01;
SIGS = 0.01;
SIGF = 0;
SIGAI = 0;
parameter = [BETA ,DELTA ,ALPHA ,CHI ,FRISCH ,INVELAST ,    THETAE ,THETA ,PSID ,SIGMA ,THETAC ,TRANSB ,VK,GAMMAC ,GAMMAS ,KAPPAB,RCTARGET,HABIT];
%    RHOA ,RHOMC ,RHOVK ,RHOWK ,RHOTAU ,TAU,MUZ ,PSID, Rr,RHOS,TRANSB,GSS,SIGA,SIGS,SIGF,SIGAI];


%end