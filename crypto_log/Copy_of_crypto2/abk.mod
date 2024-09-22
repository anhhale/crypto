%Small Open Economy New Keynesian Model
%Replication of Aoki, Benigno, and Kiyotaki (2016, Oct 2018 wp)
%Author: David Murakami (University of Oxford)

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
;

//Specify shock process
//Policy rules
varexo  varepsilon_R     $\varepsilon^{R}$    (long_name='shock process for domestic interest rate')
        varepsilon_A     $\varepsilon^{A}$    (long_name='shock process for TFP')
        varepsilon_Rstar $\varepsilon^{R*}$   (long_name='shock process for foreign interest rate')
        varepsilon_Ystar $\varepsilon^{Y*}$   (long_name='shock process for foreign income')
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
;

//Parameterise
            theta = 0.401;
            theta_0 = 0.399; %0.399;
            sigma = 0.94;
            xi = 0.0046; //0.0046;
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
#Lambda = betta*(C-zeta_0*L^(1+zeta)/(1+zeta))/(C(+1)-zeta_0*L(+1)^(1+zeta)/(1+zeta));

//[name='Stochastic discount factor of banker']
#Omega = Lambda*(1-sigma+sigma*psi(+1));

[name='investment cost of adjustment']
Phi = kappa_I/2*(I/I_ss-1)^2;

[name='extra management cost of buying equity']
chi_h = (varkappa_h/2)*K_h^2/K;

[name='cost of borrowing from foreigners']
chi_b = (varkappa_b/2)*Q*K_b*x^2;

[name='fraction of assets diverted']
Theta = theta_0;


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


//Households
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
x = mu_star/(varkappa_b*upsilon) - 1/theta_0 + sqrt((mu_star/(varkappa_b*upsilon))^2 + (1/theta_0)^2 + 2*mu/(varkappa_b*upsilon));


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
R-1-(R_ss-1) = (1-rho_i)*omega_pi*(Pi-1) + rho_i*(R(-1)-1-(R_ss-1)) + varepsilon_R;


// Laws of motion and shock processes
[name='productivity']
A = 1 - rho_A + rho_A*A(-1) + varepsilon_A;

[name='foreign income']
Y_star = (1-rho_Ystar)*Y_star_ss + rho_Ystar*Y_star(-1) + varepsilon_Ystar;

[name='foreign interest rate']
R_star = (1 - rho_Rstar)*R_star_ss + rho_Rstar*R_star(-1) + varepsilon_Rstar;


//Observed variables
[name='Net output, pg. 21']
Ynet = Y - epsilon*M - kappa/2*(Pi-1)^2*Y - chi_h - chi_b;


end;
steady_state_model;
%initval;
%Prices:


mc = 0.888888888889;

Pi = 1.000000000000;

Z = 0.040142052839;

w = 5.096187431661;

R = 1.015000000000;

epsilon = 1.000000000000;

Q = 1.000000000000;


Y = 2.978901677003;

M = 0.476624268320;

L = 0.270185225993;

C = 2.021262792667;

I = 0.395781343682;

K = 19.789067184088;

EX = 0.529928350166;

N = 3.721235734488;

K_b = 14.700100712086;

K_h = 5.088966472003;

D = 5.667495473901;

D_star = 5.330408184582;

x = 0.362610317370;

psi = 1.576180764299;

upsilon = 1.541609918441;

mu = 0.007809891288;

mu_star = 0.007594137529;

A = 1.000000000000;

Y_star = 0.529928350166;

R_star = 1.010000000000;

phi = 3.950327730073;

Theta = 0.399000000000;

chi_h = 0.012890509603;

chi_b = 0.019038680885;

Phi = 0.000000000000;

Ynet = Y - epsilon*M  - chi_h - chi_b;


end;
steady;
check;
model_diagnostics;