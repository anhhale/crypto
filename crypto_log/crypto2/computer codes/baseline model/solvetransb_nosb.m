function TRANSB = solvetransb_nosb(BETA,DELTA,ALPHA,THETAE,THETA,PSID,SIGMA,THETAC,VK,GAMMAC,KAPPAB )

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
c_y = 1 - inv_y;



TRANSB = (1/VK - THETAC*(rcl*1 - rc*dc_bc));

