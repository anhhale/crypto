%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Save empty dates and dseries objects in memory.
dates('initialize');
dseries('initialize');
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'cdbc_markdown';
M_.dynare_version = '4.5.7';
oo_.dynare_version = '4.5.7';
options_.dynare_version = '4.5.7';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('cdbc_markdown.log');
M_.exo_names = 'varepsilon_R';
M_.exo_names_tex = 'varepsilon\_R';
M_.exo_names_long = 'varepsilon_R';
M_.exo_names = char(M_.exo_names, 'varepsilon_A');
M_.exo_names_tex = char(M_.exo_names_tex, 'varepsilon\_A');
M_.exo_names_long = char(M_.exo_names_long, 'varepsilon_A');
M_.exo_names = char(M_.exo_names, 'varepsilon_Rstar');
M_.exo_names_tex = char(M_.exo_names_tex, 'varepsilon\_Rstar');
M_.exo_names_long = char(M_.exo_names_long, 'varepsilon_Rstar');
M_.exo_names = char(M_.exo_names, 'varepsilon_Ystar');
M_.exo_names_tex = char(M_.exo_names_tex, 'varepsilon\_Ystar');
M_.exo_names_long = char(M_.exo_names_long, 'varepsilon_Ystar');
M_.exo_names = char(M_.exo_names, 'eps_Rc');
M_.exo_names_tex = char(M_.exo_names_tex, 'eps\_Rc');
M_.exo_names_long = char(M_.exo_names_long, 'eps_Rc');
M_.exo_names = char(M_.exo_names, 'vol');
M_.exo_names_tex = char(M_.exo_names_tex, 'vol');
M_.exo_names_long = char(M_.exo_names_long, 'vol');
M_.endo_names = 'totutility1';
M_.endo_names_tex = 'totutility1';
M_.endo_names_long = 'totutility1';
M_.endo_names = char(M_.endo_names, 'Y');
M_.endo_names_tex = char(M_.endo_names_tex, 'Y');
M_.endo_names_long = char(M_.endo_names_long, 'Y');
M_.endo_names = char(M_.endo_names, 'C');
M_.endo_names_tex = char(M_.endo_names_tex, 'C');
M_.endo_names_long = char(M_.endo_names_long, 'C');
M_.endo_names = char(M_.endo_names, 'I');
M_.endo_names_tex = char(M_.endo_names_tex, 'I');
M_.endo_names_long = char(M_.endo_names_long, 'I');
M_.endo_names = char(M_.endo_names, 'Pi');
M_.endo_names_tex = char(M_.endo_names_tex, 'Pi');
M_.endo_names_long = char(M_.endo_names_long, 'Pi');
M_.endo_names = char(M_.endo_names, 'N');
M_.endo_names_tex = char(M_.endo_names_tex, 'N');
M_.endo_names_long = char(M_.endo_names_long, 'N');
M_.endo_names = char(M_.endo_names, 'DC');
M_.endo_names_tex = char(M_.endo_names_tex, 'DC');
M_.endo_names_long = char(M_.endo_names_long, 'DC');
M_.endo_names = char(M_.endo_names, 'cryp');
M_.endo_names_tex = char(M_.endo_names_tex, 'cryp');
M_.endo_names_long = char(M_.endo_names_long, 'cryp');
M_.endo_names = char(M_.endo_names, 'm');
M_.endo_names_tex = char(M_.endo_names_tex, 'm');
M_.endo_names_long = char(M_.endo_names_long, 'm');
M_.endo_names = char(M_.endo_names, 'D_star');
M_.endo_names_tex = char(M_.endo_names_tex, 'D\_star');
M_.endo_names_long = char(M_.endo_names_long, 'D_star');
M_.endo_names = char(M_.endo_names, 'mc');
M_.endo_names_tex = char(M_.endo_names_tex, 'mc');
M_.endo_names_long = char(M_.endo_names_long, 'mc');
M_.endo_names = char(M_.endo_names, 'Z');
M_.endo_names_tex = char(M_.endo_names_tex, 'Z');
M_.endo_names_long = char(M_.endo_names_long, 'Z');
M_.endo_names = char(M_.endo_names, 'w');
M_.endo_names_tex = char(M_.endo_names_tex, 'w');
M_.endo_names_long = char(M_.endo_names_long, 'w');
M_.endo_names = char(M_.endo_names, 'R');
M_.endo_names_tex = char(M_.endo_names_tex, 'R');
M_.endo_names_long = char(M_.endo_names_long, 'R');
M_.endo_names = char(M_.endo_names, 'epsilon');
M_.endo_names_tex = char(M_.endo_names_tex, 'epsilon');
M_.endo_names_long = char(M_.endo_names_long, 'epsilon');
M_.endo_names = char(M_.endo_names, 'Q');
M_.endo_names_tex = char(M_.endo_names_tex, 'Q');
M_.endo_names_long = char(M_.endo_names_long, 'Q');
M_.endo_names = char(M_.endo_names, 'M');
M_.endo_names_tex = char(M_.endo_names_tex, 'M');
M_.endo_names_long = char(M_.endo_names_long, 'M');
M_.endo_names = char(M_.endo_names, 'L');
M_.endo_names_tex = char(M_.endo_names_tex, 'L');
M_.endo_names_long = char(M_.endo_names_long, 'L');
M_.endo_names = char(M_.endo_names, 'K');
M_.endo_names_tex = char(M_.endo_names_tex, 'K');
M_.endo_names_long = char(M_.endo_names_long, 'K');
M_.endo_names = char(M_.endo_names, 'EX');
M_.endo_names_tex = char(M_.endo_names_tex, 'EX');
M_.endo_names_long = char(M_.endo_names_long, 'EX');
M_.endo_names = char(M_.endo_names, 'K_b');
M_.endo_names_tex = char(M_.endo_names_tex, 'K\_b');
M_.endo_names_long = char(M_.endo_names_long, 'K_b');
M_.endo_names = char(M_.endo_names, 'K_h');
M_.endo_names_tex = char(M_.endo_names_tex, 'K\_h');
M_.endo_names_long = char(M_.endo_names_long, 'K_h');
M_.endo_names = char(M_.endo_names, 'D');
M_.endo_names_tex = char(M_.endo_names_tex, 'D');
M_.endo_names_long = char(M_.endo_names_long, 'D');
M_.endo_names = char(M_.endo_names, 'x');
M_.endo_names_tex = char(M_.endo_names_tex, 'x');
M_.endo_names_long = char(M_.endo_names_long, 'x');
M_.endo_names = char(M_.endo_names, 'psi');
M_.endo_names_tex = char(M_.endo_names_tex, 'psi');
M_.endo_names_long = char(M_.endo_names_long, 'psi');
M_.endo_names = char(M_.endo_names, 'phi');
M_.endo_names_tex = char(M_.endo_names_tex, 'phi');
M_.endo_names_long = char(M_.endo_names_long, 'phi');
M_.endo_names = char(M_.endo_names, 'upsilon');
M_.endo_names_tex = char(M_.endo_names_tex, 'upsilon');
M_.endo_names_long = char(M_.endo_names_long, 'upsilon');
M_.endo_names = char(M_.endo_names, 'mu');
M_.endo_names_tex = char(M_.endo_names_tex, 'mu');
M_.endo_names_long = char(M_.endo_names_long, 'mu');
M_.endo_names = char(M_.endo_names, 'mu_star');
M_.endo_names_tex = char(M_.endo_names_tex, 'mu\_star');
M_.endo_names_long = char(M_.endo_names_long, 'mu_star');
M_.endo_names = char(M_.endo_names, 'A');
M_.endo_names_tex = char(M_.endo_names_tex, 'A');
M_.endo_names_long = char(M_.endo_names_long, 'A');
M_.endo_names = char(M_.endo_names, 'R_star');
M_.endo_names_tex = char(M_.endo_names_tex, 'R\_star');
M_.endo_names_long = char(M_.endo_names_long, 'R_star');
M_.endo_names = char(M_.endo_names, 'Y_star');
M_.endo_names_tex = char(M_.endo_names_tex, 'Y\_star');
M_.endo_names_long = char(M_.endo_names_long, 'Y_star');
M_.endo_names = char(M_.endo_names, 'Phi');
M_.endo_names_tex = char(M_.endo_names_tex, 'Phi');
M_.endo_names_long = char(M_.endo_names_long, 'Phi');
M_.endo_names = char(M_.endo_names, 'Theta');
M_.endo_names_tex = char(M_.endo_names_tex, 'Theta');
M_.endo_names_long = char(M_.endo_names_long, 'Theta');
M_.endo_names = char(M_.endo_names, 'chi_h');
M_.endo_names_tex = char(M_.endo_names_tex, 'chi\_h');
M_.endo_names_long = char(M_.endo_names_long, 'chi_h');
M_.endo_names = char(M_.endo_names, 'chi_b');
M_.endo_names_tex = char(M_.endo_names_tex, 'chi\_b');
M_.endo_names_long = char(M_.endo_names_long, 'chi_b');
M_.endo_names = char(M_.endo_names, 'Ynet');
M_.endo_names_tex = char(M_.endo_names_tex, 'Ynet');
M_.endo_names_long = char(M_.endo_names_long, 'Ynet');
M_.endo_names = char(M_.endo_names, 'P_c');
M_.endo_names_tex = char(M_.endo_names_tex, 'P\_c');
M_.endo_names_long = char(M_.endo_names_long, 'P_c');
M_.endo_names = char(M_.endo_names, 'R_dc');
M_.endo_names_tex = char(M_.endo_names_tex, 'R\_dc');
M_.endo_names_long = char(M_.endo_names_long, 'R_dc');
M_.endo_names = char(M_.endo_names, 'theta_c');
M_.endo_names_tex = char(M_.endo_names_tex, 'theta\_c');
M_.endo_names_long = char(M_.endo_names_long, 'theta_c');
M_.endo_names = char(M_.endo_names, 'R_c');
M_.endo_names_tex = char(M_.endo_names_tex, 'R\_c');
M_.endo_names_long = char(M_.endo_names_long, 'R_c');
M_.endo_names = char(M_.endo_names, 'Lambda');
M_.endo_names_tex = char(M_.endo_names_tex, 'Lambda');
M_.endo_names_long = char(M_.endo_names_long, 'Lambda');
M_.endo_names = char(M_.endo_names, 'gam');
M_.endo_names_tex = char(M_.endo_names_tex, 'gam');
M_.endo_names_long = char(M_.endo_names_long, 'gam');
M_.endo_names = char(M_.endo_names, 'trs');
M_.endo_names_tex = char(M_.endo_names_tex, 'trs');
M_.endo_names_long = char(M_.endo_names_long, 'trs');
M_.endo_names = char(M_.endo_names, 'Lambda1');
M_.endo_names_tex = char(M_.endo_names_tex, 'Lambda1');
M_.endo_names_long = char(M_.endo_names_long, 'Lambda1');
M_.endo_names = char(M_.endo_names, 'sigma_Rc');
M_.endo_names_tex = char(M_.endo_names_tex, 'sigma\_Rc');
M_.endo_names_long = char(M_.endo_names_long, 'sigma_Rc');
M_.endo_names = char(M_.endo_names, 'mu_cryp');
M_.endo_names_tex = char(M_.endo_names_tex, 'mu\_cryp');
M_.endo_names_long = char(M_.endo_names_long, 'mu_cryp');
M_.endo_names = char(M_.endo_names, 'x_c');
M_.endo_names_tex = char(M_.endo_names_tex, 'x\_c');
M_.endo_names_long = char(M_.endo_names_long, 'x_c');
M_.endo_names = char(M_.endo_names, 'DE');
M_.endo_names_tex = char(M_.endo_names_tex, 'DE');
M_.endo_names_long = char(M_.endo_names_long, 'DE');
M_.endo_names = char(M_.endo_names, 'utility');
M_.endo_names_tex = char(M_.endo_names_tex, 'utility');
M_.endo_names_long = char(M_.endo_names_long, 'utility');
M_.endo_names = char(M_.endo_names, 'logY');
M_.endo_names_tex = char(M_.endo_names_tex, 'logY');
M_.endo_names_long = char(M_.endo_names_long, 'logY');
M_.endo_names = char(M_.endo_names, 'logPi');
M_.endo_names_tex = char(M_.endo_names_tex, 'logPi');
M_.endo_names_long = char(M_.endo_names_long, 'logPi');
M_.endo_names = char(M_.endo_names, 'logR');
M_.endo_names_tex = char(M_.endo_names_tex, 'logR');
M_.endo_names_long = char(M_.endo_names_long, 'logR');
M_.endo_names = char(M_.endo_names, 'logI');
M_.endo_names_tex = char(M_.endo_names_tex, 'logI');
M_.endo_names_long = char(M_.endo_names_long, 'logI');
M_.endo_names = char(M_.endo_names, 'logL');
M_.endo_names_tex = char(M_.endo_names_tex, 'logL');
M_.endo_names_long = char(M_.endo_names_long, 'logL');
M_.endo_names = char(M_.endo_names, 'logC');
M_.endo_names_tex = char(M_.endo_names_tex, 'logC');
M_.endo_names_long = char(M_.endo_names_long, 'logC');
M_.endo_names = char(M_.endo_names, 'logEX');
M_.endo_names_tex = char(M_.endo_names_tex, 'logEX');
M_.endo_names_long = char(M_.endo_names_long, 'logEX');
M_.endo_names = char(M_.endo_names, 'logM');
M_.endo_names_tex = char(M_.endo_names_tex, 'logM');
M_.endo_names_long = char(M_.endo_names_long, 'logM');
M_.endo_names = char(M_.endo_names, 'logD');
M_.endo_names_tex = char(M_.endo_names_tex, 'logD');
M_.endo_names_long = char(M_.endo_names_long, 'logD');
M_.endo_names = char(M_.endo_names, 'logD_star');
M_.endo_names_tex = char(M_.endo_names_tex, 'logD\_star');
M_.endo_names_long = char(M_.endo_names_long, 'logD_star');
M_.endo_names = char(M_.endo_names, 'logN');
M_.endo_names_tex = char(M_.endo_names_tex, 'logN');
M_.endo_names_long = char(M_.endo_names_long, 'logN');
M_.endo_names = char(M_.endo_names, 'spread');
M_.endo_names_tex = char(M_.endo_names_tex, 'spread');
M_.endo_names_long = char(M_.endo_names_long, 'spread');
M_.endo_names = char(M_.endo_names, 'logDC');
M_.endo_names_tex = char(M_.endo_names_tex, 'logDC');
M_.endo_names_long = char(M_.endo_names_long, 'logDC');
M_.endo_names = char(M_.endo_names, 'logm');
M_.endo_names_tex = char(M_.endo_names_tex, 'logm');
M_.endo_names_long = char(M_.endo_names_long, 'logm');
M_.endo_names = char(M_.endo_names, 'leverage');
M_.endo_names_tex = char(M_.endo_names_tex, 'leverage');
M_.endo_names_long = char(M_.endo_names_long, 'leverage');
M_.endo_names = char(M_.endo_names, 'TB');
M_.endo_names_tex = char(M_.endo_names_tex, 'TB');
M_.endo_names_long = char(M_.endo_names_long, 'TB');
M_.endo_names = char(M_.endo_names, 'logcryp');
M_.endo_names_tex = char(M_.endo_names_tex, 'logcryp');
M_.endo_names_long = char(M_.endo_names_long, 'logcryp');
M_.endo_partitions = struct();
M_.param_names = 'theta';
M_.param_names_tex = 'theta';
M_.param_names_long = 'theta';
M_.param_names = char(M_.param_names, 'theta_0');
M_.param_names_tex = char(M_.param_names_tex, 'theta\_0');
M_.param_names_long = char(M_.param_names_long, 'theta_0');
M_.param_names = char(M_.param_names, 'sigma');
M_.param_names_tex = char(M_.param_names_tex, 'sigma');
M_.param_names_long = char(M_.param_names_long, 'sigma');
M_.param_names = char(M_.param_names, 'xi');
M_.param_names_tex = char(M_.param_names_tex, 'xi');
M_.param_names_long = char(M_.param_names_long, 'xi');
M_.param_names = char(M_.param_names, 'varkappa_b');
M_.param_names_tex = char(M_.param_names_tex, 'varkappa\_b');
M_.param_names_long = char(M_.param_names_long, 'varkappa_b');
M_.param_names = char(M_.param_names, 'betta');
M_.param_names_tex = char(M_.param_names_tex, 'betta');
M_.param_names_long = char(M_.param_names_long, 'betta');
M_.param_names = char(M_.param_names, 'zeta');
M_.param_names_tex = char(M_.param_names_tex, 'zeta');
M_.param_names_long = char(M_.param_names_long, 'zeta');
M_.param_names = char(M_.param_names, 'zeta_0');
M_.param_names_tex = char(M_.param_names_tex, 'zeta\_0');
M_.param_names_long = char(M_.param_names_long, 'zeta_0');
M_.param_names = char(M_.param_names, 'varkappa_h');
M_.param_names_tex = char(M_.param_names_tex, 'varkappa\_h');
M_.param_names_long = char(M_.param_names_long, 'varkappa_h');
M_.param_names = char(M_.param_names, 'alphha_K');
M_.param_names_tex = char(M_.param_names_tex, 'alphha\_K');
M_.param_names_long = char(M_.param_names_long, 'alphha_K');
M_.param_names = char(M_.param_names, 'alphha_M');
M_.param_names_tex = char(M_.param_names_tex, 'alphha\_M');
M_.param_names_long = char(M_.param_names_long, 'alphha_M');
M_.param_names = char(M_.param_names, 'lambda');
M_.param_names_tex = char(M_.param_names_tex, 'lambda');
M_.param_names_long = char(M_.param_names_long, 'lambda');
M_.param_names = char(M_.param_names, 'eta');
M_.param_names_tex = char(M_.param_names_tex, 'eta');
M_.param_names_long = char(M_.param_names_long, 'eta');
M_.param_names = char(M_.param_names, 'omega');
M_.param_names_tex = char(M_.param_names_tex, 'omega');
M_.param_names_long = char(M_.param_names_long, 'omega');
M_.param_names = char(M_.param_names, 'kappa_I');
M_.param_names_tex = char(M_.param_names_tex, 'kappa\_I');
M_.param_names_long = char(M_.param_names_long, 'kappa_I');
M_.param_names = char(M_.param_names, 'varphi');
M_.param_names_tex = char(M_.param_names_tex, 'varphi');
M_.param_names_long = char(M_.param_names_long, 'varphi');
M_.param_names = char(M_.param_names, 'kappa');
M_.param_names_tex = char(M_.param_names_tex, 'kappa');
M_.param_names_long = char(M_.param_names_long, 'kappa');
M_.param_names = char(M_.param_names, 'A_ss');
M_.param_names_tex = char(M_.param_names_tex, 'A\_ss');
M_.param_names_long = char(M_.param_names_long, 'A_ss');
M_.param_names = char(M_.param_names, 'rho_i');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_i');
M_.param_names_long = char(M_.param_names_long, 'rho_i');
M_.param_names = char(M_.param_names, 'omega_pi');
M_.param_names_tex = char(M_.param_names_tex, 'omega\_pi');
M_.param_names_long = char(M_.param_names_long, 'omega_pi');
M_.param_names = char(M_.param_names, 'rho_A');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_A');
M_.param_names_long = char(M_.param_names_long, 'rho_A');
M_.param_names = char(M_.param_names, 'rho_Rstar');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_Rstar');
M_.param_names_long = char(M_.param_names_long, 'rho_Rstar');
M_.param_names = char(M_.param_names, 'rho_Ystar');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_Ystar');
M_.param_names_long = char(M_.param_names_long, 'rho_Ystar');
M_.param_names = char(M_.param_names, 'sigma_i');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_i');
M_.param_names_long = char(M_.param_names_long, 'sigma_i');
M_.param_names = char(M_.param_names, 'sigma_istar');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_istar');
M_.param_names_long = char(M_.param_names_long, 'sigma_istar');
M_.param_names = char(M_.param_names, 'sigma_A');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_A');
M_.param_names_long = char(M_.param_names_long, 'sigma_A');
M_.param_names = char(M_.param_names, 'sigma_Ystar');
M_.param_names_tex = char(M_.param_names_tex, 'sigma\_Ystar');
M_.param_names_long = char(M_.param_names_long, 'sigma_Ystar');
M_.param_names = char(M_.param_names, 'c_share');
M_.param_names_tex = char(M_.param_names_tex, 'c\_share');
M_.param_names_long = char(M_.param_names_long, 'c_share');
M_.param_names = char(M_.param_names, 'rho_dc');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_dc');
M_.param_names_long = char(M_.param_names_long, 'rho_dc');
M_.param_names = char(M_.param_names, 'rho_m');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_m');
M_.param_names_long = char(M_.param_names_long, 'rho_m');
M_.param_names = char(M_.param_names, 'rho_cryp');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_cryp');
M_.param_names_long = char(M_.param_names_long, 'rho_cryp');
M_.param_names = char(M_.param_names, 'mu_dc');
M_.param_names_tex = char(M_.param_names_tex, 'mu\_dc');
M_.param_names_long = char(M_.param_names_long, 'mu_dc');
M_.param_names = char(M_.param_names, 'mu_m');
M_.param_names_tex = char(M_.param_names_tex, 'mu\_m');
M_.param_names_long = char(M_.param_names_long, 'mu_m');
M_.param_names = char(M_.param_names, 'mu_c');
M_.param_names_tex = char(M_.param_names_tex, 'mu\_c');
M_.param_names_long = char(M_.param_names_long, 'mu_c');
M_.param_names = char(M_.param_names, 'kappa_e');
M_.param_names_tex = char(M_.param_names_tex, 'kappa\_e');
M_.param_names_long = char(M_.param_names_long, 'kappa_e');
M_.param_names = char(M_.param_names, 'rho_e');
M_.param_names_tex = char(M_.param_names_tex, 'rho\_e');
M_.param_names_long = char(M_.param_names_long, 'rho_e');
M_.param_names = char(M_.param_names, 'ep_m');
M_.param_names_tex = char(M_.param_names_tex, 'ep\_m');
M_.param_names_long = char(M_.param_names_long, 'ep_m');
M_.param_names = char(M_.param_names, 'mi');
M_.param_names_tex = char(M_.param_names_tex, 'mi');
M_.param_names_long = char(M_.param_names_long, 'mi');
M_.param_names = char(M_.param_names, 'midc');
M_.param_names_tex = char(M_.param_names_tex, 'midc');
M_.param_names_long = char(M_.param_names_long, 'midc');
M_.param_names = char(M_.param_names, 'Gamma');
M_.param_names_tex = char(M_.param_names_tex, 'Gamma');
M_.param_names_long = char(M_.param_names_long, 'Gamma');
M_.param_names = char(M_.param_names, 'chi_dc');
M_.param_names_tex = char(M_.param_names_tex, 'chi\_dc');
M_.param_names_long = char(M_.param_names_long, 'chi_dc');
M_.param_names = char(M_.param_names, 'trs_ss');
M_.param_names_tex = char(M_.param_names_tex, 'trs\_ss');
M_.param_names_long = char(M_.param_names_long, 'trs_ss');
M_.param_names = char(M_.param_names, 'm_ss');
M_.param_names_tex = char(M_.param_names_tex, 'm\_ss');
M_.param_names_long = char(M_.param_names_long, 'm_ss');
M_.param_names = char(M_.param_names, 'DC_ss');
M_.param_names_tex = char(M_.param_names_tex, 'DC\_ss');
M_.param_names_long = char(M_.param_names_long, 'DC_ss');
M_.param_names = char(M_.param_names, 'Lambda_ss');
M_.param_names_tex = char(M_.param_names_tex, 'Lambda\_ss');
M_.param_names_long = char(M_.param_names_long, 'Lambda_ss');
M_.param_names = char(M_.param_names, 'gam_ss');
M_.param_names_tex = char(M_.param_names_tex, 'gam\_ss');
M_.param_names_long = char(M_.param_names_long, 'gam_ss');
M_.param_names = char(M_.param_names, 'opt_pi');
M_.param_names_tex = char(M_.param_names_tex, 'opt\_pi');
M_.param_names_long = char(M_.param_names_long, 'opt_pi');
M_.param_names = char(M_.param_names, 'opt_y');
M_.param_names_tex = char(M_.param_names_tex, 'opt\_y');
M_.param_names_long = char(M_.param_names_long, 'opt_y');
M_.param_names = char(M_.param_names, 'opt_ex');
M_.param_names_tex = char(M_.param_names_tex, 'opt\_ex');
M_.param_names_long = char(M_.param_names_long, 'opt_ex');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 6;
M_.endo_nbr = 67;
M_.param_nbr = 49;
M_.orig_endo_nbr = 67;
M_.aux_vars = [];
M_.Sigma_e = zeros(6, 6);
M_.Correlation_matrix = eye(6, 6);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 0;
erase_compiled_function('cdbc_markdown_static');
erase_compiled_function('cdbc_markdown_dynamic');
M_.orig_eq_nbr = 67;
M_.eq_nbr = 67;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 15 82;
 0 16 83;
 0 17 0;
 0 18 0;
 0 19 84;
 0 20 0;
 0 21 0;
 1 22 0;
 0 23 0;
 2 24 0;
 0 25 0;
 0 26 85;
 0 27 0;
 3 28 0;
 4 29 86;
 0 30 87;
 0 31 0;
 0 32 0;
 5 33 0;
 0 34 0;
 6 35 0;
 0 36 0;
 7 37 0;
 0 38 0;
 0 39 88;
 0 40 0;
 0 41 0;
 0 42 0;
 0 43 0;
 8 44 0;
 9 45 0;
 10 46 0;
 0 47 0;
 0 48 0;
 0 49 0;
 0 50 0;
 0 51 0;
 11 52 0;
 0 53 0;
 12 54 0;
 13 55 0;
 0 56 0;
 0 57 0;
 0 58 0;
 0 59 89;
 14 60 0;
 0 61 0;
 0 62 0;
 0 63 0;
 0 64 0;
 0 65 0;
 0 66 0;
 0 67 0;
 0 68 0;
 0 69 0;
 0 70 0;
 0 71 0;
 0 72 0;
 0 73 0;
 0 74 0;
 0 75 0;
 0 76 0;
 0 77 0;
 0 78 0;
 0 79 0;
 0 80 0;
 0 81 0;]';
M_.nstatic = 46;
M_.nfwrd   = 7;
M_.npred   = 13;
M_.nboth   = 1;
M_.nsfwrd   = 8;
M_.nspred   = 14;
M_.ndynamic   = 21;
M_.equations_tags = {
  3 , 'name' , 'investment cost of adjustment' ;
  4 , 'name' , 'extra management cost of buying equity' ;
  5 , 'name' , 'cost of borrowing from foreigners' ;
  6 , 'name' , 'fraction of assets diverted' ;
  7 , 'name' , 'marginal cost, eq. (2)' ;
  8 , 'name' , 'FOC wrt P_{i,t}, eq. (3)' ;
  9 , 'name' , 'domestic output, eq. (4)' ;
  10 , 'name' , 'import to capital share ratio, eq. (5)' ;
  11 , 'name' , 'wage to capital share ratio, eq. (6)' ;
  12 , 'name' , 'law of motion of capital, eq. (7)' ;
  13 , 'name' , 'exports, eq. (8)' ;
  21 , 'name' , 'FOC wrt cbdc' ;
  22 , 'name' , 'FOC wrt money' ;
  23 , 'name' , 'FOC wrt crypto' ;
  24 , 'name' , 'FOC wrt labour, eq. (9)' ;
  25 , 'name' , 'FOC wrt savings in equity, eq. (10)' ;
  26 , 'name' , 'FOC wrt savings in deposits, eq. (11)' ;
  27 , 'name' , 'FOC wrt investment goods, eq. (12)' ;
  28 , 'name' , 'excess return on capital over home deposits, eq. (17)' ;
  29 , 'name' , 'cost advantage of crypto currency debt over home deposits, eq. (18)' ;
  30 , 'name' , 'cost advantage of foreign currency debt over home deposits, eq. (18)' ;
  31 , 'name' , 'marginal cost of deposit, eq. (19)' ;
  32 , 'name' , 'bank leverage multiple, eq. (20)' ;
  33 , 'name' , 'Tobin Q ratio of the bank, eq. (21)' ;
  34 , 'name' , 'fraction of assets financed by foreign borrowing, eq. (22)' ;
  35 , 'name' , 'output, eq. (23)' ;
  36 , 'name' , 'law of motion of net foreign debt, eq. (24)' ;
  37 , 'name' , 'aggregate net worth of banks, eq. (25)' ;
  38 , 'name' , 'aggregate balance sheet of the bank, eq. (26)' ;
  39 , 'name' , 'aggregate balance sheet of the bank, eq. (27)' ;
  40 , 'name' , 'aggregate balance sheet of the bank, eq. (28)' ;
  41 , 'name' , 'aggregate balance sheet of the bank, eq. (28)' ;
  42 , 'name' , 'aggregate capital, eq. (29)' ;
  44 , 'name' , 'Taylor rule, eq. (30)' ;
  45 , 'name' , 'productivity' ;
  46 , 'name' , 'foreign income' ;
  47 , 'name' , 'foreign interest rate' ;
  48 , 'name' , 'Net output, pg. 21' ;
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:6];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(67, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(6, 1);
M_.params = NaN(49, 1);
M_.NNZDerivatives = [274; 503; -1];
load par1
set_param_value('c_share',c_share);
M_.params( 47 ) = 1.49;
opt_pi = M_.params( 47 );
M_.params( 48 ) = 0.26;
opt_y = M_.params( 48 );
M_.params( 49 ) = 0.3;
opt_ex = M_.params( 49 );
M_.params( 1 ) = 0.401;
theta = M_.params( 1 );
M_.params( 2 ) = 0.401;
theta_0 = M_.params( 2 );
M_.params( 3 ) = 0.94;
sigma = M_.params( 3 );
M_.params( 4 ) = 0.0045;
xi = M_.params( 4 );
M_.params( 5 ) = 0.0197;
varkappa_b = M_.params( 5 );
M_.params( 6 ) = 0.9852216748768474;
betta = M_.params( 6 );
M_.params( 7 ) = 0.3333333333333333;
zeta = M_.params( 7 );
M_.params( 8 ) = 7.883;
zeta_0 = M_.params( 8 );
M_.params( 9 ) = 0.0197;
varkappa_h = M_.params( 9 );
M_.params( 10 ) = 0.3;
alphha_K = M_.params( 10 );
M_.params( 11 ) = 0.18;
alphha_M = M_.params( 11 );
M_.params( 12 ) = 0.98;
lambda = M_.params( 12 );
M_.params( 13 ) = 9;
eta = M_.params( 13 );
M_.params( 14 ) = 0.6666666666666666;
omega = M_.params( 14 );
M_.params( 17 ) = (M_.params(13)-1)*M_.params(14)/((1-M_.params(14))*(1-M_.params(14)*M_.params(6)));
kappa = M_.params( 17 );
M_.params( 15 ) = 0.6666666666666666;
kappa_I = M_.params( 15 );
M_.params( 16 ) = 1;
varphi = M_.params( 16 );
M_.params( 19 ) = 0.8;
rho_i = M_.params( 19 );
M_.params( 20 ) = 1.5;
omega_pi = M_.params( 20 );
M_.params( 21 ) = 0.95;
rho_A = M_.params( 21 );
M_.params( 22 ) = 0.9;
rho_Rstar = M_.params( 22 );
M_.params( 23 ) = 0.9;
rho_Ystar = M_.params( 23 );
M_.params( 24 ) = 0.0025;
sigma_i = M_.params( 24 );
M_.params( 25 ) = 0.0025;
sigma_istar = M_.params( 25 );
M_.params( 26 ) = 0.013;
sigma_A = M_.params( 26 );
M_.params( 27 ) = 0.03;
sigma_Ystar = M_.params( 27 );
M_.params( 18 ) = 1;
A_ss = M_.params( 18 );
M_.params( 32 ) = 0.55;
mu_dc = M_.params( 32 );
M_.params( 33 ) = 0.5;
mu_m = M_.params( 33 );
M_.params( 34 ) = 0.0025;
mu_c = M_.params( 34 );
M_.params( 30 ) = 10.62;
rho_m = M_.params( 30 );
M_.params( 29 ) = 2;
rho_dc = M_.params( 29 );
M_.params( 31 ) = M_.params(30)+M_.params(30)*0.975;
rho_cryp = M_.params( 31 );
M_.params( 35 ) = 0.85;
kappa_e = M_.params( 35 );
M_.params( 36 ) = 0.15;
rho_e = M_.params( 36 );
M_.params( 37 ) = 1;
ep_m = M_.params( 37 );
M_.params( 38 ) = 0.5;
mi = M_.params( 38 );
M_.params( 39 ) = 0.55;
midc = M_.params( 39 );
M_.params( 40 ) = 0.5;
Gamma = M_.params( 40 );
M_.params( 41 ) = 0.5;
chi_dc = M_.params( 41 );
load par_ss;
set_param_value('trs_ss',trs_ss);
set_param_value('m_ss',m_ss);
set_param_value('DC_ss',DC_ss);
set_param_value('Lambda_ss',Lambda_ss);
set_param_value('gam_ss',gam_ss);
%
% INITVAL instructions
%
options_.initval_file = 0;
oo_.steady_state( 11 ) = 0.888888888889;
oo_.steady_state( 5 ) = 1.000000000000;
oo_.steady_state( 12 ) = 0.040176807752;
oo_.steady_state( 13 ) = 5.093643628053;
oo_.steady_state( 14 ) = 1.015000000000;
oo_.steady_state( 15 ) = 1.000000000000;
oo_.steady_state( 16 ) = 1.000000000000;
oo_.steady_state( 2 ) = 2.972958356366;
oo_.steady_state( 17 ) = 0.475673337019;
oo_.steady_state( 18 ) = 0.269780832425;
oo_.steady_state( 3 ) = 1.983567689979;
oo_.steady_state( 4 ) = 0.394650017956;
oo_.steady_state( 19 ) = 19.732500897785;
oo_.steady_state( 20 ) = 0.547226923538;
oo_.steady_state( 6 ) = 3.632645017032;
oo_.steady_state( 21 ) = 14.623783255893;
oo_.steady_state( 22 ) = 5.108717641892;
oo_.steady_state( 23 ) = 3.841218035022;
oo_.steady_state( 10 ) = 7.155358651976;
oo_.steady_state( 48 ) = 0.150210597409;
oo_.steady_state( 24 ) = 0.489296000000;
oo_.steady_state( 25 ) = 1.604000000000;
oo_.steady_state( 27 ) = 1.567760000000;
oo_.steady_state( 28 ) = 0.007996051351;
oo_.steady_state( 47 ) = 0.023168866995;
oo_.steady_state( 29 ) = 0.007722955665;
oo_.steady_state( 30 ) = 1.000000000000;
oo_.steady_state( 32 ) = 0.547226923538;
oo_.steady_state( 31 ) = 1.010000000000;
oo_.steady_state( 26 ) = 4.025657114121;
oo_.steady_state( 34 ) = 0.401000000000;
oo_.steady_state( 35 ) = 0.013028004478;
oo_.steady_state( 36 ) = 0.034485720415;
oo_.steady_state( 33 ) = 0.000000000000;
oo_.steady_state( 26 ) = oo_.steady_state(27)/(oo_.steady_state(34)+oo_.steady_state(27)*M_.params(5)/2*oo_.steady_state(24)^2-(oo_.steady_state(28)+oo_.steady_state(24)*oo_.steady_state(29)+oo_.steady_state(47)*oo_.steady_state(48)));
oo_.steady_state( 37 ) = oo_.steady_state(2)-oo_.steady_state(15)*oo_.steady_state(17)-oo_.steady_state(35)-oo_.steady_state(36);
oo_.steady_state( 38 ) = 1;
oo_.steady_state( 41 ) = 1;
oo_.steady_state( 39 ) = oo_.steady_state(14)-(1/M_.params(6)-1);
oo_.steady_state( 44 ) = M_.params(42);
oo_.steady_state( 9 ) = M_.params(43);
oo_.steady_state( 7 ) = M_.params(44);
oo_.steady_state( 45 ) = M_.params(45);
oo_.steady_state( 8 ) = ((oo_.steady_state(45)-M_.params(6)*oo_.steady_state(45)*oo_.steady_state(41)/oo_.steady_state(5))/M_.params(34))^(1/(-M_.params(31)));
oo_.steady_state( 48 ) = oo_.steady_state(8)/oo_.steady_state(21);
oo_.steady_state( 40 ) = 1;
oo_.steady_state( 43 ) = M_.params(46);
oo_.steady_state( 42 ) = M_.params(6);
oo_.steady_state( 12 ) = (1+M_.params(9)*oo_.steady_state(22)/oo_.steady_state(19))/oo_.steady_state(42)-M_.params(12);
oo_.steady_state( 49 ) = 1;
oo_.steady_state( 46 ) = 0;
oo_.steady_state( 51 ) = log(oo_.steady_state(2));
oo_.steady_state( 52 ) = log(oo_.steady_state(5));
oo_.steady_state( 53 ) = log(oo_.steady_state(14));
oo_.steady_state( 54 ) = log(oo_.steady_state(4));
oo_.steady_state( 55 ) = log(oo_.steady_state(18));
oo_.steady_state( 56 ) = log(oo_.steady_state(3));
oo_.steady_state( 57 ) = log(oo_.steady_state(20));
oo_.steady_state( 58 ) = log(oo_.steady_state(17));
oo_.steady_state( 59 ) = log(oo_.steady_state(23));
oo_.steady_state( 60 ) = log(oo_.steady_state(10));
oo_.steady_state( 61 ) = log(oo_.steady_state(6));
oo_.steady_state( 62 ) = (oo_.steady_state(12)+M_.params(12)*oo_.steady_state(16))/oo_.steady_state(16)-oo_.steady_state(14)/oo_.steady_state(5);
oo_.steady_state( 63 ) = log(oo_.steady_state(7));
oo_.steady_state( 64 ) = log(oo_.steady_state(9));
oo_.steady_state( 65 ) = log(oo_.steady_state(26));
oo_.steady_state( 66 ) = oo_.steady_state(20)-oo_.steady_state(17);
oo_.steady_state( 67 ) = log(oo_.steady_state(8));
oo_.steady_state( 50 ) = log(oo_.steady_state(3)-M_.params(8)/(1+M_.params(7))*oo_.steady_state(18)^(1+M_.params(7)))-M_.params(41)*(M_.params(40)-oo_.steady_state(44))^2+M_.params(34)*oo_.steady_state(8)^(1-M_.params(31))/(1-M_.params(31));
oo_.steady_state( 1 ) = oo_.steady_state(50)/(1-M_.params(6));
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.0025)^2;
M_.Sigma_e(2, 2) = (0.01)^2;
M_.Sigma_e(3, 3) = (0.0025)^2;
options_.irf = 40;
options_.nograph = 1;
options_.noprint = 1;
options_.order = 2;
var_list_ = char();
info = stoch_simul(var_list_);
save('cdbc_markdown_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('cdbc_markdown_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('cdbc_markdown_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('cdbc_markdown_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('cdbc_markdown_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('cdbc_markdown_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('cdbc_markdown_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
