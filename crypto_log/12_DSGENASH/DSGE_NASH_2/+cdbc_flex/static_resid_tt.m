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

assert(length(T) >= 33);

T(1) = y(42)*(1-params(3)+params(3)*y(22));
T(2) = y(11)^(1+params(7));
T(3) = y(12)-params(8)*T(2)/(1+params(7));
T(4) = y(13)/(y(13))-1;
T(5) = params(9)/2*y(18)^2;
T(6) = params(5)/2;
T(7) = y(21)^2;
T(8) = 1/y(27);
T(9) = y(4)^params(10);
T(10) = T(8)*T(9);
T(11) = y(7)^params(11);
T(12) = T(10)*T(11);
T(13) = y(5)^(1-params(10)-params(11));
T(14) = (y(14)/params(10))^params(10);
T(15) = y(27)*T(14);
T(16) = (y(10)/params(11))^params(11);
T(17) = T(15)*T(16);
T(18) = (y(11)/(1-params(10)-params(11)))^(1-params(10)-params(11));
T(19) = y(7)^params(16);
T(20) = params(35)^y(37);
T(21) = params(38)*y(40)^(1-params(29))+params(39)*y(39)^(1-params(29));
T(22) = y(12)^params(29);
T(23) = y(39)^(-params(29));
T(24) = (y(40)+y(39))^2;
T(25) = y(40)^(-params(29));
T(26) = y(44)/(y(40)+y(39))-1/(y(40)+y(39));
T(27) = y(8)+params(9)*y(18)/y(14);
T(28) = y(6)/y(3);
T(29) = (y(4)+y(8)*params(12))/y(8)-T(28);
T(30) = sqrt((y(26)/(params(5)*y(24)))^2+(1/params(1))^2+y(48)*2*y(47)/(params(5)*y(24))+2*y(25)/(params(5)*y(24)));
T(31) = params(17)/2*(y(3)-1)^2;
T(32) = y(9)*T(31);
T(33) = y(12)-T(2)*params(8)/(1+params(7));

end
