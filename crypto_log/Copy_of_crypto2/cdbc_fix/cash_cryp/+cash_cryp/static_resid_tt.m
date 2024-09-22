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

assert(length(T) >= 24);

T(1) = y(11)-params(8)*y(10)^(1+params(7))/(1+params(7));
T(2) = y(12)/(y(12))-1;
T(3) = params(9)/2*y(17)^2;
T(4) = params(5)/2;
T(5) = y(20)^2;
T(6) = 1/y(26);
T(7) = y(3)^params(10);
T(8) = T(6)*T(7);
T(9) = y(6)^params(11);
T(10) = T(8)*T(9);
T(11) = y(4)^(1-params(10)-params(11));
T(12) = (y(13)/params(10))^params(10);
T(13) = y(26)*T(12);
T(14) = (y(9)/params(11))^params(11);
T(15) = T(13)*T(14);
T(16) = (y(10)/(1-params(10)-params(11)))^(1-params(10)-params(11));
T(17) = y(6)^params(16);
T(18) = params(35)^y(36);
T(19) = y(7)+params(9)*y(17)/y(13);
T(20) = y(5)/y(2);
T(21) = (y(3)+y(7)*params(12))/y(7)-T(20);
T(22) = sqrt((y(25)/(params(5)*y(23)))^2+(1/params(1))^2+y(47)*2*y(46)/(params(5)*y(23))+2*y(24)/(params(5)*y(23)));
T(23) = params(17)/2*(y(2)-1)^2;
T(24) = y(8)*T(23);

end