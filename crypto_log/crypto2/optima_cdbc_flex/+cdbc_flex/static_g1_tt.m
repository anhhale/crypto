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

assert(length(T) >= 40);

T = cdbc_flex.static_resid_tt(T, y, x, params);

T(34) = 1/y(3);
T(35) = (-y(6))/(y(3)*y(3));
T(36) = getPowerDeriv(y(11),1+params(7),1);
T(37) = getPowerDeriv(y(12),params(29),1);
T(38) = (y(31)+y(24)*T(6)*T(7)-(y(25)+y(21)*y(26)+y(47)*y(48)))*(y(31)+y(24)*T(6)*T(7)-(y(25)+y(21)*y(26)+y(47)*y(48)));
T(39) = getPowerDeriv(T(21),1/(1-params(29)),1);
T(40) = params(41)*2*(params(40)-y(44))*((-y(44))/((y(40)+y(39))*(y(40)+y(39)))-(-1)/((y(40)+y(39))*(y(40)+y(39))));

end
