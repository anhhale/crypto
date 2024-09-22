function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
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

assert(length(T) >= 23);

T(1) = y(8)^(1-params(1));
T(2) = y(9)^params(1);
T(3) = y(1)^(1-params(1));
T(4) = y(4)^params(1);
T(5) = y(11)^(1-params(1));
T(6) = y(10)^params(1);
T(7) = y(11)^(params(16)-1);
T(8) = y(11)^params(16);
T(9) = params(16)/(params(16)-1)*y(2)/y(3);
T(10) = y(13)/y(12);
T(11) = y(16)^(1-params(2));
T(12) = y(4)^params(2);
T(13) = (1-params(2))^(1-params(2));
T(14) = params(2)^params(2);
T(15) = y(17)*T(13)*T(14);
T(16) = y(18)^params(3);
T(17) = 1/params(17)*y(10)^params(4);
T(18) = y(11)^params(5);
T(19) = T(17)*T(18);
T(20) = (y(2)/(y(2)))^params(26);
T(21) = 1/y(21);
T(22) = 1/(1-y(22)/(1-params(1)));
T(23) = exp(y(7))*(log(y(3))-y(18)^(1+params(3))/(1+params(3)));

end
