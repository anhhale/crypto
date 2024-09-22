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
M_.fname = 'flm_base';
M_.dynare_version = '4.5.7';
oo_.dynare_version = '4.5.7';
options_.dynare_version = '4.5.7';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('flm_base.log');
M_.exo_names = 'EZ';
M_.exo_names_tex = 'EZ';
M_.exo_names_long = 'EZ';
M_.exo_names = char(M_.exo_names, 'EOMEGA');
M_.exo_names_tex = char(M_.exo_names_tex, 'EOMEGA');
M_.exo_names_long = char(M_.exo_names_long, 'EOMEGA');
M_.exo_names = char(M_.exo_names, 'EA');
M_.exo_names_tex = char(M_.exo_names_tex, 'EA');
M_.exo_names_long = char(M_.exo_names_long, 'EA');
M_.exo_names = char(M_.exo_names, 'EG');
M_.exo_names_tex = char(M_.exo_names_tex, 'EG');
M_.exo_names_long = char(M_.exo_names_long, 'EG');
M_.exo_names = char(M_.exo_names, 'EERR');
M_.exo_names_tex = char(M_.exo_names_tex, 'EERR');
M_.exo_names_long = char(M_.exo_names_long, 'EERR');
M_.exo_names = char(M_.exo_names, 'EGG');
M_.exo_names_tex = char(M_.exo_names_tex, 'EGG');
M_.exo_names_long = char(M_.exo_names_long, 'EGG');
M_.endo_names = 'NTY';
M_.endo_names_tex = 'NTY';
M_.endo_names_long = 'NTY';
M_.endo_names = char(M_.endo_names, 'NY');
M_.endo_names_tex = char(M_.endo_names_tex, 'NY');
M_.endo_names_long = char(M_.endo_names_long, 'NY');
M_.endo_names = char(M_.endo_names, 'NC');
M_.endo_names_tex = char(M_.endo_names_tex, 'NC');
M_.endo_names_long = char(M_.endo_names_long, 'NC');
M_.endo_names = char(M_.endo_names, 'NQ');
M_.endo_names_tex = char(M_.endo_names_tex, 'NQ');
M_.endo_names_long = char(M_.endo_names_long, 'NQ');
M_.endo_names = char(M_.endo_names, 'NOY');
M_.endo_names_tex = char(M_.endo_names_tex, 'NOY');
M_.endo_names_long = char(M_.endo_names_long, 'NOY');
M_.endo_names = char(M_.endo_names, 'NR');
M_.endo_names_tex = char(M_.endo_names_tex, 'NR');
M_.endo_names_long = char(M_.endo_names_long, 'NR');
M_.endo_names = char(M_.endo_names, 'NPI');
M_.endo_names_tex = char(M_.endo_names_tex, 'NPI');
M_.endo_names_long = char(M_.endo_names_long, 'NPI');
M_.endo_names = char(M_.endo_names, 'NCY');
M_.endo_names_tex = char(M_.endo_names_tex, 'NCY');
M_.endo_names_long = char(M_.endo_names_long, 'NCY');
M_.endo_names = char(M_.endo_names, 'NOC');
M_.endo_names_tex = char(M_.endo_names_tex, 'NOC');
M_.endo_names_long = char(M_.endo_names_long, 'NOC');
M_.endo_names = char(M_.endo_names, 'NPIY');
M_.endo_names_tex = char(M_.endo_names_tex, 'NPIY');
M_.endo_names_long = char(M_.endo_names_long, 'NPIY');
M_.endo_names = char(M_.endo_names, 'DD');
M_.endo_names_tex = char(M_.endo_names_tex, 'DD');
M_.endo_names_long = char(M_.endo_names_long, 'DD');
M_.endo_names = char(M_.endo_names, 'NN');
M_.endo_names_tex = char(M_.endo_names_tex, 'NN');
M_.endo_names_long = char(M_.endo_names_long, 'NN');
M_.endo_names = char(M_.endo_names, 'DELTA');
M_.endo_names_tex = char(M_.endo_names_tex, 'DELTA');
M_.endo_names_long = char(M_.endo_names_long, 'DELTA');
M_.endo_names = char(M_.endo_names, 'NMC');
M_.endo_names_tex = char(M_.endo_names_tex, 'NMC');
M_.endo_names_long = char(M_.endo_names_long, 'NMC');
M_.endo_names = char(M_.endo_names, 'NWP');
M_.endo_names_tex = char(M_.endo_names_tex, 'NWP');
M_.endo_names_long = char(M_.endo_names_long, 'NWP');
M_.endo_names = char(M_.endo_names, 'NL');
M_.endo_names_tex = char(M_.endo_names_tex, 'NL');
M_.endo_names_long = char(M_.endo_names_long, 'NL');
M_.endo_names = char(M_.endo_names, 'NO');
M_.endo_names_tex = char(M_.endo_names_tex, 'NO');
M_.endo_names_long = char(M_.endo_names_long, 'NO');
M_.endo_names = char(M_.endo_names, 'NX');
M_.endo_names_tex = char(M_.endo_names_tex, 'NX');
M_.endo_names_long = char(M_.endo_names_long, 'NX');
M_.endo_names = char(M_.endo_names, 'NOMEGA');
M_.endo_names_tex = char(M_.endo_names_tex, 'NOMEGA');
M_.endo_names_long = char(M_.endo_names_long, 'NOMEGA');
M_.endo_names = char(M_.endo_names, 'NETA');
M_.endo_names_tex = char(M_.endo_names_tex, 'NETA');
M_.endo_names_long = char(M_.endo_names_long, 'NETA');
M_.endo_names = char(M_.endo_names, 'UTIL');
M_.endo_names_tex = char(M_.endo_names_tex, 'UTIL');
M_.endo_names_long = char(M_.endo_names_long, 'UTIL');
M_.endo_names = char(M_.endo_names, 'WELF');
M_.endo_names_tex = char(M_.endo_names_tex, 'WELF');
M_.endo_names_long = char(M_.endo_names_long, 'WELF');
M_.endo_names = char(M_.endo_names, 'Z');
M_.endo_names_tex = char(M_.endo_names_tex, 'Z');
M_.endo_names_long = char(M_.endo_names_long, 'Z');
M_.endo_names = char(M_.endo_names, 'NGG');
M_.endo_names_tex = char(M_.endo_names_tex, 'NGG');
M_.endo_names_long = char(M_.endo_names_long, 'NGG');
M_.endo_names = char(M_.endo_names, 'G');
M_.endo_names_tex = char(M_.endo_names_tex, 'G');
M_.endo_names_long = char(M_.endo_names_long, 'G');
M_.endo_names = char(M_.endo_names, 'A');
M_.endo_names_tex = char(M_.endo_names_tex, 'A');
M_.endo_names_long = char(M_.endo_names_long, 'A');
M_.endo_names = char(M_.endo_names, 'ERR');
M_.endo_names_tex = char(M_.endo_names_tex, 'ERR');
M_.endo_names_long = char(M_.endo_names_long, 'ERR');
M_.endo_names = char(M_.endo_names, 'OMEGA');
M_.endo_names_tex = char(M_.endo_names_tex, 'OMEGA');
M_.endo_names_long = char(M_.endo_names_long, 'OMEGA');
M_.endo_partitions = struct();
M_.param_names = 'GAMMA';
M_.param_names_tex = 'GAMMA';
M_.param_names_long = 'GAMMA';
M_.param_names = char(M_.param_names, 'ALPHA');
M_.param_names_tex = char(M_.param_names_tex, 'ALPHA');
M_.param_names_long = char(M_.param_names_long, 'ALPHA');
M_.param_names = char(M_.param_names, 'NU');
M_.param_names_tex = char(M_.param_names_tex, 'NU');
M_.param_names_long = char(M_.param_names_long, 'NU');
M_.param_names = char(M_.param_names, 'EPS');
M_.param_names_tex = char(M_.param_names_tex, 'EPS');
M_.param_names_long = char(M_.param_names_long, 'EPS');
M_.param_names = char(M_.param_names, 'BETA');
M_.param_names_tex = char(M_.param_names_tex, 'BETA');
M_.param_names_long = char(M_.param_names_long, 'BETA');
M_.param_names = char(M_.param_names, 'THETA');
M_.param_names_tex = char(M_.param_names_tex, 'THETA');
M_.param_names_long = char(M_.param_names_long, 'THETA');
M_.param_names = char(M_.param_names, 'PHI_HEAD');
M_.param_names_tex = char(M_.param_names_tex, 'PHI\_HEAD');
M_.param_names_long = char(M_.param_names_long, 'PHI_HEAD');
M_.param_names = char(M_.param_names, 'PHI_CORE');
M_.param_names_tex = char(M_.param_names_tex, 'PHI\_CORE');
M_.param_names_long = char(M_.param_names_long, 'PHI_CORE');
M_.param_names = char(M_.param_names, 'PHI_COMM');
M_.param_names_tex = char(M_.param_names_tex, 'PHI\_COMM');
M_.param_names_long = char(M_.param_names_long, 'PHI_COMM');
M_.param_names = char(M_.param_names, 'PHI_Y');
M_.param_names_tex = char(M_.param_names_tex, 'PHI\_Y');
M_.param_names_long = char(M_.param_names_long, 'PHI_Y');
M_.param_names = char(M_.param_names, 'AS');
M_.param_names_tex = char(M_.param_names_tex, 'AS');
M_.param_names_long = char(M_.param_names_long, 'AS');
M_.param_names = char(M_.param_names, 'ZS');
M_.param_names_tex = char(M_.param_names_tex, 'ZS');
M_.param_names_long = char(M_.param_names_long, 'ZS');
M_.param_names = char(M_.param_names, 'ES');
M_.param_names_tex = char(M_.param_names_tex, 'ES');
M_.param_names_long = char(M_.param_names_long, 'ES');
M_.param_names = char(M_.param_names, 'RHO_Z');
M_.param_names_tex = char(M_.param_names_tex, 'RHO\_Z');
M_.param_names_long = char(M_.param_names_long, 'RHO_Z');
M_.param_names = char(M_.param_names, 'RHO_OMEGA');
M_.param_names_tex = char(M_.param_names_tex, 'RHO\_OMEGA');
M_.param_names_long = char(M_.param_names_long, 'RHO_OMEGA');
M_.param_names = char(M_.param_names, 'RHO_A');
M_.param_names_tex = char(M_.param_names_tex, 'RHO\_A');
M_.param_names_long = char(M_.param_names_long, 'RHO_A');
M_.param_names = char(M_.param_names, 'RHO_G');
M_.param_names_tex = char(M_.param_names_tex, 'RHO\_G');
M_.param_names_long = char(M_.param_names_long, 'RHO_G');
M_.param_names = char(M_.param_names, 'RHO_GG');
M_.param_names_tex = char(M_.param_names_tex, 'RHO\_GG');
M_.param_names_long = char(M_.param_names_long, 'RHO_GG');
M_.param_names = char(M_.param_names, 'RHO_ERR');
M_.param_names_tex = char(M_.param_names_tex, 'RHO\_ERR');
M_.param_names_long = char(M_.param_names_long, 'RHO_ERR');
M_.param_names = char(M_.param_names, 'SZ');
M_.param_names_tex = char(M_.param_names_tex, 'SZ');
M_.param_names_long = char(M_.param_names_long, 'SZ');
M_.param_names = char(M_.param_names, 'SOMEGA');
M_.param_names_tex = char(M_.param_names_tex, 'SOMEGA');
M_.param_names_long = char(M_.param_names_long, 'SOMEGA');
M_.param_names = char(M_.param_names, 'SA');
M_.param_names_tex = char(M_.param_names_tex, 'SA');
M_.param_names_long = char(M_.param_names_long, 'SA');
M_.param_names = char(M_.param_names, 'SG');
M_.param_names_tex = char(M_.param_names_tex, 'SG');
M_.param_names_long = char(M_.param_names_long, 'SG');
M_.param_names = char(M_.param_names, 'SERR');
M_.param_names_tex = char(M_.param_names_tex, 'SERR');
M_.param_names_long = char(M_.param_names_long, 'SERR');
M_.param_names = char(M_.param_names, 'SERR_Z');
M_.param_names_tex = char(M_.param_names_tex, 'SERR\_Z');
M_.param_names_long = char(M_.param_names_long, 'SERR_Z');
M_.param_names = char(M_.param_names, 'SERR_OMEGA');
M_.param_names_tex = char(M_.param_names_tex, 'SERR\_OMEGA');
M_.param_names_long = char(M_.param_names_long, 'SERR_OMEGA');
M_.param_names = char(M_.param_names, 'SERR_A');
M_.param_names_tex = char(M_.param_names_tex, 'SERR\_A');
M_.param_names_long = char(M_.param_names_long, 'SERR_A');
M_.param_names = char(M_.param_names, 'SERR_G');
M_.param_names_tex = char(M_.param_names_tex, 'SERR\_G');
M_.param_names_long = char(M_.param_names_long, 'SERR_G');
M_.param_names = char(M_.param_names, 'NOMEGAS');
M_.param_names_tex = char(M_.param_names_tex, 'NOMEGAS');
M_.param_names_long = char(M_.param_names_long, 'NOMEGAS');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 6;
M_.endo_nbr = 28;
M_.param_nbr = 29;
M_.orig_endo_nbr = 28;
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
erase_compiled_function('flm_base_static');
erase_compiled_function('flm_base_dynamic');
M_.orig_eq_nbr = 28;
M_.eq_nbr = 28;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 9 0;
 0 10 0;
 0 11 37;
 1 12 0;
 0 13 0;
 0 14 0;
 0 15 38;
 0 16 0;
 0 17 0;
 0 18 39;
 0 19 40;
 0 20 41;
 2 21 0;
 0 22 0;
 0 23 0;
 0 24 0;
 0 25 0;
 0 26 0;
 0 27 0;
 0 28 0;
 0 29 0;
 0 30 42;
 3 31 0;
 4 32 0;
 5 33 43;
 6 34 0;
 7 35 0;
 8 36 0;]';
M_.nstatic = 14;
M_.nfwrd   = 6;
M_.npred   = 7;
M_.nboth   = 1;
M_.nsfwrd   = 7;
M_.nspred   = 8;
M_.ndynamic   = 14;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:6];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(28, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(6, 1);
M_.params = NaN(29, 1);
M_.NNZDerivatives = [108; 191; -1];
M_.params( 1 ) = 0.1;
GAMMA = M_.params( 1 );
M_.params( 2 ) = 0.1;
ALPHA = M_.params( 2 );
M_.params( 3 ) = 0.5;
NU = M_.params( 3 );
M_.params( 4 ) = 7.67;
EPS = M_.params( 4 );
M_.params( 5 ) = 0.99;
BETA = M_.params( 5 );
M_.params( 6 ) = 0.75;
THETA = M_.params( 6 );
M_.params( 7 ) = 0;
PHI_HEAD = M_.params( 7 );
M_.params( 8 ) = 1.5;
PHI_CORE = M_.params( 8 );
M_.params( 9 ) = 0.05;
PHI_COMM = M_.params( 9 );
M_.params( 10 ) = 0.5;
PHI_Y = M_.params( 10 );
M_.params( 11 ) = 1;
AS = M_.params( 11 );
M_.params( 12 ) = 1;
ZS = M_.params( 12 );
M_.params( 13 ) = 0.01;
ES = M_.params( 13 );
M_.params( 14 ) = 0.95;
RHO_Z = M_.params( 14 );
M_.params( 15 ) = 0.5;
RHO_OMEGA = M_.params( 15 );
M_.params( 16 ) = 0.5;
RHO_A = M_.params( 16 );
M_.params( 17 ) = 0.5;
RHO_G = M_.params( 17 );
M_.params( 18 ) = 0.5;
RHO_GG = M_.params( 18 );
M_.params( 19 ) = 0.5;
RHO_ERR = M_.params( 19 );
M_.params( 20 ) = 0.0164931303289187;
SZ = M_.params( 20 );
M_.params( 21 ) = 0;
SOMEGA = M_.params( 21 );
M_.params( 22 ) = 0;
SA = M_.params( 22 );
M_.params( 23 ) = 0.0472608659912221;
SG = M_.params( 23 );
M_.params( 24 ) = 0;
SERR = M_.params( 24 );
M_.params( 25 ) = 0;
SERR_Z = M_.params( 25 );
M_.params( 26 ) = 0;
SERR_OMEGA = M_.params( 26 );
M_.params( 27 ) = 0;
SERR_A = M_.params( 27 );
M_.params( 28 ) = 0;
SERR_G = M_.params( 28 );
M_.params( 29 ) = oo_.steady_state(19);
NOMEGAS = M_.params( 29 );
steady;
oo_.dr.eigval = check(M_,options_,oo_);
model_diagnostics(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (M_.params(20))^2;
M_.Sigma_e(2, 2) = (M_.params(21))^2;
M_.Sigma_e(3, 3) = (M_.params(22))^2;
M_.Sigma_e(4, 4) = (0)^2;
M_.Sigma_e(5, 5) = (M_.params(24))^2;
M_.Sigma_e(6, 6) = (M_.params(23))^2;
options_.ar = 0;
options_.irf = 0;
options_.nograph = 1;
options_.noprint = 1;
options_.order = 2;
options_.pruning = 1;
var_list_ = char();
info = stoch_simul(var_list_);
save('flm_base_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('flm_base_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('flm_base_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('flm_base_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('flm_base_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('flm_base_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('flm_base_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
disp('Note: 2 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
