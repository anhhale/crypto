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

assert(length(T) >= 29);

T = cash.static_resid_tt(T, y, x, params);

T(28) = (-(1/y(2)));
T(29) = (y(30)+y(23)*T(4)*T(5)-(y(24)+y(20)*y(25)))*(y(30)+y(23)*T(4)*T(5)-(y(24)+y(20)*y(25)));

end
