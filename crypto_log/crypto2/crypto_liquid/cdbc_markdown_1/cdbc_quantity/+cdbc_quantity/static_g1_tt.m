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

assert(length(T) >= 37);

T = cdbc_quantity.static_resid_tt(T, y, x, params);

T(32) = (-y(5))/(y(2)*y(2));
T(33) = 1/y(2);
T(34) = getPowerDeriv(y(11),params(29),1);
T(35) = (y(30)+y(23)*T(5)*T(6)-(y(24)+y(20)*y(25)+y(48)*y(49)))*(y(30)+y(23)*T(5)*T(6)-(y(24)+y(20)*y(25)+y(48)*y(49)));
T(36) = getPowerDeriv(T(20),1/(1-params(29)),1);
T(37) = params(41)*2*(params(40)-y(45))*((-y(45))/((y(39)+y(41))*(y(39)+y(41)))-(-1)/((y(39)+y(41))*(y(39)+y(41))));

end
