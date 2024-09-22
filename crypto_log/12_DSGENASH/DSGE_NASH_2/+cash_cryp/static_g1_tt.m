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

assert(length(T) >= 34);

T = cash_cryp.static_resid_tt(T, y, x, params);

T(29) = (-y(13))/(y(3)*y(3));
T(30) = 1/y(3);
T(31) = (-(params(34)*getPowerDeriv(y(6),1-params(31),1)/(1-params(31))));
T(32) = getPowerDeriv(y(17),1+params(7),1);
T(33) = (-((-(params(8)/(1+params(7))*T(32)))/T(27)));
T(34) = (y(34)+y(27)*T(6)*T(7)-(y(28)+y(24)*y(29)+y(47)*y(48)))*(y(34)+y(27)*T(6)*T(7)-(y(28)+y(24)*y(29)+y(47)*y(48)));

end
