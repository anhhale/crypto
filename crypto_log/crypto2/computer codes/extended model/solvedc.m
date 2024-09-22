function dc = solvedc(BETA,DELTA,ALPHA,THETAE,THETA,RCTARGET,SIGMA,DSBS,VK,GAMMAC,GAMMAS,KAPPAB,CHI,FRISCH )

rc = RCTARGET;
ds_bs = DSBS;

rs = 1/BETA;
rstilde = 1/BETA;
rp = 1/BETA;
q  = 1;
inv_k = 1-(1-DELTA);
a=1;
sigma = SIGMA;
vk    = VK;
rk    = 1/BETA - (1-DELTA);


%xfin = fsolve(@(x)  solvesb(exp(x(1)),exp(x(2)),exp(x(3)),exp(x(4)),rc,BETA,DELTA,SIGMA,VK,GAMMAC,GAMMAS,KAPPAB),[log(0.5) log(0.41) log(0.4) log(1.01)],optimset('TolFun',1e-18));
%xfin = fsolve(@(x)  solvesb(exp(x(1)),exp(x(2)),exp(x(3)),exp(x(4)),rc,BETA,DELTA,SIGMA,VK,GAMMAC,GAMMAS,KAPPAB),[log(0.63) log(0.59) log(0.55) log(1.02)],optimset('TolFun',1e-18));
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
%H1s = (-normpdf(vs-sigma)-(1-normcdf(vs))*omegasbar*sigma+normpdf(vs)*omegasbar)/sigma/omegasbar;
%G1s = ((1-GAMMAS)*normpdf(vs-sigma)+(1-(1-GAMMAS)*normcdf(vs))*omegasbar*sigma-normpdf(vs)*omegasbar)/sigma/omegasbar;
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
%H1c = (-normpdf(vc-sigma)-(1-normcdf(vc))*omegacbar*sigma+normpdf(vc)*omegacbar)/sigma/omegacbar;
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


b_ne  = bc_nc*nc_ne + bs_ns*ns_ne;

dc_bc = 1 - 1/vk;

dc_y = dc_bc*bc_nc*nc_ne*1/(1 + b_ne)*(1/atilde);

k_y = (1-ALPHA)*1/rk*(1/atilde);

inv_y = inv_k*k_y;

c_y = (1 - (GAMMAC* normcdf(vc-sigma,0,1)*atilde*(1+bc_nc)*nc_ne + GAMMAS* normcdf(vs-sigma,0,1)*atilde*(1+bs_ns)*ns_ne)*1/(1 + b_ne)*(1/atilde)) - inv_y;



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
ns = ns_ne*ne;
bs = bs_ns*ns;
b  =  bc + bs;

w = (1-THETA)*(ALPHA)*(ne + b)/h;
gdp =  (c + inv);
