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

assert(length(T) >= 31);

T(1) = y(43)*(1-params(3)+params(3)*y(21));
T(2) = y(11)-params(8)*y(10)^(1+params(7))/(1+params(7));
T(3) = y(12)/(y(12))-1;
T(4) = params(9)/2*y(17)^2;
T(5) = params(5)/2;
T(6) = y(20)^2;
T(7) = 1/y(26);
T(8) = y(3)^params(10);
T(9) = T(7)*T(8);
T(10) = y(6)^params(11);
T(11) = T(9)*T(10);
T(12) = y(4)^(1-params(10)-params(11));
T(13) = (y(13)/params(10))^params(10);
T(14) = y(26)*T(13);
T(15) = (y(9)/params(11))^params(11);
T(16) = T(14)*T(15);
T(17) = (y(10)/(1-params(10)-params(11)))^(1-params(10)-params(11));
T(18) = y(6)^params(16);
T(19) = params(35)^y(37);
T(20) = params(38)*y(41)^(1-params(29))+params(39)*y(39)^(1-params(29));
T(21) = y(11)^params(29);
T(22) = y(39)^(-params(29));
T(23) = (y(39)+y(41))^2;
T(24) = y(41)^(-params(29));
T(25) = y(45)/(y(39)+y(41))-1/(y(39)+y(41));
T(26) = y(7)+params(9)*y(17)/y(13);
T(27) = y(5)/y(2);
T(28) = (y(3)+y(7)*params(12))/y(7)-T(27);
T(29) = sqrt((y(25)/(params(5)*y(23)))^2+(1/params(1))^2+y(49)*2*y(48)/(params(5)*y(23))+2*y(24)/(params(5)*y(23)));
T(30) = params(17)/2*(y(2)-1)^2;
T(31) = y(8)*T(30);

end
