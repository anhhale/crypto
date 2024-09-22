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

T = cdbc_quantity.static_resid_tt(T, y, x, params);

T(35) = getPowerDeriv(y(2),params(29),1);
T(36) = (-y(13))/(y(3)*y(3));
T(37) = 1/y(3);
T(38) = getPowerDeriv(T(21),1/(1-params(29)),1);
T(39) = params(41)*2*(params(40)-y(46))*((-y(46))/((y(5)+y(7))*(y(5)+y(7)))-(-1)/((y(5)+y(7))*(y(5)+y(7))));
T(40) = (-(params(34)*getPowerDeriv(y(6),1-params(31),1)/(1-params(31))));
T(41) = getPowerDeriv(y(17),1+params(7),1);
T(42) = (-((-(params(8)/(1+params(7))*T(41)))/T(33)));
T(43) = (y(34)+y(27)*T(6)*T(7)-(y(28)+y(24)*y(29)+y(49)*y(50)))*(y(34)+y(27)*T(6)*T(7)-(y(28)+y(24)*y(29)+y(49)*y(50)));

end
