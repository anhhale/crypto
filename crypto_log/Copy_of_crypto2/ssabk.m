  %clear

  theta = 0.401;
            theta_0 = 0.399; %0.399;
            sigma = 0.94;
            xi = 0.0046; %0.0046;
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
           
epsilon=1;
Q = 1; %1
R = 1+0.06/4; % 2 
R_star =1+0.04/4;% 1.01089;
A = 1;
eps = 1;
Lambda = betta;
mc = (eta-1)/eta;
Pi = 1;
i = 1/betta-1;

% find s
sstar = 1-betta*R_star; %3

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
Z = (s+1)/betta-lambda; %6
Y = ((1-1/eta)^(1+zeta*(alpha_K+alpha_M))*(A/(eps^alpha_M*Z^alpha_K))^(1+zeta))^(1/(zeta*(1-alpha_K-alpha_M)))/((1-alpha_K-alpha_M)*zeta_0^(1/zeta)); %9
I = (1-lambda)*(1-1/eta)*(alpha_K/Z)*Y;
%K=(1-1/eta)*(alpha_K/Z)*Y;
K=mc*(alpha_K/Z)*Y;
M = (alpha_M/alpha_K)*(Z*K)/eps;
%x = mu_star/(varkappa_b*upsilon) - 1/theta + sqrt((mu_star/(varkappa_b*upsilon))^2 + (1/theta)^2 + 2*mu/(varkappa_b*upsilon));
%s = swork
load pre_x.mat
x= x_pre;

load pre_op.mat
phi= x_result(3);
%Here is missed code FINISH

Theta = theta_0;%theta*exp(-theta0*x);
psi = Theta*phi;

Omega = Lambda*(1-sigma+sigma*psi);
K_h = (K*((Lambda*(Z+lambda))-1))/varkappa_h;
%K_h = (K*s)/varkappa_h;
K_b = K-K_h; %15
%x_c=cryp/K_b;
chi_h = (varkappa_h/2)*K_h^2/K;
chi_b = (varkappa_b/2)*Q*K_b*x^2;
D_star = x*K_b/eps;
Ystar2Y = eps*M/Y +(R_star-1)*eps*D_star/Y
%Ystar2Y = (alphaM*(1-1/eta)+(R_star-1)*x*(1-s/varkappa_h)*(K/Y))/(eps^varphi);
Ystar = Ystar2Y*Y;
%EX = eps^(varphi)*Ystar;
Chi = varkappa_b/2*x^2*(1-s/varkappa_h)*(K/Y);
C2Y = 1-I/Y -Ystar2Y -(chi_b+chi_h)/Y
%C2Y = 1-(1-lambda)*(K/Y)-(eps^varphi)*Ystar2Y-Chi;  %11 ???

C = C2Y*Y;

mu_star = Omega*(R/Pi-eps/eps*R_star);
mu = Omega*((Z+lambda*Q)/Q-R/Pi);


upsilon = Omega*R/Pi;
EX = Y- C - I -chi_h - chi_b;
%EX = eps^(varphi)*Ystar
%phi = upsilon/(Theta -  mu - mu_star^2/(2*varkappa_b* upsilon));
%phi = (betta-sigma)/(sigma*(s+sstar*x)+xi*(1+s)); %13

%x=mu_star/(varkappa_b*upsilon)
%phi = upsilon/(Theta -  mu - mu_cryp - mu_star^2/(2*varkappa_b* upsilon));
%phi = upsilon/(Theta + (varkappa_b/2)*(x^2)*upsilon - (mu + mu_star*x ));
%Theta=(upsilon/phi)-+ (varkappa_b/2)*(x^2)*upsilon - (mu + mu_star*x )
%x = mu_star/(varkappa_b*upsilon) - 1/theta + sqrt((mu_star/(varkappa_b*upsilon))^2 + (1/theta)^2 + (2*mu_cryp/(varkappa_b*upsilon))*x_c  + 2*mu/(varkappa_b*upsilon));
chi_h = (varkappa_h/2)*K_h^2/K;
chi_b = (varkappa_b/2)*Q*K_b*x^2;
%Q*K_b*(1+varkappa_b/2*x^2) = N + D + epsilon*D_star;

%x = mu_star/(varkappa_b*upsilon) - 1/theta + sqrt((mu_star/(varkappa_b*upsilon))^2 + (1/theta)^2 + 2*mu/(varkappa_b*upsilon));

%


%phi = upsilon/(Theta + (varkappa_b/2)*(x^2)*upsilon - (mu + mu_star*x));

x1=x;
%D_star =(M-EX)/(1-R_star)
F = @(x) [x(1) - (sigma*((Z+lambda*Q)*K_b-x(2)*R/Pi-epsilon*R_star*D_star)+xi*(Z+lambda*Q)*K);
           Q*K_b*(1+varkappa_b/2*x1^2) - (x(1) + x(2) + epsilon*D_star);
           Q*K_b*(1+varkappa_b/2*x1^2) - ((1+varkappa_b/2*x1^2)*x(3)*x(1))];
          %(sigma+xi)*(Z+lambda*Q)*K_b - sigma*x(1)*R/Pi - sigma*eps*R_star*D_star -x(2)];  

options = optimset('MaxFunEvals',100000,'MaxIter',10000,'TolFun',1e-12);
[x_result,fval,exitflag,output,jacobian] = fsolve(F,[3.5 8 4],options); 
N=x_result(1);
D=x_result(2);
phi=x_result(3);
save pre_op x_result;
%x = mu_star/(varkappa_b*upsilon) - 1/theta_0 + sqrt((mu_star/(varkappa_b*upsilon))^2 + (1/theta_0)^2 + 2*mu/(varkappa_b*upsilon));
%x_pre=x;
%save pre_x x_pre
%save pre_x x_pre
%N=Q*K_b*(1+varkappa_b/2*x^2)/((1+varkappa_b/2*x^2)*phi) ;
%N = sigma*((Z+lambda*Q)*K_b-D*R/Pi-epsilon*R_star*D_star(-1))+xi*(Z+lambda*Q)*K;
%N = Q*K_b/phi;%Q*K_b*(1+varkappa_b/2*x^2)/phi
%D = Q*K_b*(1+varkappa_b/2*x^2) - N - eps*D_star ;
%N = sigma*((Z+lambda*Q)*K_b-cryp-D*R/Pi-eps*R_star*D_star)+xi*(Z+lambda*Q)*K;
%D=(-N+(sigma+xi)*(Z+lambda*Q)*K_b - sigma*eps*R_star*D_star)/(sigma*R/Pi); 
L = (1-alpha_K-alpha_M)*(Y/A*(alpha_K/K)^alpha_K*(alpha_M/M)^alpha_M)^(1/(1-alpha_K-alpha_M));
Ynet = Y - epsilon*M  - chi_h - chi_b;
w = (1-alpha_K-alpha_M)/alpha_K*Z*K/L; %20
%phi = upsilon/(Theta + (varkappa_b/2)*(x^2)*upsilon - (mu + mu_star*x));
%Theta= upsilon/phi -( (varkappa_b/2)*(x^2)*upsilon - (mu + mu_star*x))
%Ynet = Y - epsilon*M - chi_h - chi_b
vec= [ mc        
    Pi        
    Z        
    w         
    R        
    epsilon  
    Q         
    Y         
    M         
    L         
    C        
    I        
    K        
    EX        
    N         
    K_b       
    K_h      
    D         
    D_star    
    x         
    psi       
    phi  %    
    upsilon   
    mu        
    mu_star   
    A         
    R_star    
    Ystar    
    0      
    Theta     
    chi_h     
    chi_b    
    Ynet]
fprintf('\nSteady state values:\n');

fprintf('\n%Prices:;\n');

fprintf('\nmc = %10.12f;\n',mc);
fprintf('\nPi = %10.12f;\n',Pi);
fprintf('\nZ = %10.12f;\n',Z);
fprintf('\nw = %10.12f;\n',w);
fprintf('\nR = %10.12f;\n',R);
fprintf('\nepsilon = %10.12f;\n',epsilon);
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
fprintf('\nK_b = %10.12f;\n',K_b);
fprintf('\nK_h = %10.12f;\n',K_h);
fprintf('\nD = %10.12f;\n',D);
fprintf('\nD_star = %10.12f;\n',D_star);


fprintf('\nx = %10.12f;\n',x1);
fprintf('\npsi = %10.12f;\n',psi);

fprintf('\nupsilon = %10.12f;\n',upsilon);
fprintf('\nmu = %10.12f;\n',mu);

%fprintf('\nmudstar = %10.12f;\n',mudstar);
fprintf('\nmu_star = %10.12f;\n',mu_star);


fprintf('\nA = %10.12f;\n',A);
fprintf('\nY_star = %10.12f;\n',Ystar);
fprintf('\nR_star = %10.12f;\n',R_star);

%fprintf('\nOmega = %10.12f;\n',Omega);
%fprintf('\nLambda = %10.12f;\n',Lambda);
fprintf('\nphi = %10.12f;\n',phi);
fprintf('\nTheta = %10.12f;\n',Theta);
fprintf('\nchi_h = %10.12f;\n',chi_h);
fprintf('\nchi_b = %10.12f;\n',chi_b);
%fprintf('\nYnet = %10.12f;\n',Ynet);
fprintf('\nPhi = %10.12f;\n',0);

