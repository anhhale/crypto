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

assert(length(T) >= 43);

T = cbdc_macro.static_resid_tt(T, y, x, params);

T(36) = getPowerDeriv(y(2),params(29),1);
T(37) = getPowerDeriv(T(21),1/(1-params(29)),1);
T(38) = params(41)*2*(params(40)-y(44))*((-y(44))/((y(7)+y(5))*(y(7)+y(5)))-(-1)/((y(7)+y(5))*(y(7)+y(5))));
T(39) = (-(params(34)*getPowerDeriv(y(6),1-params(31),1)/(1-params(31))));
T(40) = getPowerDeriv(y(17),1+params(7),1);
T(41) = (-((-(params(8)/(1+params(7))*T(40)))/T(34)));
T(42) = 1/y(21)-1/(y(21));
T(43) = (y(34)+y(27)*T(6)*T(7)-(y(28)+y(24)*y(29)+y(47)*y(48)))*(y(34)+y(27)*T(6)*T(7)-(y(28)+y(24)*y(29)+y(47)*y(48)));

end
