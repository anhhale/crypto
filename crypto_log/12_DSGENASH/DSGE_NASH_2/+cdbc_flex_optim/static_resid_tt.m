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

assert(length(T) >= 34);

T(1) = y(44)*(1-params(4)+params(4)*y(27));
T(2) = y(19)^(1+params(8));
T(3) = y(2)-params(9)*T(2)/(1+params(8));
T(4) = y(20)/(y(20))-1;
T(5) = params(10)/2*y(24)^2;
T(6) = params(6)/2;
T(7) = y(26)^2;
T(8) = 1/y(32);
T(9) = y(13)^params(11);
T(10) = T(8)*T(9);
T(11) = y(16)^params(12);
T(12) = T(10)*T(11);
T(13) = y(14)^(1-params(11)-params(12));
T(14) = (y(21)/params(11))^params(11);
T(15) = y(32)*T(14);
T(16) = (y(18)/params(12))^params(12);
T(17) = T(15)*T(16);
T(18) = (y(19)/(1-params(11)-params(12)))^(1-params(11)-params(12));
T(19) = y(16)^params(17);
T(20) = params(36)^y(42);
T(21) = params(39)*y(7)^(1-params(30))+params(40)*y(5)^(1-params(30));
T(22) = y(2)^params(30);
T(23) = y(5)^(-params(30));
T(24) = (y(7)+y(5))^2;
T(25) = y(7)^(-params(30));
T(26) = y(46)/(y(7)+y(5))-1/(y(7)+y(5));
T(27) = y(17)+params(10)*y(24)/y(21);
T(28) = y(15)/y(3);
T(29) = (y(13)+y(17)*params(13))/y(17)-T(28);
T(30) = sqrt((y(31)/(params(6)*y(29)))^2+(1/params(1))^2+y(50)*2*y(49)/(params(6)*y(29))+2*y(30)/(params(6)*y(29)));
T(31) = params(18)/2*(y(3)-1)^2;
T(32) = y(1)*T(31);
T(33) = y(2)-T(2)*params(9)/(1+params(8));
T(34) = y(2)*(1-params(2))-T(2)*params(9)/(1+params(8));

end
