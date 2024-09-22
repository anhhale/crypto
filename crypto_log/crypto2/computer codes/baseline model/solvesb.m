function F = solvesb(omegasbar, omegacbar, atilde, rc,BETA,DELTA,SIGMA,VK,GAMMAC,GAMMAS,KAPPAB)

%x = fsolve(@(x) solvesteady(x(1),x(2),x(3),exp(x(4)),BETA,DELTA,ALPHA,PIBAR,THETAE,MC,TRANSE,SIGMA,THETAC,VK,OMEGAK,GAMMAC,GAMMAS,EPS,TAU,MUZ,PSID,Rr,TRANSB),[-2,-2,1.02,log(1)],optimset('MaxFunEvals',5000,'MaxIter',2000));


rs = 1/BETA;
rp = 1/BETA;

q  = 1;
inv_k = 1-(1-DELTA);
a=1;
sigma = SIGMA;
vk    = VK;
rcl   = rc;
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

vc = log(omegacbar)/sigma+0.5*sigma;
Fc = normcdf(vc,0,1);
Hc = 1-normcdf(vc-sigma,0,1)-(1-normcdf(vc,0,1))*omegacbar;
Gc = (1-normcdf(vc,0,1))*omegacbar+(1-GAMMAC)*normcdf(vc-sigma,0,1);
%H1c = (-normpdf(vc-sigma)-(1-normcdf(vc))*omegacbar*sigma+normpdf(vc)*omegacbar)/sigma/omegacbar;
H1c = -(1-normcdf(vc,0,1));
G1c = (1-normcdf(vc,0,1)) - GAMMAC*normpdf(vc,0,1)*1/sigma;

%Gc*atilde*(nc + bc) = rcl*bc;
levc = 1/(1-Gc*atilde/rcl);

F(1) = H1c/G1c + atilde*Hc/(rc - atilde*Gc + KAPPAB*(2*vk - vk));
F(2) = H1s/G1s + atilde*Hs/(rs - atilde*Gs );
F(3) = levc*Hc - levs*Hs;