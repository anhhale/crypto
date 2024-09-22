function F = solvesb(omegasbar,omegacbar, omegacbar1,atilde,rc,BETA,DELTA,SIGMA,VK,GAMMAC,GAMMAS,KAPPAB)

rs = 1/BETA;
rp = 1/BETA;
q  = 1;
inv_k = 1-(1-DELTA);
a=1;
sigma = SIGMA;
vk    = VK;
rk    = 1/BETA - (1-DELTA);

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
%rcl = (1-Fc1)*(rc);

vc = log(omegacbar)/sigma+0.5*sigma;
Fc = normcdf(vc,0,1);
Hc = 1-normcdf(vc-sigma,0,1)-(1-normcdf(vc,0,1))*omegacbar;
Gc = (1-normcdf(vc,0,1))*omegacbar+(1-GAMMAC)*normcdf(vc-sigma,0,1);%- (1-GAMMAC)*normcdf(vc1-sigma,0,1)
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
% - 1/(nc_bc+1)/atilde/(1-GAMMAC)*(rc - omegacbar1*atilde*(1-GAMMAC))^2*normpdf(vc1,0,1)*1/sigma/omegacbar1
%F(1) = H1c/G1c + atilde*Hc/(rcl + (KAPPAB*(2*vk - vk))*(1-Fc1)-  atilde*Gc- 1/(nc_bc+1)/atilde/(1-GAMMAC)*(rc - omegacbar1*atilde*(1-GAMMAC))*normpdf(vc1,0,1)*1/sigma/omegacbar1);
F(1) = H1c/G1c + atilde*Hc/(rcl + (KAPPAB*(2*vk - vk))*(1-Fc1)-  atilde*Gc- 1/(nc_bc+1)/atilde/(1-GAMMAC)*(rc - omegacbar1*atilde*(1-GAMMAC))^2*normpdf(vc1,0,1)*1/sigma/omegacbar1);

F(2) = H1s/G1s + atilde*Hs/(rsl -  atilde*Gs);
F(3) = atilde* (1/bc_nc+1) * omegacbar1*(1-GAMMAC)   - (rc*dc_bc);
%F(3) = atilde* (1/bc_nc+1) * omegacbar1   - (rc*dc_bc);

F(4) = levc*Hc - levs*Hs;