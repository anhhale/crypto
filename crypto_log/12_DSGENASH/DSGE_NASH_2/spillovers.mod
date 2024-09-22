% Nispi Landi (2020): Capital Controls Spillovers, JIMF
% This file produces the IRFs of the model and performs the welfare analysis
% Author: Valerio Nispi Landi
% Date: 18/02/2021
% "z" denotes EME2, "s" denotes AE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Settings

% Specify the analysis. WELFARE=0: IRF analysis. WELFARE=1: welfare analysis
WELFARE=0;
% Specify who is the planner: 1 (EME1); 2 (EME2); 3 (AE); 4 (world); 5 (EME1+EME2)
planner=1;
% Specify the shock: vts: % vts: risk premium. vps: preference. all: both
SHK={'all'};  % robustness 5.1: SHK={'vps'}; 
% Specifiy the grids
grid=0.0:0.01:0.0;    % grid for phi
gridz=0:0.01:0.0; % grid for phiz
% Specify the value for phi and phiz in the IRF analysis
phivalue=0; phivaluez=0;
% Specify the risk premium elasticity
kappaD=0.001;  % robustness 5.3: kappaD=0.01;
% Specify the policy rule: cc_rule=1: baseline, cc_rule=0: alternative (robustness 5.6)
@#define cc_rule =  1
%If cc_rule=0, alternative=1 is the FX rate rule, alternative=0 is the KI rule
@#define alternative =0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Capital controls parameters and shocks standard deviations are set
if WELFARE==1 
phids=grid; phidzs=gridz;
else
phids=phivalue; phidzs=phivaluez;
end
if strcmp(SHK, 'vts')
srisk=0.01; spref=0;
elseif strcmp(SHK, 'vps')
srisk=0;    spref=0.136435;
elseif strcmp(SHK, 'all')
srisk=0.01;    spref=0.136435;          
end

welfmean=-1e8*ones(length(phids),length(phidzs)); % Matrix of welfare values for each parameter combinations
N=(length(phids)*length(phidzs));                 % Number of combinations
    
%% Endogenous variables
var
%EME1     EME2    AE     
Welf      Welfz   Welfs Welfw Welfeme             % welfare
c         cz      cs                              % consumption
b         bz      bs                              % nfa
lambda    lambdaz lambdas                         % marginal utility of consumption
h         hz      hs                              % labor
k         kz      ks                              % capital
y         yz      ys                              % output
r         rz      rs                              % interest rate
p         pz                                      % exchange rate vis a vis AE good (if it is higher, the rer appreciates vis a vis the AE good
p1        p2      p3                              % price of goods
i         iz      is                              % investment
w         wz      ws                              % wage
u         uz      us                              % rental rate of capital
tau       tauz                                    % capital control
rB1       rB2                                     % bank interest rate
reff      reffz                                   % effective interest rate (net of tau)
dep       depz                                    % real depreciation rate
dy        dyz     dys                             % external debt/GDP
                  bys                             % NFA/GDP
fay       fayz    fays                            % financial account/GDP
tby       tbyz    tbys                            % trade balance/GDP
gdpl      gdpzl   gdpsl                           % gross domestic product (in logs)           
                  thetas                          % risk-premium shock
                  psis                            % preference shifter
cl csl czl kl kzl ksl hl hzl hsl il izl isl  pl pzl % log variables 
verify                                            % check variable: it must be always 0
;
%% Exogenous variables
varexo 
vts                                              % risk premium shock
vps                                              % AE preference shock
;

%% Parameters
parameters 
% Parameters affecting the ss (from console.m)
alpha 
delta 
beta 
betas 
sigma 
phi
mu
n1 
n3 
n2 
nu1 
nu1z 
nu1s 
nu2 
nu2z 
nu2s 
nu3 
nu3z 
nu3s
Zs

% Parameters affecting the dynamics only
phid    % parameter in EME1 capital control rule  
phidz   % parameter in EME2 capital control rule  
kappaI  % capital adjustment cost
rho     % shock persistence
kappaD  % risk premium elasticity
stheta  % risk-premium shock standard deviation
spsi    % preference shock standard deviation

% Steady state of some variables
bss 
bzss 
kss 
kzss 
ksss 
css 
czss 
csss 
yss 
yzss 
ysss 
hss 
hzss 
hsss 
pss 
pzss 
Welfss 
Welfsss
Welfzss 
Welfwss
p1ss 
p2ss 
p3ss 
psisss 
lambdass 
lambdazss 
lambdasss
;
% Load parameters saved in console.m
load par;      

% Set parameters
set_param_value ('alpha',alpha); 
set_param_value ('beta',beta); 
set_param_value ('betas',betas); 
set_param_value ('mu',mu); 
set_param_value ('n1',n1); 
set_param_value ('n2',n2); 
set_param_value ('delta',delta); 
set_param_value ('sigma',sigma);
set_param_value ('phi',phi); 
set_param_value ('bss',b); 
set_param_value ('bzss',bz); 
set_param_value ('kss',k); 
set_param_value ('kzss',kz);   
set_param_value ('Zs',Zs);
set_param_value ('ksss',ks); 
set_param_value ('psisss',psis);
set_param_value ('css',c); 
set_param_value ('czss',cz);
set_param_value ('csss',cs);
set_param_value ('yss',y);
set_param_value ('yzss',yz); 
set_param_value ('ysss',ys);
set_param_value ('hss',h); 
set_param_value ('hzss',hz); 
set_param_value ('hsss',hs);
set_param_value ('p1ss',p1); 
set_param_value ('p2ss',p2); 
set_param_value ('p3ss',p3);
set_param_value ('pss',p); 
set_param_value ('pzss',pz); 
set_param_value ('Welfwss',Welfw);
set_param_value ('Welfss',Welf);  
set_param_value ('Welfzss',Welfz);  
set_param_value ('Welfsss',Welfs);
set_param_value ('nu1',nu1); 
set_param_value ('nu2',nu2); 
set_param_value ('nu1z',nu1z);
set_param_value ('nu2z',nu2z); 
set_param_value ('nu1s',nu1s); 
set_param_value ('nu2s',nu2s);
set_param_value ('kappaD',kappaD);
lambdass=(css-1/(1+phi)*(hss)^(1+phi))^(-sigma);    
lambdazss=(czss-1/(1+phi)*(hzss)^(1+phi))^(-sigma); 
lambdasss=psisss*(csss-1/(1+phi)*(hsss)^(1+phi))^(-sigma); 
n3=1-n1-n2;
nu3=1-nu1-nu2; 
nu3z=1-nu1z-nu2z; 
nu3s=1-nu1s-nu2s;
kappaI=75;
rho=0.9;
stheta=srisk; 
spsi=spref;


% Optimal Policy loop
cc=0;                 % set the counter    
for kk=1:length(phids)
    phid=phids(kk);
for ww=1:length(phidzs)
    phidz=phidzs(ww);
    
%% Model equations
model;
% Households
lambda= (c- 1/(1+phi)*h^(1+phi)) ^(-sigma);                            %(1)   
lambdaz=(cz-1/(1+phi)*hz^(1+phi))^(-sigma);
lambdas=(cs-1/(1+phi)*hs^(1+phi))^(-sigma)*psis;

1=beta* lambda(1)/  lambda*  rB1*p/ (p(1)* (1-tau));                   %(2)
1=beta* lambdaz(1)/ lambdaz* rB2*pz/(pz(1)*(1-tauz));

1=beta* lambda(1)/lambda  *r;                                          %(3)
1=beta* lambdaz(1)/lambdaz*rz;
1=betas*lambdas(1)/lambdas*rs;

1+kappaI*(k/ k(-1)-1)= beta* lambda(1) /lambda *((1-delta+u(1)) -kappaI/2*(k(1)/ k-1) ^2+kappaI*k(1)/ k* (k(1)/ k-1)); %(4)
1+kappaI*(kz/kz(-1)-1)=beta* lambdaz(1)/lambdaz*((1-delta+uz(1))-kappaI/2*(kz(1)/kz-1)^2+kappaI*kz(1)/kz*(kz(1)/kz-1));
1+kappaI*(ks/ks(-1)-1)=betas*lambdas(1)/lambdas*((1-delta+us(1))-kappaI/2*(ks(1)/ks-1)^2+kappaI*ks(1)/ks*(ks(1)/ks-1));

k= (1-delta)*k(-1)+ i;                                                 %(5)
kz=(1-delta)*kz(-1)+iz;
ks=(1-delta)*ks(-1)+is;

h^(phi)= w;                                                            %(6)
hz^(phi)=wz;
hs^(phi)=ws;

% Firms
k (-1)=alpha*p1/p *y / u;                                              %(7)
kz(-1)=alpha*p2/pz*yz/uz; 
ks(-1)=alpha*p3   *ys/us;

h= (1-alpha)*p1/p *y /w;                                               %(8)
hz=(1-alpha)*p2/pz*yz/wz;
hs=(1-alpha)*p3   *ys/ws;

y= k(-1) ^(alpha)*h^ (1-alpha);                                        %(9)
yz=kz(-1)^(alpha)*hz^(1-alpha);
ys=ks(-1)^(alpha)*hs^(1-alpha)*Zs;

% Resource constraint
p*c  +p*i+  p* kappaI/2*k(-1)* (k/ k(-1)-1) ^2+b = p1* y +rB1(-1)*b(-1); %(10)
pz*cz+pz*iz+pz*kappaI/2*kz(-1)*(kz/kz(-1)-1)^2+bz= p2* yz+rB2(-1)*bz(-1); 
   cs+   is+   kappaI/2*ks(-1)*(ks/ks(-1)-1)^2+bs= p3* ys-n1/n3*rB1(-1)*b(-1)-n2/n3*rB2(-1)*bz(-1);

% Price level
p^(1-mu) =nu1* p1^(1-mu)+nu2* p2^(1-mu)+nu3*p3^(1-mu);                %(11)
pz^(1-mu)=nu1z*p1^(1-mu)+nu2z*p2^(1-mu)+nu3z*p3^(1-mu);
1        =nu1s*p1^(1-mu)+nu2s*p2^(1-mu)+nu3s*p3^(1-mu);  

%Policy
@#if cc_rule
tau= phid *(dy);                                                      %(12)
tauz=phidz*(dyz);
@#else
@#if alternative
tau= phid *log(p/pss);
tauz=phidz*log(pz/pzss);
@#else
tau= -phid *(b- b(-1)) /(p1*y);                                                  
tauz=-phidz*(bz-bz(-1))/(p2*yz);
@#endif
@#endif

% Bank interest rate
rB1=rs-kappaD*n1/n3*(b -bss)+thetas;                                  %(13)         
rB2=rs-kappaD*n2/n3*(bz-bss)+thetas;

% Stochastic process
thetas=rho*thetas(-1)-vts;                                            %(37)
log(psis/psisss)=rho*log(psis(-1)/psisss)-vps;                        %(38)

% Market clearing
y= nu1*(p/p1)^mu*(c+i+kappaI/2*k(-1)* (k/ k(-1)-1) ^2)+n2/n1*nu1z*(pz/p1)^mu*(cz+iz+kappaI/2*kz(-1)* (kz/ kz(-1)-1) ^2)+n3/n1*nu1s*(1/p1)^mu*(cs+is+kappaI/2*ks(-1)* (ks/ ks(-1)-1) ^2); %(39)
yz=n1/n2*nu2*(p/p2)^mu*(c+i+kappaI/2*k(-1)* (k/ k(-1)-1) ^2)+nu2z*(pz/p2)^mu*(cz+iz+kappaI/2*kz(-1)* (kz/ kz(-1)-1) ^2)+n3/n2*nu2s*(1/p2)^mu*(cs+is+kappaI/2*ks(-1)* (ks/ ks(-1)-1) ^2); %(40)
n1*b+n2*bz+n3*bs=0;                                                   %(41)

% Definitions
dy=-b/(p1*y); 
dyz=-bz/(p2*yz); 
dys=-(bs)/(p3*ys); 
bys=(bs)/(p3*ys);  
fay=-(b-b(-1))/(p1*y); 
fayz=-(bz-bz(-1))/(p2*yz); 
fays=(bs-bs(-1))/(p3*ys);
tby= (b/ p -rB1(-1)* b(-1) /p) /(p1*y);       
tbyz=(bz/pz-rB2(-1)* bz(-1)/pz)/(p2*yz); 
tbys=(bs+n1/n3*rB1(-1)*b(-1)+n2/n3*rB2(-1)*bz(-1))/(p3*ys); 
Welf= log(c-  1/(1+phi)*h^(1+phi))+beta* Welf(1);     
Welfz=log(cz- 1/(1+phi)*hz^(1+phi))+beta* Welfz(1);
Welfs=psis*log(cs- 1/(1+phi)*hs^(1+phi))+betas*Welfs(1);
Welfw=n1*log(c-1/(1+phi)*h^(1+phi))+n2*log(cz-1/(1+phi)*hz^(1+phi))+n3*psis*log(cs-1/(1+phi)*hs^(1+phi))+beta*Welfw(1);
Welfeme=(n1*Welf+n2*Welfz)/(n1+n2);
reff =rB1*p/p(1);
reffz=rB2*pz/pz(1);
dep=p/p(1); depz=pz/pz(1);

% Logarithms
cl=log(c); csl=log(cs); czl=log(cz); kl=log(k); kzl=log(kz); ksl=log(ks);
hl=log(h); hzl=log(hz); hsl=log(hs); il=log(i); izl=log(iz); isl=log(is);
gdpl=log(p1*y/p); gdpzl=log(p2*yz/pz); gdpsl=log(p3*ys);
pl=log(p); pzl=log(pz);

% Check
verify=ys-(n1/n3*nu3*(p/p3)^mu*(c+i+kappaI/2*k(-1)* (k/ k(-1)-1) ^2)+n2/n3*nu3z*(pz/p3)^mu*(cz+iz+kappaI/2*kz(-1)* (kz/ kz(-1)-1) ^2)+nu3s*(1/p3)^mu*(cs+is+kappaI/2*ks(-1)* (ks/ ks(-1)-1) ^2));

end;

%% Steady State
steady_state_model;
y=yss; 
yz=yzss; 
ys=ysss;
c=css;  
cz=czss; 
cs=csss; 
i=delta*kss; 
iz=delta*kzss; 
is=delta*ksss;
h=hss; 
hz=hzss; 
hs=hsss;
lambda=lambdass;    
lambdaz=lambdazss; 
lambdas=lambdasss; 
k=kss; 
kz=kzss;  
ks=ksss;
bs=-(n1*bss+n2*bzss)/n3;      
b=bss; 
bz=bzss;      
w=(1-alpha)*p1ss/pss*yss/hss; 
wz=(1-alpha)*p2ss/pzss*yzss/hzss; 
ws=(1-alpha)*p3ss*ysss/hsss;
u=1/beta-(1-delta);  
uz=1/beta-(1-delta);  
us=1/betas-(1-delta);
r=1/beta;  
rz=1/beta; 
rs=1/betas; 
Welf= Welfss;    
Welfz=Welfzss;
Welfs=Welfsss;
Welfw=Welfwss;
Welfeme=Welfss;
p1=p1ss; p2=p2ss; p3=p3ss;
p=pss; pz=pzss;
rB1=1/beta;
rB2=1/beta;
reff =1/beta;
reffz=1/beta;
psis=psisss;
dep=1; depz=1;
cl=log(css);
csl=log(csss);
czl=log(czss);
kl=log(kss);
kzl=log(kzss);
ksl=log(ksss);
hl=log(hss);
hzl=log(hzss);
hsl=log(hsss);
il=log(delta*kss);
izl=log(delta*kzss);
isl=log(delta*ksss);
dy=-bss/(p1ss*yss);
dyz=-bzss/(p2ss*yzss);
dys=(n1/n3*bss+n2/n3*bzss)/(p3ss*ysss); 
gdpl=log(p1ss*yss/pss);
gdpzl=log(p2ss*yzss/pzss);
gdpsl=log(p3ss*ysss);
yl=log(yss); yzl=log(yzss);
ysl=log(ysss);
pl=log(pss);
pzl=log(pzss);
tby=(bss/ pss -1/beta*bss /pss)/(p1ss*yss);       
tbyz=(bzss/pzss-1/beta* bzss/pzss)/(p2ss*yzss); 
tbys=(-(n1*bss+n2*bzss)/n3+n1/n3*1/beta*bss+n2/n3*1/beta*bzss)/(p3ss*ysss); 
tau=0;
tauz=0;
bys=0;
fay=0;
fayz=0;
fays=0;
thetas=0;
verify=0;
 
end;

steady;
check;

%% Shocks
shocks;
var vts; stderr  stheta;   % risk premium
var vps;  stderr  spsi;    % preference
end;

%% Stochastic simulation

if WELFARE==0;  % IRF analysis
stoch_simul(irf=100,order=1, hp_filter=1600,nofunctions,nomoments,nograph,noprint);
else;           % welfare analysis
stoch_simul(irf=0,order=2,pruning,nograph,nomoments,nofunctions,nocorr,noprint,graph_format=none);
welfmean(kk,ww)=oo_.dr.ys(planner)+0.5*oo_.dr.ghs2(oo_.dr.inv_order_var(planner)); % welfare value
cc=cc+1;                                                                           % counter
state=100*cc/N                                                                     % percentage of completion
end;
end;phids
end;


if WELFARE==1;

[welf_opt,ind] = max(welfmean(:));                          % maximum welfare
welf_opt
[dd,ee] = ind2sub(size(welfmean),ind);
phid_opt=phids(dd)                                          
phidz_opt=phidzs(ee)                                                    
gain = cons_equiv(welf_opt,welfmean(1,1),css,hss,phi,beta) % consumption gain


end

