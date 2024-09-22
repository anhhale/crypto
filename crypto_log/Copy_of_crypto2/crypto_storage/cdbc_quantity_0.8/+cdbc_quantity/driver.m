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
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'cdbc_quantity';
M_.dynare_version = '5.1';
oo_.dynare_version = '5.1';
options_.dynare_version = '5.1';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(6,1);
M_.exo_names_tex = cell(6,1);
M_.exo_names_long = cell(6,1);
M_.exo_names(1) = {'varepsilon_R'};
M_.exo_names_tex(1) = {'\varepsilon^{R}'};
M_.exo_names_long(1) = {'shock process for domestic interest rate'};
M_.exo_names(2) = {'varepsilon_A'};
M_.exo_names_tex(2) = {'\varepsilon^{A}'};
M_.exo_names_long(2) = {'shock process for TFP'};
M_.exo_names(3) = {'varepsilon_Rstar'};
M_.exo_names_tex(3) = {'\varepsilon^{R*}'};
M_.exo_names_long(3) = {'shock process for foreign interest rate'};
M_.exo_names(4) = {'varepsilon_Ystar'};
M_.exo_names_tex(4) = {'\varepsilon^{Y*}'};
M_.exo_names_long(4) = {'shock process for foreign income'};
M_.exo_names(5) = {'eps_Rc'};
M_.exo_names_tex(5) = {'eps\_Rc'};
M_.exo_names_long(5) = {'eps_Rc'};
M_.exo_names(6) = {'vol'};
M_.exo_names_tex(6) = {'vol'};
M_.exo_names_long(6) = {'vol'};
M_.endo_names = cell(67,1);
M_.endo_names_tex = cell(67,1);
M_.endo_names_long = cell(67,1);
M_.endo_names(1) = {'mc'};
M_.endo_names_tex(1) = {'mc'};
M_.endo_names_long(1) = {'marginal cost'};
M_.endo_names(2) = {'Pi'};
M_.endo_names_tex(2) = {'\Pi'};
M_.endo_names_long(2) = {'gross inflation'};
M_.endo_names(3) = {'Z'};
M_.endo_names_tex(3) = {'Z'};
M_.endo_names_long(3) = {'rental price of capital'};
M_.endo_names(4) = {'w'};
M_.endo_names_tex(4) = {'w'};
M_.endo_names_long(4) = {'real wages'};
M_.endo_names(5) = {'R'};
M_.endo_names_tex(5) = {'R'};
M_.endo_names_long(5) = {'gross real interest rate'};
M_.endo_names(6) = {'epsilon'};
M_.endo_names_tex(6) = {'\epsilon'};
M_.endo_names_long(6) = {'real exchange rate'};
M_.endo_names(7) = {'Q'};
M_.endo_names_tex(7) = {'Q'};
M_.endo_names_long(7) = {'equity price'};
M_.endo_names(8) = {'Y'};
M_.endo_names_tex(8) = {'Y'};
M_.endo_names_long(8) = {'output'};
M_.endo_names(9) = {'M'};
M_.endo_names_tex(9) = {'M'};
M_.endo_names_long(9) = {'imports'};
M_.endo_names(10) = {'L'};
M_.endo_names_tex(10) = {'L'};
M_.endo_names_long(10) = {'labour supply'};
M_.endo_names(11) = {'C'};
M_.endo_names_tex(11) = {'C'};
M_.endo_names_long(11) = {'consumption'};
M_.endo_names(12) = {'I'};
M_.endo_names_tex(12) = {'I'};
M_.endo_names_long(12) = {'investment'};
M_.endo_names(13) = {'K'};
M_.endo_names_tex(13) = {'K'};
M_.endo_names_long(13) = {'capital stock'};
M_.endo_names(14) = {'EX'};
M_.endo_names_tex(14) = {'EX'};
M_.endo_names_long(14) = {'exports'};
M_.endo_names(15) = {'N'};
M_.endo_names_tex(15) = {'N'};
M_.endo_names_long(15) = {'net worth'};
M_.endo_names(16) = {'K_b'};
M_.endo_names_tex(16) = {'K^{b}'};
M_.endo_names_long(16) = {'bank capital'};
M_.endo_names(17) = {'K_h'};
M_.endo_names_tex(17) = {'K^{h}'};
M_.endo_names_long(17) = {'household capital'};
M_.endo_names(18) = {'D'};
M_.endo_names_tex(18) = {'D'};
M_.endo_names_long(18) = {'domestic deposits'};
M_.endo_names(19) = {'D_star'};
M_.endo_names_tex(19) = {'D^{*}'};
M_.endo_names_long(19) = {'foreign deposits'};
M_.endo_names(20) = {'x'};
M_.endo_names_tex(20) = {'x'};
M_.endo_names_long(20) = {'fraction of assets financed by foreign borrowing'};
M_.endo_names(21) = {'psi'};
M_.endo_names_tex(21) = {'\psi'};
M_.endo_names_long(21) = {'Tobin Q ratio of the bank'};
M_.endo_names(22) = {'phi'};
M_.endo_names_tex(22) = {'\phi'};
M_.endo_names_long(22) = {'leverage multiple (Qk/n)'};
M_.endo_names(23) = {'upsilon'};
M_.endo_names_tex(23) = {'\upsilon'};
M_.endo_names_long(23) = {'marginal cost of deposits'};
M_.endo_names(24) = {'mu'};
M_.endo_names_tex(24) = {'\mu'};
M_.endo_names_long(24) = {'excess return on capital over home deposits'};
M_.endo_names(25) = {'mu_star'};
M_.endo_names_tex(25) = {'\mu^{*}'};
M_.endo_names_long(25) = {'cost advantage of foreign currency debt over home deposits'};
M_.endo_names(26) = {'A'};
M_.endo_names_tex(26) = {'A'};
M_.endo_names_long(26) = {'total factor productivity'};
M_.endo_names(27) = {'R_star'};
M_.endo_names_tex(27) = {'R^{*}'};
M_.endo_names_long(27) = {'foreign gross interest rate'};
M_.endo_names(28) = {'Y_star'};
M_.endo_names_tex(28) = {'Y^{*}'};
M_.endo_names_long(28) = {'foreign income'};
M_.endo_names(29) = {'Phi'};
M_.endo_names_tex(29) = {'\Phi'};
M_.endo_names_long(29) = {'investment cost of adjustment'};
M_.endo_names(30) = {'Theta'};
M_.endo_names_tex(30) = {'\Theta(x_{t})'};
M_.endo_names_long(30) = {'fraction of banker assets diverted'};
M_.endo_names(31) = {'chi_h'};
M_.endo_names_tex(31) = {'\chi^{h}'};
M_.endo_names_long(31) = {'worker extra management cost of buying equity'};
M_.endo_names(32) = {'chi_b'};
M_.endo_names_tex(32) = {'\chi^{b}'};
M_.endo_names_long(32) = {'cost of borrowing from foreigners'};
M_.endo_names(33) = {'Ynet'};
M_.endo_names_tex(33) = {'Y^{net}'};
M_.endo_names_long(33) = {'net output'};
M_.endo_names(34) = {'P_c'};
M_.endo_names_tex(34) = {'P\_c'};
M_.endo_names_long(34) = {'P_c'};
M_.endo_names(35) = {'R_dc'};
M_.endo_names_tex(35) = {'R\_dc'};
M_.endo_names_long(35) = {'R_dc'};
M_.endo_names(36) = {'P_dc'};
M_.endo_names_tex(36) = {'P\_dc'};
M_.endo_names_long(36) = {'P_dc'};
M_.endo_names(37) = {'theta_c'};
M_.endo_names_tex(37) = {'theta\_c'};
M_.endo_names_long(37) = {'theta_c'};
M_.endo_names(38) = {'cryp'};
M_.endo_names_tex(38) = {'cryp'};
M_.endo_names_long(38) = {'cryp'};
M_.endo_names(39) = {'DC'};
M_.endo_names_tex(39) = {'DC'};
M_.endo_names_long(39) = {'DC'};
M_.endo_names(40) = {'DC_sup'};
M_.endo_names_tex(40) = {'DC\_sup'};
M_.endo_names_long(40) = {'DC_sup'};
M_.endo_names(41) = {'m'};
M_.endo_names_tex(41) = {'m'};
M_.endo_names_long(41) = {'m'};
M_.endo_names(42) = {'R_c'};
M_.endo_names_tex(42) = {'R\_c'};
M_.endo_names_long(42) = {'R_c'};
M_.endo_names(43) = {'Lambda'};
M_.endo_names_tex(43) = {'Lambda'};
M_.endo_names_long(43) = {'Lambda'};
M_.endo_names(44) = {'gam'};
M_.endo_names_tex(44) = {'gam'};
M_.endo_names_long(44) = {'gam'};
M_.endo_names(45) = {'trs'};
M_.endo_names_tex(45) = {'trs'};
M_.endo_names_long(45) = {'trs'};
M_.endo_names(46) = {'Lambda1'};
M_.endo_names_tex(46) = {'Lambda1'};
M_.endo_names_long(46) = {'Lambda1'};
M_.endo_names(47) = {'sigma_Rc'};
M_.endo_names_tex(47) = {'sigma\_Rc'};
M_.endo_names_long(47) = {'sigma_Rc'};
M_.endo_names(48) = {'mu_cryp'};
M_.endo_names_tex(48) = {'mu\_cryp'};
M_.endo_names_long(48) = {'mu_cryp'};
M_.endo_names(49) = {'x_c'};
M_.endo_names_tex(49) = {'x\_c'};
M_.endo_names_long(49) = {'x_c'};
M_.endo_names(50) = {'DE'};
M_.endo_names_tex(50) = {'DE'};
M_.endo_names_long(50) = {'DE'};
M_.endo_names(51) = {'logY'};
M_.endo_names_tex(51) = {'logY'};
M_.endo_names_long(51) = {'logY'};
M_.endo_names(52) = {'logPi'};
M_.endo_names_tex(52) = {'logPi'};
M_.endo_names_long(52) = {'logPi'};
M_.endo_names(53) = {'logR'};
M_.endo_names_tex(53) = {'logR'};
M_.endo_names_long(53) = {'logR'};
M_.endo_names(54) = {'logI'};
M_.endo_names_tex(54) = {'logI'};
M_.endo_names_long(54) = {'logI'};
M_.endo_names(55) = {'logL'};
M_.endo_names_tex(55) = {'logL'};
M_.endo_names_long(55) = {'logL'};
M_.endo_names(56) = {'logC'};
M_.endo_names_tex(56) = {'logC'};
M_.endo_names_long(56) = {'logC'};
M_.endo_names(57) = {'logEX'};
M_.endo_names_tex(57) = {'logEX'};
M_.endo_names_long(57) = {'logEX'};
M_.endo_names(58) = {'logM'};
M_.endo_names_tex(58) = {'logM'};
M_.endo_names_long(58) = {'logM'};
M_.endo_names(59) = {'logD'};
M_.endo_names_tex(59) = {'logD'};
M_.endo_names_long(59) = {'logD'};
M_.endo_names(60) = {'logD_star'};
M_.endo_names_tex(60) = {'logD\_star'};
M_.endo_names_long(60) = {'logD_star'};
M_.endo_names(61) = {'logN'};
M_.endo_names_tex(61) = {'logN'};
M_.endo_names_long(61) = {'logN'};
M_.endo_names(62) = {'spread'};
M_.endo_names_tex(62) = {'spread'};
M_.endo_names_long(62) = {'spread'};
M_.endo_names(63) = {'logDC'};
M_.endo_names_tex(63) = {'logDC'};
M_.endo_names_long(63) = {'logDC'};
M_.endo_names(64) = {'logm'};
M_.endo_names_tex(64) = {'logm'};
M_.endo_names_long(64) = {'logm'};
M_.endo_names(65) = {'leverage'};
M_.endo_names_tex(65) = {'leverage'};
M_.endo_names_long(65) = {'leverage'};
M_.endo_names(66) = {'TB'};
M_.endo_names_tex(66) = {'TB'};
M_.endo_names_long(66) = {'TB'};
M_.endo_names(67) = {'logcryp'};
M_.endo_names_tex(67) = {'logcryp'};
M_.endo_names_long(67) = {'logcryp'};
M_.endo_partitions = struct();
M_.param_names = cell(46,1);
M_.param_names_tex = cell(46,1);
M_.param_names_long = cell(46,1);
M_.param_names(1) = {'theta'};
M_.param_names_tex(1) = {'\theta'};
M_.param_names_long(1) = {'elasticity of leverage wrt foreign borrowing'};
M_.param_names(2) = {'theta_0'};
M_.param_names_tex(2) = {'\theta_{0}'};
M_.param_names_long(2) = {'home bias in funding'};
M_.param_names(3) = {'sigma'};
M_.param_names_tex(3) = {'\sigma'};
M_.param_names_long(3) = {'survival probability'};
M_.param_names(4) = {'xi'};
M_.param_names_tex(4) = {'\xi'};
M_.param_names_long(4) = {'fraction of total assets brought by new banks'};
M_.param_names(5) = {'varkappa_b'};
M_.param_names_tex(5) = {'\varkappa^{b}'};
M_.param_names_long(5) = {'management cost for foreign borrowing'};
M_.param_names(6) = {'betta'};
M_.param_names_tex(6) = {'\beta'};
M_.param_names_long(6) = {'discount rate'};
M_.param_names(7) = {'zeta'};
M_.param_names_tex(7) = {'\zeta'};
M_.param_names_long(7) = {'inverse of Frisch elasticity of labour supply'};
M_.param_names(8) = {'zeta_0'};
M_.param_names_tex(8) = {'\zeta_{0}'};
M_.param_names_long(8) = {'inverse of labour supply capacity'};
M_.param_names(9) = {'varkappa_h'};
M_.param_names_tex(9) = {'\varkappa_{h}'};
M_.param_names_long(9) = {'cost parameter of direct finance'};
M_.param_names(10) = {'alphha_K'};
M_.param_names_tex(10) = {'\alpha_{K}'};
M_.param_names_long(10) = {'cost share of capital'};
M_.param_names(11) = {'alphha_M'};
M_.param_names_tex(11) = {'\alpha_{M}'};
M_.param_names_long(11) = {'cost share of imported intermediate goods'};
M_.param_names(12) = {'lambda'};
M_.param_names_tex(12) = {'\lambda'};
M_.param_names_long(12) = {'one minus the depreciation rate'};
M_.param_names(13) = {'eta'};
M_.param_names_tex(13) = {'\eta'};
M_.param_names_long(13) = {'elasticity of demand'};
M_.param_names(14) = {'omega'};
M_.param_names_tex(14) = {'\omega'};
M_.param_names_long(14) = {'pins down kappa (slope of NKPC)'};
M_.param_names(15) = {'kappa_I'};
M_.param_names_tex(15) = {'\kappa_{I}'};
M_.param_names_long(15) = {'cost of adjusting investment goods production'};
M_.param_names(16) = {'varphi'};
M_.param_names_tex(16) = {'\varphi'};
M_.param_names_long(16) = {'price elasticity of export demand'};
M_.param_names(17) = {'kappa'};
M_.param_names_tex(17) = {'\kappa'};
M_.param_names_long(17) = {'slope of NKPC'};
M_.param_names(18) = {'A_ss'};
M_.param_names_tex(18) = {'\bar{A}'};
M_.param_names_long(18) = {'steady state productivity'};
M_.param_names(19) = {'rho_i'};
M_.param_names_tex(19) = {'\rho_{i}'};
M_.param_names_long(19) = {'Taylor rule persistence'};
M_.param_names(20) = {'omega_pi'};
M_.param_names_tex(20) = {'\omega_{\pi}'};
M_.param_names_long(20) = {'Taylor rule response to inflation'};
M_.param_names(21) = {'rho_A'};
M_.param_names_tex(21) = {'\rho_{A}'};
M_.param_names_long(21) = {'TFP persistence'};
M_.param_names(22) = {'rho_Rstar'};
M_.param_names_tex(22) = {'\rho_{R*}'};
M_.param_names_long(22) = {'foreign interest rate persistence'};
M_.param_names(23) = {'rho_Ystar'};
M_.param_names_tex(23) = {'\rho_{Y*}'};
M_.param_names_long(23) = {'foreign income persistence'};
M_.param_names(24) = {'sigma_i'};
M_.param_names_tex(24) = {'\sigma_{i}'};
M_.param_names_long(24) = {'standard deviation of interest rate shock'};
M_.param_names(25) = {'sigma_istar'};
M_.param_names_tex(25) = {'\sigma_{i*}'};
M_.param_names_long(25) = {'standard deviation of foreign interest rate shock'};
M_.param_names(26) = {'sigma_A'};
M_.param_names_tex(26) = {'\sigma_{A}'};
M_.param_names_long(26) = {'standard deviation of TFP shock'};
M_.param_names(27) = {'sigma_Ystar'};
M_.param_names_tex(27) = {'\sigma_{Y*}'};
M_.param_names_long(27) = {'standard deviation of foreign income shock'};
M_.param_names(28) = {'c_share'};
M_.param_names_tex(28) = {'c\_share'};
M_.param_names_long(28) = {'c_share'};
M_.param_names(29) = {'rho_dc'};
M_.param_names_tex(29) = {'rho\_dc'};
M_.param_names_long(29) = {'rho_dc'};
M_.param_names(30) = {'rho_m'};
M_.param_names_tex(30) = {'rho\_m'};
M_.param_names_long(30) = {'rho_m'};
M_.param_names(31) = {'rho_cryp'};
M_.param_names_tex(31) = {'rho\_cryp'};
M_.param_names_long(31) = {'rho_cryp'};
M_.param_names(32) = {'mu_dc'};
M_.param_names_tex(32) = {'mu\_dc'};
M_.param_names_long(32) = {'mu_dc'};
M_.param_names(33) = {'mu_m'};
M_.param_names_tex(33) = {'mu\_m'};
M_.param_names_long(33) = {'mu_m'};
M_.param_names(34) = {'mu_c'};
M_.param_names_tex(34) = {'mu\_c'};
M_.param_names_long(34) = {'mu_c'};
M_.param_names(35) = {'kappa_e'};
M_.param_names_tex(35) = {'kappa\_e'};
M_.param_names_long(35) = {'kappa_e'};
M_.param_names(36) = {'rho_e'};
M_.param_names_tex(36) = {'rho\_e'};
M_.param_names_long(36) = {'rho_e'};
M_.param_names(37) = {'ep_m'};
M_.param_names_tex(37) = {'ep\_m'};
M_.param_names_long(37) = {'ep_m'};
M_.param_names(38) = {'mi'};
M_.param_names_tex(38) = {'mi'};
M_.param_names_long(38) = {'mi'};
M_.param_names(39) = {'midc'};
M_.param_names_tex(39) = {'midc'};
M_.param_names_long(39) = {'midc'};
M_.param_names(40) = {'Gamma'};
M_.param_names_tex(40) = {'Gamma'};
M_.param_names_long(40) = {'Gamma'};
M_.param_names(41) = {'chi_dc'};
M_.param_names_tex(41) = {'chi\_dc'};
M_.param_names_long(41) = {'chi_dc'};
M_.param_names(42) = {'trs_ss'};
M_.param_names_tex(42) = {'trs\_ss'};
M_.param_names_long(42) = {'trs_ss'};
M_.param_names(43) = {'m_ss'};
M_.param_names_tex(43) = {'m\_ss'};
M_.param_names_long(43) = {'m_ss'};
M_.param_names(44) = {'DC_ss'};
M_.param_names_tex(44) = {'DC\_ss'};
M_.param_names_long(44) = {'DC_ss'};
M_.param_names(45) = {'Lambda_ss'};
M_.param_names_tex(45) = {'Lambda\_ss'};
M_.param_names_long(45) = {'Lambda_ss'};
M_.param_names(46) = {'gam_ss'};
M_.param_names_tex(46) = {'gam\_ss'};
M_.param_names_long(46) = {'gam_ss'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 6;
M_.endo_nbr = 67;
M_.param_nbr = 46;
M_.orig_endo_nbr = 67;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(6, 6);
M_.Correlation_matrix = eye(6, 6);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.orig_eq_nbr = 67;
M_.eq_nbr = 67;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 16 0;
 0 17 83;
 0 18 84;
 0 19 0;
 1 20 0;
 2 21 85;
 0 22 86;
 0 23 87;
 0 24 0;
 0 25 0;
 0 26 0;
 0 27 0;
 3 28 0;
 0 29 0;
 0 30 0;
 4 31 0;
 0 32 0;
 5 33 0;
 6 34 0;
 0 35 0;
 0 36 88;
 0 37 0;
 0 38 0;
 0 39 0;
 0 40 0;
 7 41 0;
 8 42 0;
 9 43 0;
 0 44 0;
 0 45 0;
 0 46 0;
 0 47 0;
 0 48 0;
 10 49 0;
 0 50 0;
 11 51 0;
 12 52 0;
 13 53 0;
 0 54 0;
 0 55 0;
 0 56 0;
 14 57 0;
 0 58 0;
 0 59 0;
 0 60 0;
 0 61 89;
 15 62 0;
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
 0 81 0;
 0 82 0;]';
M_.nstatic = 46;
M_.nfwrd   = 6;
M_.npred   = 14;
M_.nboth   = 1;
M_.nsfwrd   = 7;
M_.nspred   = 15;
M_.ndynamic   = 21;
M_.dynamic_tmp_nbr = [30; 5; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , 'Lambda' ;
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
  14 , 'name' , '14' ;
  15 , 'name' , '15' ;
  16 , 'name' , 'DC_sup' ;
  17 , 'name' , 'P_dc' ;
  18 , 'name' , 'R_dc' ;
  19 , 'name' , 'R_c' ;
  20 , 'name' , 'sigma_Rc' ;
  21 , 'name' , 'C' ;
  22 , 'name' , 'trs' ;
  23 , 'name' , 'FOC wrt cbdc' ;
  24 , 'name' , 'FOC wrt money' ;
  25 , 'name' , 'FOC wrt crypto' ;
  26 , 'name' , 'FOC wrt labour, eq. (9)' ;
  27 , 'name' , 'FOC wrt savings in equity, eq. (10)' ;
  28 , 'name' , 'FOC wrt savings in deposits, eq. (11)' ;
  29 , 'name' , 'FOC wrt investment goods, eq. (12)' ;
  30 , 'name' , 'excess return on capital over home deposits, eq. (17)' ;
  31 , 'name' , 'cost advantage of crypto currency debt over home deposits, eq. (18)' ;
  32 , 'name' , 'cost advantage of foreign currency debt over home deposits, eq. (18)' ;
  33 , 'name' , 'marginal cost of deposit, eq. (19)' ;
  34 , 'name' , 'bank leverage multiple, eq. (20)' ;
  35 , 'name' , 'Tobin Q ratio of the bank, eq. (21)' ;
  36 , 'name' , 'fraction of assets financed by foreign borrowing, eq. (22)' ;
  37 , 'name' , 'output, eq. (23)' ;
  38 , 'name' , 'law of motion of net foreign debt, eq. (24)' ;
  39 , 'name' , 'aggregate net worth of banks, eq. (25)' ;
  40 , 'name' , 'aggregate balance sheet of the bank, eq. (26)' ;
  41 , 'name' , 'aggregate balance sheet of the bank, eq. (27)' ;
  42 , 'name' , 'aggregate balance sheet of the bank, eq. (28)' ;
  43 , 'name' , 'aggregate balance sheet of the bank, eq. (28)' ;
  44 , 'name' , 'aggregate capital, eq. (29)' ;
  45 , 'name' , '45' ;
  46 , 'name' , 'Taylor rule, eq. (30)' ;
  47 , 'name' , 'productivity' ;
  48 , 'name' , 'foreign income' ;
  49 , 'name' , 'foreign interest rate' ;
  50 , 'name' , 'Net output, pg. 21' ;
  51 , 'name' , 'logY' ;
  52 , 'name' , 'logPi' ;
  53 , 'name' , 'logR' ;
  54 , 'name' , 'logI' ;
  55 , 'name' , 'logL' ;
  56 , 'name' , 'logC' ;
  57 , 'name' , 'logEX' ;
  58 , 'name' , 'logM' ;
  59 , 'name' , 'logD' ;
  60 , 'name' , 'logD_star' ;
  61 , 'name' , 'logN' ;
  62 , 'name' , 'spread' ;
  63 , 'name' , 'logDC' ;
  64 , 'name' , 'logm' ;
  65 , 'name' , 'leverage' ;
  66 , 'name' , 'TB' ;
  67 , 'name' , 'logcryp' ;
};
M_.mapping.mc.eqidx = [7 8 ];
M_.mapping.Pi.eqidx = [8 23 24 25 28 30 31 32 33 37 39 45 46 50 52 62 ];
M_.mapping.Z.eqidx = [7 10 11 27 30 39 62 ];
M_.mapping.w.eqidx = [7 11 26 ];
M_.mapping.R.eqidx = [28 30 31 32 33 39 46 53 62 ];
M_.mapping.epsilon.eqidx = [7 10 13 32 38 39 41 42 45 50 ];
M_.mapping.Q.eqidx = [5 27 29 30 39 40 41 42 43 62 ];
M_.mapping.Y.eqidx = [8 9 16 37 46 50 51 ];
M_.mapping.M.eqidx = [9 10 38 50 58 66 ];
M_.mapping.L.eqidx = [1 9 11 26 55 ];
M_.mapping.C.eqidx = [1 21 23 24 37 56 ];
M_.mapping.I.eqidx = [3 12 29 37 54 ];
M_.mapping.K.eqidx = [4 9 10 11 12 27 39 44 ];
M_.mapping.EX.eqidx = [13 37 38 57 66 ];
M_.mapping.N.eqidx = [39 40 41 61 ];
M_.mapping.K_b.eqidx = [5 39 40 41 42 43 44 ];
M_.mapping.K_h.eqidx = [4 27 44 ];
M_.mapping.D.eqidx = [39 41 59 ];
M_.mapping.D_star.eqidx = [38 39 41 42 60 ];
M_.mapping.x.eqidx = [5 34 36 40 41 42 ];
M_.mapping.psi.eqidx = [30 31 32 33 35 ];
M_.mapping.phi.eqidx = [34 35 40 65 ];
M_.mapping.upsilon.eqidx = [33 34 36 ];
M_.mapping.mu.eqidx = [30 34 36 ];
M_.mapping.mu_star.eqidx = [32 34 36 ];
M_.mapping.A.eqidx = [7 9 47 ];
M_.mapping.R_star.eqidx = [32 38 39 49 ];
M_.mapping.Y_star.eqidx = [13 48 ];
M_.mapping.Phi.eqidx = [3 29 37 ];
M_.mapping.Theta.eqidx = [6 34 35 ];
M_.mapping.chi_h.eqidx = [4 37 50 ];
M_.mapping.chi_b.eqidx = [5 37 50 ];
M_.mapping.Ynet.eqidx = [50 ];
M_.mapping.P_c.eqidx = [14 19 ];
M_.mapping.R_dc.eqidx = [18 23 ];
M_.mapping.P_dc.eqidx = [17 18 ];
M_.mapping.theta_c.eqidx = [14 15 ];
M_.mapping.cryp.eqidx = [25 39 41 43 67 ];
M_.mapping.DC.eqidx = [17 21 22 23 24 63 ];
M_.mapping.DC_sup.eqidx = [16 17 ];
M_.mapping.m.eqidx = [21 22 23 24 64 ];
M_.mapping.R_c.eqidx = [19 25 31 39 ];
M_.mapping.Lambda.eqidx = [2 8 27 28 30 31 32 33 ];
M_.mapping.gam.eqidx = [1 23 24 ];
M_.mapping.trs.eqidx = [22 23 24 ];
M_.mapping.Lambda1.eqidx = [1 2 23 24 25 ];
M_.mapping.sigma_Rc.eqidx = [20 ];
M_.mapping.mu_cryp.eqidx = [31 34 36 ];
M_.mapping.x_c.eqidx = [34 36 43 ];
M_.mapping.DE.eqidx = [45 46 ];
M_.mapping.logY.eqidx = [51 ];
M_.mapping.logPi.eqidx = [52 ];
M_.mapping.logR.eqidx = [53 ];
M_.mapping.logI.eqidx = [54 ];
M_.mapping.logL.eqidx = [55 ];
M_.mapping.logC.eqidx = [56 ];
M_.mapping.logEX.eqidx = [57 ];
M_.mapping.logM.eqidx = [58 ];
M_.mapping.logD.eqidx = [59 ];
M_.mapping.logD_star.eqidx = [60 ];
M_.mapping.logN.eqidx = [61 ];
M_.mapping.spread.eqidx = [62 ];
M_.mapping.logDC.eqidx = [63 ];
M_.mapping.logm.eqidx = [64 ];
M_.mapping.leverage.eqidx = [65 ];
M_.mapping.TB.eqidx = [66 ];
M_.mapping.logcryp.eqidx = [67 ];
M_.mapping.varepsilon_R.eqidx = [46 ];
M_.mapping.varepsilon_A.eqidx = [47 ];
M_.mapping.varepsilon_Rstar.eqidx = [49 ];
M_.mapping.varepsilon_Ystar.eqidx = [48 ];
M_.mapping.eps_Rc.eqidx = [20 ];
M_.mapping.vol.eqidx = [15 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [5 6 13 16 18 19 26 27 28 34 36 37 38 42 47 ];
M_.exo_names_orig_ord = [1:6];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(67, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(6, 1);
M_.params = NaN(46, 1);
M_.endo_trends = struct('deflator', cell(67, 1), 'log_deflator', cell(67, 1), 'growth_factor', cell(67, 1), 'log_growth_factor', cell(67, 1));
M_.NNZDerivatives = [269; -1; -1; ];
M_.static_tmp_nbr = [31; 6; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
load par1
set_param_value('c_share',c_share);
M_.params(1) = 0.401;
theta = M_.params(1);
M_.params(2) = 0.401;
theta_0 = M_.params(2);
M_.params(3) = 0.94;
sigma = M_.params(3);
M_.params(4) = 0.0045;
xi = M_.params(4);
M_.params(5) = 0.0197;
varkappa_b = M_.params(5);
M_.params(6) = 0.9852216748768474;
betta = M_.params(6);
M_.params(7) = 0.3333333333333333;
zeta = M_.params(7);
M_.params(8) = 7.883;
zeta_0 = M_.params(8);
M_.params(9) = 0.0197;
varkappa_h = M_.params(9);
M_.params(10) = 0.3;
alphha_K = M_.params(10);
M_.params(11) = 0.18;
alphha_M = M_.params(11);
M_.params(12) = 0.98;
lambda = M_.params(12);
M_.params(13) = 9;
eta = M_.params(13);
M_.params(14) = 0.6666666666666666;
omega = M_.params(14);
M_.params(17) = (M_.params(13)-1)*M_.params(14)/((1-M_.params(14))*(1-M_.params(14)*M_.params(6)));
kappa = M_.params(17);
M_.params(15) = 0.6666666666666666;
kappa_I = M_.params(15);
M_.params(16) = 1;
varphi = M_.params(16);
M_.params(19) = 0.8;
rho_i = M_.params(19);
M_.params(20) = 1.5;
omega_pi = M_.params(20);
M_.params(21) = 0.95;
rho_A = M_.params(21);
M_.params(22) = 0.9;
rho_Rstar = M_.params(22);
M_.params(23) = 0.9;
rho_Ystar = M_.params(23);
M_.params(24) = 0.0025;
sigma_i = M_.params(24);
M_.params(25) = 0.0025;
sigma_istar = M_.params(25);
M_.params(26) = 0.013;
sigma_A = M_.params(26);
M_.params(27) = 0.03;
sigma_Ystar = M_.params(27);
M_.params(18) = 1;
A_ss = M_.params(18);
M_.params(32) = 0.55;
mu_dc = M_.params(32);
M_.params(33) = 0.5;
mu_m = M_.params(33);
M_.params(34) = 0.0025;
mu_c = M_.params(34);
M_.params(30) = 10.62;
rho_m = M_.params(30);
M_.params(29) = 2;
rho_dc = M_.params(29);
M_.params(31) = M_.params(30)+M_.params(30)*0.975;
rho_cryp = M_.params(31);
M_.params(35) = 0.85;
kappa_e = M_.params(35);
M_.params(36) = 0.15;
rho_e = M_.params(36);
M_.params(37) = 0.8;
ep_m = M_.params(37);
M_.params(38) = 0.5;
mi = M_.params(38);
M_.params(39) = 0.55;
midc = M_.params(39);
M_.params(40) = 0.5;
Gamma = M_.params(40);
M_.params(41) = 0.5;
chi_dc = M_.params(41);
load par_ss;
set_param_value('trs_ss',trs_ss);
set_param_value('m_ss',m_ss);
set_param_value('DC_ss',DC_ss);
set_param_value('Lambda_ss',Lambda_ss);
set_param_value('gam_ss',gam_ss);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(1) = 0.888888888889;
oo_.steady_state(2) = 1.000000000000;
oo_.steady_state(3) = 0.040176807752;
oo_.steady_state(4) = 5.093643628053;
oo_.steady_state(5) = 1.015000000000;
oo_.steady_state(6) = 1.000000000000;
oo_.steady_state(7) = 1.000000000000;
oo_.steady_state(8) = 2.972958356366;
oo_.steady_state(9) = 0.475673337019;
oo_.steady_state(10) = 0.269780832425;
oo_.steady_state(11) = 1.983567689979;
oo_.steady_state(12) = 0.394650017956;
oo_.steady_state(13) = 19.732500897785;
oo_.steady_state(14) = 0.547226923538;
oo_.steady_state(15) = 3.632645017032;
oo_.steady_state(16) = 14.623783255893;
oo_.steady_state(17) = 5.108717641892;
oo_.steady_state(18) = 3.841218035022;
oo_.steady_state(19) = 7.155358651976;
oo_.steady_state(49) = 0.150210597409;
oo_.steady_state(20) = 0.489296000000;
oo_.steady_state(21) = 1.604000000000;
oo_.steady_state(23) = 1.567760000000;
oo_.steady_state(24) = 0.007996051351;
oo_.steady_state(48) = 0.023168866995;
oo_.steady_state(25) = 0.007722955665;
oo_.steady_state(26) = 1.000000000000;
oo_.steady_state(28) = 0.547226923538;
oo_.steady_state(27) = 1.010000000000;
oo_.steady_state(22) = 4.025657114121;
oo_.steady_state(30) = 0.401000000000;
oo_.steady_state(31) = 0.013028004478;
oo_.steady_state(32) = 0.034485720415;
oo_.steady_state(29) = 0.000000000000;
oo_.steady_state(22) = oo_.steady_state(23)/(oo_.steady_state(30)+oo_.steady_state(23)*M_.params(5)/2*oo_.steady_state(20)^2-(oo_.steady_state(24)+oo_.steady_state(20)*oo_.steady_state(25)+oo_.steady_state(48)*oo_.steady_state(49)));
oo_.steady_state(33) = oo_.steady_state(8)-oo_.steady_state(6)*oo_.steady_state(9)-oo_.steady_state(31)-oo_.steady_state(32);
oo_.steady_state(34) = 1;
oo_.steady_state(42) = 1;
oo_.steady_state(35) = 1;
oo_.steady_state(45) = M_.params(42);
oo_.steady_state(41) = M_.params(43);
oo_.steady_state(39) = M_.params(44);
oo_.steady_state(46) = M_.params(45);
oo_.steady_state(38) = ((oo_.steady_state(46)-M_.params(6)*oo_.steady_state(46)*oo_.steady_state(42)/oo_.steady_state(2))/M_.params(34))^(1/(-M_.params(31)));
oo_.steady_state(49) = oo_.steady_state(38)/oo_.steady_state(16);
oo_.steady_state(37) = 1;
oo_.steady_state(44) = M_.params(46);
oo_.steady_state(43) = M_.params(6);
oo_.steady_state(3) = (1+M_.params(9)*oo_.steady_state(17)/oo_.steady_state(13))/oo_.steady_state(43)-M_.params(12);
oo_.steady_state(50) = 1;
oo_.steady_state(40) = oo_.steady_state(8)*0.2;
oo_.steady_state(36) = oo_.steady_state(40)/oo_.steady_state(39);
oo_.steady_state(51) = log(oo_.steady_state(8));
oo_.steady_state(52) = log(oo_.steady_state(2));
oo_.steady_state(53) = log(oo_.steady_state(5));
oo_.steady_state(54) = log(oo_.steady_state(12));
oo_.steady_state(55) = log(oo_.steady_state(10));
oo_.steady_state(56) = log(oo_.steady_state(11));
oo_.steady_state(57) = log(oo_.steady_state(14));
oo_.steady_state(58) = log(oo_.steady_state(9));
oo_.steady_state(59) = log(oo_.steady_state(18));
oo_.steady_state(60) = log(oo_.steady_state(19));
oo_.steady_state(61) = log(oo_.steady_state(15));
oo_.steady_state(62) = (oo_.steady_state(3)+M_.params(12)*oo_.steady_state(7))/oo_.steady_state(7)-oo_.steady_state(5)/oo_.steady_state(2);
oo_.steady_state(63) = log(oo_.steady_state(39));
oo_.steady_state(64) = log(oo_.steady_state(41));
oo_.steady_state(65) = log(oo_.steady_state(22));
oo_.steady_state(66) = oo_.steady_state(14)-oo_.steady_state(9);
oo_.steady_state(67) = log(oo_.steady_state(38));
oo_.steady_state(47) = 0;
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
steady;
oo_.dr.eigval = check(M_,options_,oo_);
model_diagnostics(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.0025)^2;
M_.Sigma_e(2, 2) = (0.01)^2;
M_.Sigma_e(3, 3) = (0.0025)^2;
options_.irf = 20;
options_.nograph = true;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
quantity_08_oo_irfs=oo_.irfs;
save quantity_08_oo_irfs quantity_08_oo_irfs     


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'cdbc_quantity_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'cdbc_quantity_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'cdbc_quantity_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'cdbc_quantity_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'cdbc_quantity_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'cdbc_quantity_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'cdbc_quantity_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
