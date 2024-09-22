function F = solvefin(omegacbar, atilde, rc,BETA,DELTA,ALPHA,THETAE,THETA,SIGMA,THETAC,VK,GAMMAC,KAPPAB)

%x = fsolve(@(x) solvesteady(x(1),x(2),x(3),exp(x(4)),BETA,DELTA,ALPHA,PIBAR,THETAE,MC,TRANSE,SIGMA,THETAC,VK,OMEGAK,GAMMAC,GAMMAS,EPS,TAU,MUZ,PSID,Rr,TRANSB),[-2,-2,1.02,log(1)],optimset('MaxFunEvals',5000,'MaxIter',2000));


rp = 1/BETA;

q  = 1;
inv_k = 1-(1-DELTA);
a=1;
sigma = SIGMA;
vk    = VK;
rcl   = rc;
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

F(1) = H1c/G1c + atilde*Hc/(rc - atilde*Gc + KAPPAB*(2*vk - vk));
F(2) = THETAE*Hc*levc*atilde + THETA*ALPHA*levc - 1;
