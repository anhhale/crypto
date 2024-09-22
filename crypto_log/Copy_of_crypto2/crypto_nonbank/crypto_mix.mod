

// Declare variables
// Price variables
var mc        $mc$              (long_name='marginal cost')
    Pi        $\Pi$             (long_name='gross inflation')
    Z         $Z$               (long_name='rental price of capital')
    w         $w$               (long_name='real wages')
    R         $R$               (long_name='gross real interest rate')
    epsilon   $\epsilon$        (long_name='real exchange rate')
    Q         $Q$               (long_name='equity price')
//Quantity variables
    Y         $Y$               (long_name='output')
    M         $M$               (long_name='imports')
    L         $L$               (long_name='labour supply')
    C         $C$               (long_name='consumption')
    I         $I$               (long_name='investment')
    K         $K$               (long_name='capital stock')
    EX        $EX$              (long_name='exports')
    N         $N$               (long_name='net worth')
    K_b       $K^{b}$           (long_name='bank capital')
    K_h       $K^{h}$           (long_name='household capital')
    D         $D$               (long_name='domestic deposits')
    D_star    $D^{*}$           (long_name='foreign deposits')
//Bank variables
    x         $x$               (long_name='fraction of assets financed by foreign borrowing')
    psi       $\psi$            (long_name='Tobin Q ratio of the bank')
    phi       $\phi$            (long_name='leverage multiple (Qk/n)')
    upsilon   $\upsilon$        (long_name='marginal cost of deposits')
    mu        $\mu$             (long_name='excess return on capital over home deposits')
    mu_star   $\mu^{*}$         (long_name='cost advantage of foreign currency debt over home deposits')
//Exogenous processes
    A         $A$               (long_name='total factor productivity')
    R_star    $R^{*}$           (long_name='foreign gross interest rate')
    Y_star    $Y^{*}$           (long_name='foreign income')
//Other
    Phi       $\Phi$            (long_name='investment cost of adjustment')
    Theta     $\Theta(x_{t})$   (long_name='fraction of banker assets diverted')
    chi_h     $\chi^{h}$        (long_name='worker extra management cost of buying equity')
    chi_b     $\chi^{b}$        (long_name='cost of borrowing from foreigners')
    Ynet      $Y^{net}$         (long_name='net output')
//crypto variables
    P_c 
    R_dc
    c_sup
    cryp
    DC
    m
    R_c
    Lambda
    eps_e
    v_e
    gam //cash in advance constrain multiplier
    trs 
Lambda1 sigma_Rc 
   ;

//Specify shock process
//Policy rules
varexo  varepsilon_R     $\varepsilon^{R}$    (long_name='shock process for domestic interest rate')
        varepsilon_A     $\varepsilon^{A}$    (long_name='shock process for TFP')
        varepsilon_Rstar $\varepsilon^{R*}$   (long_name='shock process for foreign interest rate')
        varepsilon_Ystar $\varepsilon^{Y*}$   (long_name='shock process for foreign income')
 eps_Rc
vol
;

//Specify parameters
//Banks
parameters  theta       $\theta$            (long_name='elasticity of leverage wrt foreign borrowing')
            theta_0     $\theta_{0}$        (long_name='home bias in funding')
            sigma       $\sigma$            (long_name='survival probability')
            xi          $\xi$               (long_name='fraction of total assets brought by new banks')
            varkappa_b  $\varkappa^{b}$     (long_name='management cost for foreign borrowing')
//Households
            betta       $\beta$             (long_name='discount rate')
            zeta        $\zeta$             (long_name='inverse of Frisch elasticity of labour supply')
            zeta_0      $\zeta_{0}$         (long_name='inverse of labour supply capacity')
            varkappa_h  $\varkappa_{h}$     (long_name='cost parameter of direct finance')
//Producers
            alphha_K    $\alpha_{K}$        (long_name='cost share of capital')
            alphha_M    $\alpha_{M}$        (long_name='cost share of imported intermediate goods')
            lambda      $\lambda$           (long_name='one minus the depreciation rate')
            eta         $\eta$              (long_name='elasticity of demand')
            omega       $\omega$            (long_name='pins down kappa (slope of NKPC)')
            kappa_I     $\kappa_{I}$        (long_name='cost of adjusting investment goods production')
            varphi      $\varphi$           (long_name='price elasticity of export demand')
            kappa       $\kappa$            (long_name='slope of NKPC')
//Policy and exogenous processes
            A_ss        $\bar{A}$           (long_name='steady state productivity')
            rho_i       $\rho_{i}$          (long_name='Taylor rule persistence')
            omega_pi    $\omega_{\pi}$      (long_name='Taylor rule response to inflation')
            rho_A       $\rho_{A}$          (long_name='TFP persistence')
            rho_Rstar   $\rho_{R*}$         (long_name='foreign interest rate persistence')
            rho_Ystar   $\rho_{Y*}$         (long_name='foreign income persistence')
            sigma_i     $\sigma_{i}$        (long_name='standard deviation of interest rate shock')
            sigma_istar $\sigma_{i*}$       (long_name='standard deviation of foreign interest rate shock')
            sigma_A     $\sigma_{A}$        (long_name='standard deviation of TFP shock')
            sigma_Ystar $\sigma_{Y*}$       (long_name='standard deviation of foreign income shock')
// Additional params
            c_share     
            rho_dc
            rho_m
            rho_cryp
            mu_dc
            mu_m
            mu_c 
            kappa_e
            rho_e
            ep_m
            mi
            midc
            Gamma
            chi_dc
trs_ss m_ss DC_ss Lambda_ss gam_ss
;

//Parameterise
load par1
set_param_value('c_share',c_share);
            theta = 0.1;
            theta_0 = 0.401; //0.399;
            sigma = 0.94;
            xi = 0.0045; //0.0046;
            varkappa_b = 0.0197; //0.0219;
            betta = 1/1.015;
            zeta = 1/3;
            zeta_0 = 7.883;
            varkappa_h = 0.0197;
            alphha_K = 0.3;
            alphha_M = 0.18;
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
            sigma_i = 0.0025;       //25 basis point shock
            sigma_istar = 0.0025;   //25 basis point shock
            sigma_A = 0.013;
            sigma_Ystar = 0.03;
            A_ss = 1;
            %c_share= 0.03;     
            mu_dc = 1.1*1;
            mu_m = 1 ;
            mu_c = 0.25;
            rho_m = 10.62;
            rho_dc =rho_m + (1-1.1)*rho_m;
            rho_cryp = rho_m + (1-0.025)*rho_m;
            kappa_e = 0.85; %exp(0.9);
            rho_e = 0.15;
            ep_m = 1 ; % change later C.2 CDBC
            mi=0.5;  %weight on cash
            midc=0.5*1.1;
            Gamma=0.5;
            chi_dc=0.5;
load par_ss;
set_param_value('trs_ss',trs_ss);
set_param_value('m_ss',m_ss);
set_param_value('DC_ss',DC_ss);
set_param_value('Lambda_ss',Lambda_ss);
set_param_value('gam_ss',gam_ss);
model;
//Additional parameters and variables
//R_ss $\bar{R}$ (long_name='ss gross interest rate')
#R_ss = 1/betta;

//R_star_ss $\bar{R}^{*}$ (long_name='ss foreign interest rate')
#R_star_ss = (steady_state(R_star));

//Y_star_ss $\bar{Y}^{*}$ (long_name='ss foreign GDP')
#Y_star_ss = (steady_state(Y_star));

//I_ss $\bar{I}$ (long_name='ss investment')
#I_ss = (steady_state(I));

//[name='stochastic discount factor']
Lambda1 + gam = 1/(C-zeta_0*L^(1+zeta)/(1+zeta));%
Lambda = betta*(Lambda1(+1)/Lambda1);
//[name='Stochastic discount factor of banker']
#Omega = Lambda*(1-sigma+sigma*psi(+1));
 
[name='investment cost of adjustment']
Phi = kappa_I/2*(I/I_ss-1)^2;

[name='extra management cost of buying equity']
chi_h = (varkappa_h/2)*K_h^2/K;

[name='cost of borrowing from foreigners']
chi_b = (varkappa_b/2)*Q*K_b*x^2;

[name='fraction of assets diverted']
Theta = theta_0*exp(-theta*x);


//Production
[name='marginal cost, eq. (2)']
mc = (1/A)*Z^alphha_K*epsilon^alphha_M*w^(1-alphha_K-alphha_M);

[name='FOC wrt P_{i,t}, eq. (3)']
(Pi-1)*Pi = 1/kappa*(eta*mc+1-eta)+Lambda*Y(+1)/Y*Pi(+1)*(Pi(+1)-1);

[name='domestic output, eq. (4)']
Y = A*(K(-1)/alphha_K)^alphha_K*(M/alphha_M)^alphha_M*(L/(1-alphha_K-alphha_M))^(1-alphha_K-alphha_M);

[name='import to capital share ratio, eq. (5)']
epsilon*M/(Z*K(-1)) = alphha_M/alphha_K;

[name='wage to capital share ratio, eq. (6)']
w*L/(Z*K(-1))=(1-alphha_K-alphha_M)/alphha_K;

[name='law of motion of capital, eq. (7)']
K = I + lambda*K(-1);

[name='exports, eq. (8)']
EX = epsilon^(varphi)*Y_star;

//Entrepreneur produce token
(1-rho_e)*(P_c) = kappa_e^(0.5*eps_e+0.5*v_e);
%c_sup = c_share*Y;
c_sup = 0;
R_dc = 1;
%ln(P_c)=0.95*ln(P_c(-1));
(R_c) = (P_c(1)/P_c)  +vol;
sigma_Rc=(1-0.95)*ln(1)+0.95*sigma_Rc(-1)+ 0.03*eps_Rc;
//Households
C  = (mi*m^(1-rho_dc)+midc*DC^(1-rho_dc))^(1/(1-rho_dc));
trs = m/(m+DC);
[name='FOC wrt cbdc']
%mu_dc*DC^(-rho_dc) = Lambda-betta*Lambda(+1)*R_dc/Pi(+1);
((C)^(rho_dc))*midc*gam*DC^(-rho_dc) - chi_dc*((2*m*(Gamma - trs))/(m+DC)^2)= Lambda1-betta*Lambda1(+1)*R_dc/Pi(+1);
[name='FOC wrt money']
%mu_m*m^(-rho_m) = Lambda-betta*Lambda(+1)*ep_m/Pi(+1);
((C)^(rho_dc))*mi*gam*m^(-rho_dc) - chi_dc*(2*(Gamma - trs)*(trs/(m+DC) - 1/(m+DC))) = Lambda1-betta*Lambda1(+1)*ep_m/Pi(+1);
[name='FOC wrt crypto']
mu_c*(P_c*cryp)^(-rho_cryp) = Lambda1-betta*Lambda1(+1)*R_c/Pi(+1);

[name='FOC wrt labour, eq. (9)']
w = zeta_0*L^zeta;

[name='FOC wrt savings in equity, eq. (10)']
1 = Lambda*(Z(+1)+lambda*Q(+1))/(Q+varkappa_h*K_h/K);

[name='FOC wrt savings in deposits, eq. (11)']
1 = Lambda*R/Pi(+1);

[name='FOC wrt investment goods, eq. (12)']
Q = 1 + Phi + (I/I_ss)*kappa_I*(I/I_ss-1);


//Banks
[name='excess return on capital over home deposits, eq. (17)']
mu = Omega*((Z(+1)+lambda*Q(+1))/Q-R/Pi(+1));

[name='cost advantage of foreign currency debt over home deposits, eq. (18)']
mu_star = Omega*(R/Pi(+1)-epsilon(+1)/epsilon*R_star);
//There is a typo in the ABK paper: the timing for R_star in the paper is -1.

[name='marginal cost of deposit, eq. (19)']
upsilon = Omega*R/Pi(+1);

[name='bank leverage multiple, eq. (20)']
phi = upsilon/(Theta + (varkappa_b/2)*(x^2)*upsilon - (mu + mu_star*x));

[name='Tobin Q ratio of the bank, eq. (21)']
psi = Theta*phi;

[name='fraction of assets financed by foreign borrowing, eq. (22)']
x = mu_star/(varkappa_b*upsilon) - 1/theta + sqrt((mu_star/(varkappa_b*upsilon))^2 + (1/theta)^2 + 2*mu/(varkappa_b*upsilon));


//Market equilibrium
[name='output, eq. (23)']
Y = C + (1+Phi)*I + EX + (kappa/2)*(Pi-1)^2*Y + chi_h + chi_b;

[name='law of motion of net foreign debt, eq. (24)']
D_star = R_star(-1)*D_star(-1) + M - EX/epsilon;

[name='aggregate net worth of banks, eq. (25)']
N = sigma*((Z+lambda*Q)*K_b(-1)-D(-1)*R(-1)/Pi-epsilon*R_star(-1)*D_star(-1))+xi*(Z+lambda*Q)*K(-1);
//Using this equation seems to produce a smoother IRF in net foreign debt, closer to the paper
//N = (sigma+xi)*(Z+lambda*Q)*K_b(-1) - sigma*D(-1)*R(-1)/Pi - sigma*epsilon*R_star(-1)*D_star(-1);
//ABK use this expression in set of more recent presentation slides. The main difference is K_b

[name='aggregate balance sheet of the bank, eq. (26)']
Q*K_b*(1+varkappa_b/2*x^2) = (1+varkappa_b/2*x^2)*phi*N;

[name='aggregate balance sheet of the bank, eq. (27)']
Q*K_b*(1+varkappa_b/2*x^2) = N + D + epsilon*D_star;

[name='aggregate balance sheet of the bank, eq. (28)']
x = epsilon*D_star/(Q*K_b);

[name='aggregate capital, eq. (29)']
K = K_b + K_h;

[name='Taylor rule, eq. (30)']
R-1-(R_ss-1) = (1-rho_i)*omega_pi*(Pi-1) + rho_i*(R(-1)-1-(R_ss-1))+ varepsilon_R  ;


// Laws of motion and shock processes
[name='productivity']
A = 1 - rho_A + rho_A*A(-1) + varepsilon_A;

ln(eps_e) = rho_A*ln(eps_e(-1)) + vol;
ln(v_e) = rho_A*ln(v_e(-1));
[name='foreign income']
Y_star = (1-rho_Ystar)*Y_star_ss + rho_Ystar*Y_star(-1) + varepsilon_Ystar;

[name='foreign interest rate']
R_star = (1 - rho_Rstar)*R_star_ss + rho_Rstar*R_star(-1) + varepsilon_Rstar;


//Observed variables
[name='Net output, pg. 21']
Ynet = Y - epsilon*M - kappa/2*(Pi-1)^2*Y - chi_h - chi_b;


end;


initval;

%steady_state_model;
%Price variables
mc      		= (eta-1)/eta;%0.888889
Pi      		= 1;
Z       		= 0.0402094;
w       		= 4.7352;
R       		= 1.015;
epsilon 		= 1.233;
Q       		= 1;
Y       		= 2.22038;
L       		= 0.21674;
M       		= 0.288126;
C       		= 1.52721;
I       		= 0.294508;
K       		= 14.7254;
EX      		= 0.38296;
N       		= 2.72686;
K_b     		= 10.889;
K_h     		= 3.8364;
D       		= 5.62492;
D_star  		= 2.06251;
x       		= 0.233545;
psi     		= 1.56433;
phi     		= 3.99325;
upsilon 		= 1.53047;
mu      		= 0.00785501;
mu_star 		= 0.00619353;
A       		= 1;
R_star  		= 1.01089;
Y_star  		= 0.310592;
Phi     		= 0;
Theta   		= 0.391743;
chi_h   		= 0.00984501;
chi_b   		= 0.00585016;
%Ynet    		= 1.84942;
Ynet = Y - epsilon*M - chi_h - chi_b;
%Z=((1+varkappa_h*K_h/K)/Lambda_ss)-lambda;
trs=trs_ss;
m=m_ss;
DC=DC_ss;
Lambda1=Lambda_ss;
gam=gam_ss;
Lambda = betta;
Z=((1+varkappa_h*K_h/K)/Lambda)-lambda;
eps_e=1;
v_e=1;
P_c=1;
R_c=1;
R_dc=1;
%DC =((Lambda-betta*Lambda*R_dc/Pi)/mu_dc)^(1/(-rho_dc));
%m = ((Lambda-betta*Lambda*ep_m/Pi)/mu_m)^(1/(-rho_m));
cryp = ((Lambda1-betta*Lambda1*R_c/Pi)/mu_c)^(1/(-rho_cryp));
%c_sup=c_share*Y;
c_sup=0;
sigma_Rc=ln(1);
end ;
steady;
check;
model_diagnostics;

shocks ;
%var varepsilon_R ; stderr 0.0025;
var eps_Rc; stderr 1 ;
%var vol ; stderr 0.01 ;
//var varepsilon_A ; stderr sigma_A;
//var varepsilon_Ystar ; stderr sigma_Ystar;
end ;



stoch_simul(order=1,irf=20)Ynet C I EX M D_star epsilon Q N Pi R R_c P_c cryp DC m ;