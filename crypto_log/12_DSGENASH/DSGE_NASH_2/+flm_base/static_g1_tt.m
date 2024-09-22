function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 28);

T = flm_base.static_resid_tt(T, y, x, params);

T(24) = getPowerDeriv(y(11),params(16)-1,1);
T(25) = getPowerDeriv(y(11),params(16),1);
T(26) = getPowerDeriv(T(10),1-params(16),1);
T(27) = getPowerDeriv(T(10),(-params(16)),1);
T(28) = getPowerDeriv(T(21)*T(22),1-params(1),1);

end
