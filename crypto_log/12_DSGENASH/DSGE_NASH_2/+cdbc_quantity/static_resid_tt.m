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

T(1) = y(42)*(1-params(3)+params(3)*y(25));
T(2) = y(17)^(1+params(7));
T(3) = y(2)-params(8)*T(2)/(1+params(7));
T(4) = y(18)/(y(18))-1;
T(5) = params(9)/2*y(22)^2;
T(6) = params(5)/2;
T(7) = y(24)^2;
T(8) = 1/y(30);
T(9) = y(11)^params(10);
T(10) = T(8)*T(9);
T(11) = y(14)^params(11);
T(12) = T(10)*T(11);
T(13) = y(12)^(1-params(10)-params(11));
T(14) = (y(19)/params(10))^params(10);
T(15) = y(30)*T(14);
T(16) = (y(16)/params(11))^params(11);
T(17) = T(15)*T(16);
T(18) = (y(17)/(1-params(10)-params(11)))^(1-params(10)-params(11));
T(19) = y(14)^params(16);
T(20) = params(35)^y(40);
T(21) = params(38)*y(7)^(1-params(29))+params(39)*y(5)^(1-params(29));
T(22) = y(2)^params(29);
T(23) = y(5)^(-params(29));
T(24) = (y(5)+y(7))^2;
T(25) = y(7)^(-params(29));
T(26) = y(46)/(y(5)+y(7))-1/(y(5)+y(7));
T(27) = y(15)+params(9)*y(22)/y(19);
T(28) = y(13)/y(3);
T(29) = (y(11)+y(15)*params(12))/y(15)-T(28);
T(30) = sqrt((y(29)/(params(5)*y(27)))^2+(1/params(1))^2+y(50)*2*y(49)/(params(5)*y(27))+2*y(28)/(params(5)*y(27)));
T(31) = params(17)/2*(y(3)-1)^2;
T(32) = y(1)*T(31);
T(33) = y(2)-T(2)*params(8)/(1+params(7));
T(34) = log(T(33))-params(41)*(params(40)-y(46))^2+params(34)*y(6)^(1-params(31))/(1-params(31));

end