function  gdp = solvegdp_nosb(BETA,DELTA,ALPHA,THETAE,THETA,PSID,SIGMA,THETAC,VK,GAMMAC,KAPPAB,CHI,FRISCH )

rc = fzero(@(x) solverc_nosb(x,BETA,DELTA,ALPHA,THETAE,THETA,PSID,SIGMA,THETAC,VK,GAMMAC,KAPPAB),1/BETA - 0.25/100/4,optimset('TolFun',1e-24));

rp = 1/BETA;

q  = 1;
inv_k = 1-(1-DELTA);
a=1;
sigma = SIGMA;
vk    = VK;
rcl   = rc;
rk    = 1/BETA - (1-DELTA);


xfin = fsolve(@(x)  solvefin(exp(x(1)),exp(x(2)), rc,BETA,DELTA,ALPHA,THETAE,THETA,SIGMA,THETAC,VK,GAMMAC,KAPPAB),[0 0],optimset('TolFun',1e-18));

omegacbar = exp(xfin(1));
atilde    = exp(xfin(2));

%Firms


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

nc_ne = 1;

b_ne  = bc_nc*nc_ne;

dc_bc = 1 - 1/vk;

dc_y = dc_bc*bc_nc*nc_ne*1/(1 + b_ne)*(1/atilde);

k_y = (1-ALPHA)*1/rk*(1/atilde);

inv_y = inv_k*k_y;

%c_y = (1 - (GAMMAC* normcdf(vc-sigma,0,1)*atilde*(1+bc_nc)*nc_ne )*1/(1 + b_ne)*(1/atilde)) - inv_y;
c_y = 1- inv_y;

h = ((1-THETA)*ALPHA*(1/atilde)/c_y/CHI)^(1/((FRISCH+1)));
y = (a*(k_y)^(1-ALPHA)*h^((1-THETA)*ALPHA))^(1/(ALPHA));
k = k_y*y;
c = c_y*y;
inv = inv_y*y;
lambda = 1/c;

dc = dc_y*y;
bc = dc/dc_bc;
kb = bc/vk;
nc = bc/bc_nc;
ne = nc/nc_ne;
b  =  bc;

w = (1-THETA)*(ALPHA)*(ne + b)/h;
gdp =  (c + inv);

fshock = 1;
utility = log(( c )) +PSID*log(dc) - CHI*h^(FRISCH+1)/(FRISCH+1);
totutility = utility/(1- BETA);
ai  = 1;


