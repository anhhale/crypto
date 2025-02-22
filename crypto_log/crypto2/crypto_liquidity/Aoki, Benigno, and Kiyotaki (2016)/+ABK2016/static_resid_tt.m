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

T(1) = params(6)*(1-params(3)+params(3)*y(21));
T(2) = y(12)/(y(12))-1;
T(3) = params(9)/2*y(17)^2;
T(4) = params(5)/2;
T(5) = y(20)^2;
T(6) = y(3)^params(10);
T(7) = 1/y(26)*T(6);
T(8) = y(6)^params(11);
T(9) = T(7)*T(8);
T(10) = y(4)^(1-params(10)-params(11));
T(11) = (y(13)/params(10))^params(10);
T(12) = y(26)*T(11);
T(13) = (y(9)/params(11))^params(11);
T(14) = T(12)*T(13);
T(15) = (y(10)/(1-params(10)-params(11)))^(1-params(10)-params(11));
T(16) = y(6)^params(16);
T(17) = y(7)+params(9)*y(17)/y(13);
T(18) = (y(3)+y(7)*params(12))/y(7)-y(5)/y(2);
T(19) = y(25)^2;
T(20) = y(30)-y(24)-T(19)/(y(23)*2*params(5));
T(21) = params(17)/2*(y(2)-1)^2;
T(22) = y(8)*T(21);
T(23) = 1+T(4)*T(5);

end
