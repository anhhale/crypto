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

T = cdbc_flex_optim.static_resid_tt(T, y, x, params);

T(35) = ((y(1))-y(1))/((y(1))*(y(1)))/(y(1)/(y(1)));
T(36) = getPowerDeriv(y(2),params(30),1);
T(37) = 1/y(3);
T(38) = (-y(15))/(y(3)*y(3));
T(39) = getPowerDeriv(T(21),1/(1-params(30)),1);
T(40) = params(42)*2*(params(41)-y(46))*((-y(46))/((y(7)+y(5))*(y(7)+y(5)))-(-1)/((y(7)+y(5))*(y(7)+y(5))));
T(41) = getPowerDeriv(y(19),1+params(8),1);
T(42) = (-((-(params(9)/(1+params(8))*T(41)))/T(33)));
T(43) = (y(36)+y(29)*T(6)*T(7)-(y(30)+y(26)*y(31)+y(49)*y(50)))*(y(36)+y(29)*T(6)*T(7)-(y(30)+y(26)*y(31)+y(49)*y(50)));

end
