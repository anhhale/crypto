% benchmark economy with unsegmented credit market

var
lambda	c	h	inv // household
y k ne atilde b// firms
nc Hc bc Fc vc H1c Gc omegacbar rc G1c
ns Hs bs Fs vs H1s Gs omegasbar rs G1s
dc kb rcl // commercial banking
w	rp  	q  rk //prices
a vk gdp sigma  utility totutility fshock ai
bsshare levtot levs levc car lnb zs zc lngdp Ftot bty dcar totutility1 ;

varexo ea esigma efshock eai;
parameters BETA	DELTA	ALPHA	CHI	FRISCH	INVELAST
THETAE	THETA PSID SIGMA		
THETAC	TRANSB VK GAMMAC	GAMMAS				
KAPPAB
GDPSS BSS BCSS  
RHOA RHOS RHOF RHOAI
SIGA SIGS SIGF SIGAI 
RHOVK  MCY VKY RCTARGET CSS HSS DCSS HABIT;

%load param 
parameter=cali;
BETA=parameter(1);
DELTA=parameter(2); 
ALPHA=parameter(3);
CHI=parameter(4);
FRISCH=parameter(5);
INVELAST=parameter(6);
THETAE=parameter(7);
THETA=parameter(8);
PSID=parameter(9);
SIGMA=parameter(10);
THETAC =parameter(11);
TRANSB =parameter(12);
VK =parameter(13);
GAMMAC =parameter(14);
GAMMAS =parameter(15);
KAPPAB = parameter(16);
RCTARGET = parameter(17);
HABIT = parameter(18);

GDPSS = solvegdp(BETA,DELTA,ALPHA,THETAE,THETA,RCTARGET,SIGMA,THETAC,VK,GAMMAC,GAMMAS,KAPPAB,CHI,FRISCH,HABIT );
BSS   =  solveb(BETA,DELTA,ALPHA,THETAE,THETA,RCTARGET,SIGMA,THETAC,VK,GAMMAC,GAMMAS,KAPPAB,CHI,FRISCH,HABIT );
BCSS   = 1;
CSS   =solvec(BETA,DELTA,ALPHA,THETAE,THETA,RCTARGET,SIGMA,THETAC,VK,GAMMAC,GAMMAS,KAPPAB,CHI,FRISCH,HABIT );
HSS   = solveh(BETA,DELTA,ALPHA,THETAE,THETA,RCTARGET,SIGMA,THETAC,VK,GAMMAC,GAMMAS,KAPPAB,CHI,FRISCH,HABIT);
DCSS   = solvedc(BETA,DELTA,ALPHA,THETAE,THETA,RCTARGET,SIGMA,THETAC,VK,GAMMAC,GAMMAS,KAPPAB,CHI,FRISCH,HABIT );


RHOA = 0.95;
RHOS  = 0.97;
RHOAI = 0.91;
RHOF = 0.82;

SIGA = 0.01;
SIGS = 0.01;
SIGAI = 0.0;
SIGF = 0.0;

MCY = 0;
VKY = 0;
RHOVK = 0;

load calishock;
SIGA = SIG(1);
SIGS = SIG(2); 


model;
%% 1-5 Household
//1.Marginal Utility of Consumption
lambda = 1/(c-HABIT*c(-1))-BETA*HABIT/(c(+1)-HABIT*c);

//2.Labor Supply
w * lambda = CHI*h^(FRISCH);
//3.Euler-equation
1 =  BETA* lambda(+1)/lambda*rc+PSID/lambda/dc;
1 =  BETA* lambda(+1)/lambda*rs;
1 =  BETA* lambda(+1)/lambda*rp;

//4.Investment Euler equation
1=q*(1-INVELAST/2*( ai* inv/inv(-1) - 1 )^2-INVELAST*(ai*inv/inv(-1) - 1 )*(ai*inv/inv(-1)))+BETA* lambda(+1)/lambda*q(+1)*INVELAST*(ai(+1)*inv(+1)/inv-1)*ai(+1)*(inv(+1)/inv)^2;

q = BETA*lambda(+1)/lambda*(q(+1)*(1-DELTA)+rk(+1));

//5.Capital law of motion
k  = (1-DELTA)*k(-1) +(1-INVELAST/2*(ai*inv/inv(-1) - 1 )^2) *inv  ;

%% 6-11 Firms
y = a*(k(-1))^(1-ALPHA)*h^((1-THETA)*ALPHA);

w*h = (1-THETA)*(ALPHA)*(ne(-1) + b);
rk*k(-1) = (1-ALPHA)*(ne(-1) + b);

ne(-1) = nc + ns;
b             = bc + bs;
atilde        = y/(ne(-1) + b);

ne = THETAE*(Hc*(nc+bc)+Hs*(ns+bs))*atilde/fshock + THETA*ALPHA*(ne(-1) + b);

Hc*(nc+bc)/nc = Hs*(ns+bs)/ns;

%% Firm with CB finance 12 - 21

rcl = rc + KAPPAB*(bc/(kb(-1)) - vk);

dc + kb(-1) = bc;

kb = THETAC*(rcl*bc - rc*dc - KAPPAB*(bc/(kb(-1)) - vk)^2*kb(-1)) + TRANSB*bc(-1);


vc = log(omegacbar)/sigma+0.5*sigma;
Fc = normcdf(vc,0,1);
Hc = 1-normcdf(vc-sigma,0,1)-(1-normcdf(vc,0,1))*omegacbar;
Gc = (1-normcdf(vc,0,1))*omegacbar+(1-GAMMAC)*normcdf(vc-sigma,0,1);
H1c = -(1-normcdf(vc,0,1));
G1c = (1-normcdf(vc,0,1)) - GAMMAC*normpdf(vc,0,1)*1/sigma;

Gc*atilde*(nc + bc) = rcl*bc;
- H1c/G1c = atilde*Hc/(rc - atilde*Gc + KAPPAB*(2*bc/(kb(-1)) - vk));



%% Firm with SB finance 22 - 32

vs = log(omegasbar)/sigma+0.5*sigma;
Fs = normcdf(vs,0,1);
Hs = 1-normcdf(vs-sigma,0,1)-(1-normcdf(vs,0,1))*omegasbar;
Gs = (1-normcdf(vs,0,1))*omegasbar+(1-GAMMAS)*normcdf(vs-sigma,0,1);
H1s = -(1-normcdf(vs,0,1));
G1s = (1-normcdf(vs,0,1)) - GAMMAS*normpdf(vs,0,1)*1/sigma;

Gs*atilde*(ns + bs) = rs*bs;
- H1s/G1s = atilde*Hs/(rs - atilde*Gs );


 
%42-44  Market clearing etc.
y = (c+inv) ; 

%%45-50.shock
log(a)=RHOA*log(a(-1))+ea;
log(ai)=RHOAI*log(ai(-1))+eai;

log(vk/VK) = RHOVK*log(vk(-1)/VK)+(1-RHOVK)*(VKY*ln((b)/gdp/(BSS/GDPSS)));

gdp = (c+inv);
ln(sigma) = RHOS*log(sigma(-1))+(1-RHOS)*ln(SIGMA)+esigma;
ln(fshock) = RHOF*ln(fshock(-1)) + efshock;


totutility1 = ln( c-HABIT*c(-1) )  - CHI*h^(FRISCH+1)/(FRISCH+1)+ BETA*totutility1(+1);
totutility = utility + BETA*totutility(+1);
utility = ln( c-HABIT*c(-1) ) +PSID*ln(dc) - CHI*h^(FRISCH+1)/(FRISCH+1);


bsshare = bs/(bs+bc);
levtot = (bs+bc)/(ns+nc);
levs = bs/ns;
levc = bc/nc;

car = 1/vk;
lnb = log(b);
zs = omegasbar*atilde*(1 + ns/bs);
zc = omegacbar*atilde*(1 + nc/bc);
lngdp = log(gdp);
Ftot = (Fc*bc+Fs*bs)/(bc+bs);

bty = b/gdp;
dcar = car- car(-1);

end;


steady_state_model;
[lambda, c, h, inv, y, k, ne, atilde,b , nc, Hc, bc, Fc, vc, H1c, Gc, omegacbar, rc, G1c,  ns, Hs, bs, Fs, vs, H1s, Gs, omegasbar, rs, G1s, dc, kb, rcl, w, rp,  q,  rk, a, vk, gdp, sigma, utility, totutility, fshock, ai] = solvess_rc(BETA,DELTA,ALPHA,THETAE,THETA,RCTARGET,SIGMA,THETAC,VK,GAMMAC,GAMMAS,KAPPAB,CHI,FRISCH,HABIT );
bsshare = bs/(bs+bc);
levtot = (bs+bc)/(ns+nc);
levs = bs/ns;
levc = bc/nc;

car = 1/vk;
lnb = log(b);
zs = omegasbar*atilde*(1 + ns/bs);
zc = omegacbar*atilde*(1 + nc/bc);
lngdp = log(gdp);
Ftot = (Fc*bc+Fs*bs)/(bc+bs);
bty = b/gdp;
dcar = 0;
totutility1 = (ln( c-HABIT*c )  - CHI*h^(FRISCH+1)/(FRISCH+1))/(1-BETA);

end;

steady;
resid;
check;

shocks;
var ea=SIGA^2;
var eai=SIGAI^2;
var esigma=SIGS^2;
var efshock=SIGF^2;
end;

stoch_simul(order=2,irf=40, pruning, noprint, nograph);
