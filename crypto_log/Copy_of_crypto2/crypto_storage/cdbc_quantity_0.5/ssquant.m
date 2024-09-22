theta = 0.401;
            theta_0 = 0.401; %0.399;
            sigma = 0.94;
            xi = 0.0045; %0.0046;
            varkappa_b = 0.0197; %0.0219;
            betta = 1/1.015;
            zeta = 1/3;
            zeta_0 = 7.883;
            varkappa_h = 0.0197;
            alpha_K = 0.3;
            alpha_M = 0.18;
            lambda = 0.98;
            eta = 9;
            omega = 2/3;
            kappa = (eta-1)*omega/((1-omega)*(1-betta*omega));
            kappa_I = 2/3;
            varphi = 1;
            rho_i = 0.8;
            omega_pi = 1.5;
            rho_A = 0.9;
            rho_Rstar = 0.9;
            rho_Ystar = 0.9;
            sigma_i = 0.0025;       %25 basis point shock
            sigma_istar = 0.0025;   %25 basis point shock
            sigma_A = 0.013;
            sigma_Ystar = 0.03;
            A_ss = 1;
            %c_share= 0.03;     
            mu_dc = 1.1*0.5;
            mu_m = 0.5 ;
            mu_c = 0.0025;
            rho_m = 10.62;
            rho_dc =2;%rho_m + (1-1.1)*rho_m
            rho_cryp = rho_m + (1-0.025)*rho_m;
            kappa_e = 0.85; %exp(0.9);
            rho_e = 0.15;
            ep_m = 0.5 ; % change later C.2 CDBC
            mi=0.5;  %weight on cash
            midc=0.5*1.1;
            Gamma=0.5;
            chi_dc=0.5;

Q = 1; %1
R = 1+0.06/4; % 2 
Rstar =1+0.04/4;% 1.01089;
A = 1;
eps = 1;
Lambda = betta;
mc = (eta-1)/eta;
Pi = 1;
i = 1/betta-1;

% find s
sstar = 1-betta*Rstar; %3

%global s;

myfun = @(s,sigma,betta,xi,theta) (1-sigma)*(betta*(s+(sstar^2/(2*varkappa_b)))+xi*((1+s)/(1-(s/varkappa_h))))*(sigma*(s+(sstar^2/(2*varkappa_b)))+xi*((1+s)/(1-(s/varkappa_h)))) - theta*(betta-sigma)*(sigma*(1-betta)*(s+(sstar^2/(2*varkappa_b)))+(1-sigma)*xi*((1+s)/(1-(s/varkappa_h))));  % parameterized function
%c = 2;                    % parameter
fun = @(s) myfun(s,sigma,betta,xi,theta);    % function of x alone
x0 = [0.00 1];
s = fzero(fun,x0);
%Z=0.040142257852393;
%s=betta*(Z+lambda) -1
%fprintf('\nx = %10.12f;\n',s)

%All below is OK^

%Here is missed code START

%options = optimset('Display','iter');
%s = fzero('H',[0.000001 1],options);   

%function f = fun(n)
 %   f = (1-sigma)*(betta*s+xi*(1+s))*(sigma*s+xi(1+s))-theta*(betta-sigma)*(sigma*(1-betta)*s+(1-sigma)*xi*(1+s));
%end

%fun = (1-sigma)*(betta*s+xi*(1+s))*(sigma*s+xi(1+s))-theta*(betta-sigma)*(sigma*(1-betta)*s+(1-sigma)*xi*(1+s));
%x0 = [0.000001 1];
%swork = fzero('fun',x0,options);
%s = swork;

%myfun = @(s,sigma,betta,xi,theta) (1-sigma)*(betta*s+xi*(1+s))*(sigma*s+xi(1+s))-theta*(betta-sigma)*(sigma*(1-betta)*s+(1-sigma)*xi*(1+s));  % parameterized function
%c = 2;                    % parameter
%fun1 = @(s) myfun(s,sigma,betta,xi,theta);    % function of x alone
%swork = fzero(fun1,[0.0001 1])
cryp =0;

%s = swork
x= 0.489296;
x_c=x/3.2574;

phi=4;
%Here is missed code FINISH
Z = (s+1)/betta-lambda; %6
Y = ((1-1/eta)^(1+zeta*(alpha_K+alpha_M))*(A/(eps^alpha_M*Z^alpha_K))^(1+zeta))^(1/(zeta*(1-alpha_K-alpha_M)))/((1-alpha_K-alpha_M)*zeta_0^(1/zeta)); %9
I = (1-lambda)*(1-1/eta)*(alpha_K/Z)*Y;
K=(1-1/eta)*(alpha_K/Z)*Y;
M = (alpha_M/alpha_K)*(Z*K)/eps;
Theta = theta;%theta*exp(-theta0*x);
Kh = K*s/varkappa_h;
Kb = K-Kh; %15
%x_c=cryp/Kb;
chi_h = (varkappa_h/2)*Kh^2/K;
chi_b = (varkappa_b/2)*Q*Kb*x^2;
Dstar = x*Kb/eps;
Ystar2Y = eps*M/Y +(Rstar-1)*eps*Dstar/Y
%Ystar2Y = (alphaM*(1-1/eta)+(Rstar-1)*x*(1-s/varkappa_h)*(K/Y))/(eps^varphi);
Ystar = Ystar2Y*Y;
%EX = eps^(varphi)*Ystar;
Chi = varkappa_b/2*x^2*(1-s/varkappa_h)*(K/Y);
C2Y = 1-I/Y -Ystar2Y -(chi_b+chi_h)/Y
%C2Y = 1-(1-lambda)*(K/Y)-(eps^varphi)*Ystar2Y-Chi;  %11 ???

C = C2Y*Y;
psi = Theta*phi;

Omega = Lambda*(1-sigma+sigma*psi);
mu_star = Omega*(R/Pi-eps/eps*Rstar);
mu = Omega*((Z+lambda*Q)/Q-R/Pi);
mu_cryp =  Omega*(R-1);

upsilon = Omega*R/Pi;
EX = Y- C - I -chi_h - chi_b;
%EX = eps^(varphi)*Ystar
%phi = upsilon/(Theta -  mu - mu_star^2/(2*varkappa_b* upsilon));
%phi = (betta-sigma)/(sigma*(s+sstar*x)+xi*(1+s)); %13

%x=mu_star/(varkappa_b*upsilon)
%phi = upsilon/(Theta -  mu - mu_cryp - mu_star^2/(2*varkappa_b* upsilon));
phi = upsilon/(Theta + (varkappa_b/2)*(x^2)*upsilon - (mu + mu_star*x +mu_cryp*x_c));

%x = mu_star/(varkappa_b*upsilon) - 1/theta + sqrt((mu_star/(varkappa_b*upsilon))^2 + (1/theta)^2 + (2*mu_cryp/(varkappa_b*upsilon))*x_c  + 2*mu/(varkappa_b*upsilon));
chi_h = (varkappa_h/2)*Kh^2/K;
chi_b = (varkappa_b/2)*Q*Kb*x^2;
%Q*K_b*(1+varkappa_b/2*x^2) = N + D + epsilon*D_star;

%x = mu_star/(varkappa_b*upsilon) - 1/theta + sqrt((mu_star/(varkappa_b*upsilon))^2 + (1/theta)^2 + 2*mu/(varkappa_b*upsilon));

%


%phi = upsilon/(Theta + (varkappa_b/2)*(x^2)*upsilon - (mu + mu_star*x));


%Dstar =(M-EX)/(1-Rstar)
%F = @(x) [Q*Kb*(1+varkappa_b/2*0.25^2) - x(2) - eps*Dstar -x(1);
          %(sigma+xi)*(Z+lambda*Q)*Kb - sigma*x(1)*R/Pi - sigma*eps*Rstar*Dstar -x(2)];  

%options = optimoptions('fsolve','MaxFunEvals',100000,'MaxIter',10000000,'TolFun',1e-12,'Algorithm','levenberg-marquardt');
%[x,fval,exitflag,output,jacobian] = fsolve(F,[8 4],options); 
N=Q*Kb*(1+varkappa_b/2*x^2)/((1+varkappa_b/2*x^2)*phi) ;
%N = Q*Kb/phi;%Q*Kb*(1+varkappa_b/2*x^2)/phi
%D = Q*Kb*(1+varkappa_b/2*x^2) - N - eps*Dstar ;
%N = sigma*((Z+lambda*Q)*Kb-cryp-D*R/Pi-eps*Rstar*Dstar)+xi*(Z+lambda*Q)*K;
D=(-N+(sigma+xi)*(Z+lambda*Q)*Kb-cryp- sigma*eps*Rstar*Dstar)/(sigma*R/Pi); 
L = (1-alpha_K-alpha_M)*(Y/A*(alpha_K/K)^alpha_K*(alpha_M/M)^alpha_M)^(1/(1-alpha_K-alpha_M));

w = (1-alpha_K-alpha_M)/alpha_K*Z*K/L; %20
 
 
Ynet = Y - eps*M - chi_h - chi_b;
fprintf('\nSteady state values:\n');

fprintf('\n%Prices:;\n');

fprintf('\nmc = %10.12f;\n',mc);
fprintf('\nPi = %10.12f;\n',Pi);
fprintf('\nZ = %10.12f;\n',Z);
fprintf('\nw = %10.12f;\n',w);
fprintf('\nR = %10.12f;\n',R);
fprintf('\nepsilon = %10.12f;\n',eps);
fprintf('\nQ = %10.12f;\n',Q);

fprintf('\n%Quantities:\n');

fprintf('\nY = %10.12f;\n',Y);
fprintf('\nM = %10.12f;\n',M);
fprintf('\nL = %10.12f;\n',L);
fprintf('\nC = %10.12f;\n',C);
fprintf('\nI = %10.12f;\n',I);
fprintf('\nK = %10.12f;\n',K);
fprintf('\nEX = %10.12f;\n',EX);
fprintf('\nN = %10.12f;\n',N);
fprintf('\nK_b = %10.12f;\n',Kb);
fprintf('\nK_h = %10.12f;\n',Kh);
fprintf('\nD = %10.12f;\n',D);
fprintf('\nD_star = %10.12f;\n',Dstar);

fprintf('\nx_c = %10.12f;\n',x_c);
fprintf('\nx = %10.12f;\n',x);
fprintf('\npsi = %10.12f;\n',psi);

fprintf('\nupsilon = %10.12f;\n',upsilon);
fprintf('\nmu = %10.12f;\n',mu);
fprintf('\nmu_cryp = %10.12f;\n',mu_cryp);
%fprintf('\nmudstar = %10.12f;\n',mudstar);
fprintf('\nmu_star = %10.12f;\n',mu_star);


fprintf('\nA = %10.12f;\n',A);
fprintf('\nY_star = %10.12f;\n',Ystar);
fprintf('\nR_star = %10.12f;\n',Rstar);

%fprintf('\nOmega = %10.12f;\n',Omega);
%fprintf('\nLambda = %10.12f;\n',Lambda);
fprintf('\nphi = %10.12f;\n',phi);
fprintf('\nTheta = %10.12f;\n',Theta);
fprintf('\nchi_h = %10.12f;\n',chi_h);
fprintf('\nchi_b = %10.12f;\n',chi_b);
%fprintf('\nYnet = %10.12f;\n',Ynet);
fprintf('\nPhi = %10.12f;\n',0);
R_dc = 1;
F = @(x) [((C)^(rho_dc))*midc*x(5)*x(2)^(-rho_dc) - chi_dc*((2*x(1)*(Gamma - x(3)))/(x(1)+x(2))^2) - x(4) + betta*x(4)*R_dc/Pi;
          ((C)^(rho_dc))*mi*x(5)*x(1)^(-rho_dc) - chi_dc*(2*(Gamma - x(3))*(x(3)/(x(1)+x(2)) - 1/(x(1)+x(2)))) - x(4) + betta*x(4)*ep_m/Pi;
          x(3) - x(1)/(x(1)+x(2));
          x(4) + x(5) - 1/(C-zeta_0*L^(1+zeta)/(1+zeta));%/(C-zeta_0*L^(1+zeta)/(1+zeta))
          C-(mi*x(1)^(1-rho_dc)+midc*x(2)^(1-rho_dc))^(1/(1-rho_dc))];  
%initial value for x(2) guessed at 0.5
%  ((C - h1*C1)^(-sigma1)) - beta1*h1*((C1 - h1*C1)^(-sigma1))-x(4)-x(5);
%options = optimoptions('fsolve','FunctionTolerance',1e-12,'OptimalityTolerance',1e-12); 
options = optimset('MaxFunEvals',100000,'MaxIter',10000,'TolFun',1e-12);
[x,fval,exitflag,output,jacobian] = fsolve(F,[1 1 0.5 1 1],options); 
trs_ss=x(3);
m_ss=x(1);
DC_ss=x(2);
Lambda_ss=x(4);
gam_ss=x(5);

cryp = ((Lambda_ss-betta*Lambda_ss)/mu_c)^(1/(-rho_cryp));

save par_ss trs_ss m_ss DC_ss Lambda_ss gam_ss


