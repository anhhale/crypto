clear

%global sigma1 beta xi theta gamma sstar; 

% PARAMETERS

% Banks

theta = 0.399;      % divertable proportion of assets
gamma = 6.4;        % home bias in funding
sigma1 = 0.94;       % survival probability
xi = 0.0046;      % fraction of total assets brought by new banks
theta0= 0.1;
% Households 


beta = 1/1.015;       % discount rate
zeta = 1/3;         % inverse of Frisch elasticity of labor supply
zeta0 = 7.883;       % inverse of labor supply capacity
varkappa_b = 0.0197;    % cost parameter of direct finance
varkappa_h = 0.0197;
% Producers

alphaK = 0.3;       % cost share of capital
alphaM = 0.18;      % cost share of imported intermediate goods
lambda = 0.98;      % one minus depreciation rate
eta =9;            % elasticity of demand
omega = 2/3;       % fraction of non-adjusters
kappa = (eta-1)*omega/((1-omega)*(1-beta*omega));       % slope of Phillips curve
kappaI = 2/3;         % cost of adjusting investment goods production
varphi = 1;         % price elasticity of export demand

Q = 1; %1
R = 1+0.06/4; % 2 
Rstar =1+0.04/4;% 1.01089;
A = 1;
eps = 1;
Lambda = beta;
mc = (eta-1)/eta;
Pi = 1;
i = 1/beta-1;

% find s
sstar = 1-beta*Rstar; %3

global s;

myfun = @(s,sigma1,beta,xi,theta) (1-sigma1)*(beta*(s+(sstar^2/(2*varkappa_b)))+xi*((1+s)/(1-(s/varkappa_h))))*(sigma1*(s+(sstar^2/(2*varkappa_b)))+xi*((1+s)/(1-(s/varkappa_h)))) - theta*(beta-sigma1)*(sigma1*(1-beta)*(s+(sstar^2/(2*varkappa_b)))+(1-sigma1)*xi*((1+s)/(1-(s/varkappa_h))));  % parameterized function
%c = 2;                    % parameter
fun = @(s) myfun(s,sigma1,beta,xi,theta);    % function of x alone
x0 = [0.00 1];
s = fzero(fun,x0)
%Z=0.040142257852393;
%s=beta*(Z+lambda) -1
%fprintf('\nx = %10.12f;\n',s)

%All below is OK^

%Here is missed code START

%options = optimset('Display','iter');
%s = fzero('H',[0.000001 1],options);   

%function f = fun(n)
 %   f = (1-sigma1)*(beta*s+xi*(1+s))*(sigma1*s+xi(1+s))-theta*(beta-sigma1)*(sigma1*(1-beta)*s+(1-sigma1)*xi*(1+s));
%end

%fun = (1-sigma1)*(beta*s+xi*(1+s))*(sigma1*s+xi(1+s))-theta*(beta-sigma1)*(sigma1*(1-beta)*s+(1-sigma1)*xi*(1+s));
%x0 = [0.000001 1];
%swork = fzero('fun',x0,options);
%s = swork;

%myfun = @(s,sigma1,beta,xi,theta) (1-sigma1)*(beta*s+xi*(1+s))*(sigma1*s+xi(1+s))-theta*(beta-sigma1)*(sigma1*(1-beta)*s+(1-sigma1)*xi*(1+s));  % parameterized function
%c = 2;                    % parameter
%fun1 = @(s) myfun(s,sigma1,beta,xi,theta);    % function of x alone
%swork = fzero(fun1,[0.0001 1])

%s = swork
x= 0.25;
phi=4;
%Here is missed code FINISH
Z = (s+1)/beta-lambda; %6
Y = ((1-1/eta)^(1+zeta*(alphaK+alphaM))*(A/(eps^alphaM*Z^alphaK))^(1+zeta))^(1/(zeta*(1-alphaK-alphaM)))/((1-alphaK-alphaM)*zeta0^(1/zeta)); %9
I = (1-lambda)*(1-1/eta)*(alphaK/Z)*Y;
K=(1-1/eta)*(alphaK/Z)*Y;
M = (alphaM/alphaK)*(Z*K)/eps;
Theta = theta;%theta*exp(-theta0*x);
Kh = K*s/varkappa_h;
Kb = K-Kh; %15
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

Omega = Lambda*(1-sigma1+sigma1*psi);
mu_star = Omega*(R/Pi-eps/eps*Rstar);
mu = Omega*((Z+lambda*Q)/Q-R/Pi);
upsilon = Omega*R/Pi;
EX = Y- C - I -chi_h - chi_b;
%EX = eps^(varphi)*Ystar
%phi = upsilon/(Theta -  mu - mu_star^2/(2*varkappa_b* upsilon));
%phi = (beta-sigma1)/(sigma1*(s+sstar*x)+xi*(1+s)); %13

x=mu_star/(varkappa_b*upsilon)
phi = upsilon/(Theta -  mu - mu_star^2/(2*varkappa_b* upsilon));
x = mu_star/(varkappa_b*upsilon) - 1/theta + sqrt((mu_star/(varkappa_b*upsilon))^2 + (1/theta)^2 + 2*mu/(varkappa_b*upsilon));
chi_h = (varkappa_h/2)*Kh^2/K;
chi_b = (varkappa_b/2)*Q*Kb*x^2;
%Q*K_b*(1+varkappa_b/2*x^2) = N + D + epsilon*D_star;

%x = mu_star/(varkappa_b*upsilon) - 1/theta + sqrt((mu_star/(varkappa_b*upsilon))^2 + (1/theta)^2 + 2*mu/(varkappa_b*upsilon));

%


%phi = upsilon/(Theta + (varkappa_b/2)*(x^2)*upsilon - (mu + mu_star*x));


%Dstar =(M-EX)/(1-Rstar)
%F = @(x) [Q*Kb*(1+varkappa_b/2*0.25^2) - x(2) - eps*Dstar -x(1);
          %(sigma1+xi)*(Z+lambda*Q)*Kb - sigma1*x(1)*R/Pi - sigma1*eps*Rstar*Dstar -x(2)];  

%options = optimoptions('fsolve','MaxFunEvals',100000,'MaxIter',10000000,'TolFun',1e-12,'Algorithm','levenberg-marquardt');
%[x,fval,exitflag,output,jacobian] = fsolve(F,[8 4],options); 
%N=Q*Kb*(1+varkappa_b/2*x^2)/((1+varkappa_b/2*x^2)*phi) ;
N = Q*Kb/phi;%Q*Kb*(1+varkappa_b/2*x^2)/phi
%D = Q*Kb*(1+varkappa_b/2*x^2) - N - eps*Dstar ;
%N = sigma1*((Z+lambda*Q)*Kb-D*R/Pi-eps*Rstar*Dstar)+xi*(Z+lambda*Q)*K;
D=(-N+(sigma1+xi)*(Z+lambda*Q)*Kb- sigma1*eps*Rstar*Dstar)/(sigma1*R/Pi); 
L = (1-alphaK-alphaM)*(Y/A*(alphaK/K)^alphaK*(alphaM/M)^alphaM)^(1/(1-alphaK-alphaM));

w = (1-alphaK-alphaM)/alphaK*Z*K/L; %20
 
Ynet = Y - eps*M - chi_h - chi_b;


%nu = Omega*R;

 %12 ???











 %19





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

fprintf('\n%Bank variables:\n');

fprintf('\nx = %10.12f;\n',x);
fprintf('\npsi = %10.12f;\n',psi);
fprintf('\nphi = %10.12f;\n',phi);
fprintf('\nupsilon = %10.12f;\n',upsilon);
fprintf('\nmu = %10.12f;\n',mu);
%fprintf('\nmudstar = %10.12f;\n',mudstar);
fprintf('\nmu_star = %10.12f;\n',mu_star);


fprintf('\nA = %10.12f;\n',A);
fprintf('\nY_star = %10.12f;\n',Ystar);
fprintf('\nR_star = %10.12f;\n',Rstar);

%fprintf('\nOmega = %10.12f;\n',Omega);
%fprintf('\nLambda = %10.12f;\n',Lambda);

fprintf('\nTheta = %10.12f;\n',Theta);
fprintf('\nchi_h = %10.12f;\n',chi_h);
fprintf('\nchi_b = %10.12f;\n',chi_b);
fprintf('\nYnet = %10.12f;\n',Ynet);
fprintf('\nPhi = %10.12f;\n',0);