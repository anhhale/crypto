function parameter = cali( )
%the following variable will be temp variable.
%Household
%----------------------------------------------------------------------
FRISCH     =  1;% inverse labor supply elasticity
CHI         = 8.0183;
%firms
%-----------------------------------------------------------------------
INVELAST =2.5;% inverse elasticity of investment
DELTA      = 0.025 ; % depreciation for capital
ALPHA        = 1 - 0.36;% labor share

THETAE =  0.8863;% target ROIC = 1.025 annulized 10% 

%commercial banks
%-----------------------------------------------------------------------

THETAC = 1-0.03; % target annual dividends to equity ratio =0.12
THETAS = 1-0.03;

%shadow banks
%-----------------------------------------------------------------------

%shock 
%-----------------------------------------------------------------------
RHOA         = 0.95 ; 
RHOS         = 0.97;
RHOMC        = 0;
RHOVK        = 0;
RHOWK        = 0.9;

%RHOMC        = 1;
%RHOVK        = 1;
%RHOWK        = 1;

%% Target historical average in the data
%VK     = (1-0.08)/0.08;
VK = 10;

BETA = 1/(1+0.75/100/4);

KAPPAB = VK/10^4;% take reference on JMCB paper

RCTARGET = 1/BETA - 0.08/100/4;%target PSID

rc = RCTARGET;

% Moments to target
Fc = 3.33/100;
bc_b = 2/3;
zc = 1/BETA + 0.03/4;%spread betweewn prime loan rate and government bonds 3%
ds_bs = 0.97;


GAMMAS = 0.097;
GAMMAC = 0.082;
THETA = 0.04; %wage share of top executives
SIGMA = 0.1192;

%% solve for steady state
rs = 1/BETA;
rp = 1/BETA;

q  = 1;
inv_k = 1-(1-DELTA);
a=1;
sigma = SIGMA;
vk    = VK;
rcl   = rc;
rk    = 1/BETA - (1-DELTA);

xfin = fsolve(@(x)  solvesb(exp(x(1)),exp(x(2)),exp(x(3)),exp(x(4)),rc,BETA,DELTA,SIGMA,VK,GAMMAC,GAMMAS,KAPPAB),[log(0.8) log(0.7) log(0.75) log(1.02)],optimset('TolFun',1e-18));

omegasbar = exp(xfin(1));
omegacbar = exp(xfin(2));
omegacbar1 = exp(xfin(3));
atilde    = exp(xfin(4));

%Firms
% Shadow banking
rsl = rs;

vs = log(omegasbar)/sigma+0.5*sigma;
Fs = normcdf(vs,0,1);
Hs = 1-normcdf(vs-sigma,0,1)-(1-normcdf(vs,0,1))*omegasbar;
Gs = (1-normcdf(vs,0,1))*omegasbar+(1-GAMMAS)*normcdf(vs-sigma,0,1);
H1s = -(1-normcdf(vs,0,1));
G1s = (1-normcdf(vs,0,1)) - GAMMAS*normpdf(vs,0,1)*1/sigma;

ns_bs = rsl/Gs/atilde - 1;
bs_ns = 1/ns_bs;
levs = 1/(1-Gs*atilde/rsl);

% Commercial banking

vc1 = log(omegacbar1)/sigma+0.5*sigma;
Fc1 = normcdf(vc1,0,1);
rcl = (1-Fc1)*(rc)+atilde*(1-GAMMAC)*normcdf(vc1-sigma,0,1);


vc = log(omegacbar)/sigma+0.5*sigma;
Fc = normcdf(vc,0,1);
Hc = 1-normcdf(vc-sigma,0,1)-(1-normcdf(vc,0,1))*omegacbar;
Gc = (1-normcdf(vc,0,1))*omegacbar+(1-GAMMAC)*normcdf(vc-sigma,0,1);
H1c = -(1-normcdf(vc,0,1));
G1c = (1-normcdf(vc,0,1)) - GAMMAC*normpdf(vc,0,1)*1/sigma;

nc_bc = rcl/Gc/atilde - 1;
bc_nc = 1/nc_bc;
%Gc*atilde*(nc+bc) = rcl*bc;
levc = 1/(1-Gc*atilde/rcl);
% nc_bc = 1/bc_nc;
%bc_nc = levc - 1;
dc_bc = 1 - 1/vk;

nc_ne = fzero(@(nc_ne) THETAE*Hs*levs*atilde + ALPHA*THETA*(1 + bc_nc*nc_ne + bs_ns*(1-nc_ne)) - 1,0.5,optimset('TolFun',1e-12));
ns_ne = 1 - nc_ne;

zs = omegasbar*atilde*(1 + 1/bs_ns);
zc = omegacbar*atilde*(1 + 1/bc_nc);
% (zs-1/BETA)*4
% (zc-1/BETA)*4
% Fc
% Fs
% 
% nc_ne
% bc_nc*nc_ne/(bc_nc*nc_ne + bs_ns*ns_ne)
% return

b_ne  = bc_nc*nc_ne + bs_ns*ns_ne;

dc_bc = 1 - 1/vk;

dc_y = dc_bc*bc_nc*nc_ne*1/(1 + b_ne)*(1/atilde);

k_y = (1-ALPHA)/rk*(1/atilde);

inv_y = inv_k*k_y;

c_y = 1 - inv_y;

PSID = (1 - BETA*rc)/(c_y/dc_y);

TRANSB = (1/VK - THETAC*(rcl*1 -  atilde*(nc_bc+1)*(1-GAMMAC)*(omegacbar1*(1-Fc1)+normcdf(vc1-sigma,0,1))));
TRANSS = (1- ds_bs - THETAS*(rsl*1 -  rs*ds_bs));



SIGA = 0.01;
SIGS = 0.01;
SIGF = 0;
SIGAI = 0;
parameter = [BETA ,DELTA ,ALPHA ,CHI ,FRISCH ,INVELAST ,    THETAE ,THETA ,PSID ,SIGMA ,THETAC ,TRANSB ,VK,GAMMAC ,GAMMAS ,KAPPAB,RCTARGET,THETAS,TRANSS,ds_bs];
end