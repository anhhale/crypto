function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = cash.static_resid_tt(T, y, x, params);
end
residual = zeros(63, 1);
lhs = y(44)+y(42);
rhs = 1/T(2);
residual(1) = lhs - rhs;
lhs = y(41);
rhs = params(6);
residual(2) = lhs - rhs;
lhs = y(29);
rhs = params(15)/2*T(3)^2;
residual(3) = lhs - rhs;
lhs = y(31);
rhs = T(4)/y(13);
residual(4) = lhs - rhs;
lhs = y(32);
rhs = T(5)*y(7)*y(16)*T(6);
residual(5) = lhs - rhs;
lhs = y(30);
rhs = params(2);
residual(6) = lhs - rhs;
lhs = y(1);
rhs = T(11)*T(12);
residual(7) = lhs - rhs;
lhs = y(2)*(y(2)-1);
rhs = 1/params(17)*(1+y(1)*params(13)-params(13))+(y(2)-1)*y(41)*y(2);
residual(8) = lhs - rhs;
lhs = y(8);
rhs = T(16)*T(17);
residual(9) = lhs - rhs;
lhs = y(6)*y(9)/(y(13)*y(3));
rhs = params(11)/params(10);
residual(10) = lhs - rhs;
lhs = y(10)*y(4)/(y(13)*y(3));
rhs = (1-params(10)-params(11))/params(10);
residual(11) = lhs - rhs;
lhs = y(13);
rhs = y(12)+y(13)*params(12);
residual(12) = lhs - rhs;
lhs = y(14);
rhs = y(28)*T(18);
residual(13) = lhs - rhs;
lhs = (1-params(36))*y(34);
rhs = T(19);
residual(14) = lhs - rhs;
lhs = log(y(36));
rhs = log(y(36))*0.95+x(6);
residual(15) = lhs - rhs;
lhs = y(35);
rhs = 1;
residual(16) = lhs - rhs;
lhs = y(40);
rhs = 1;
residual(17) = lhs - rhs;
lhs = y(45);
rhs = 0.95*y(45)+0.03*x(5);
residual(18) = lhs - rhs;
lhs = y(11);
rhs = y(39);
residual(19) = lhs - rhs;
lhs = y(43);
rhs = 1;
residual(20) = lhs - rhs;
residual(21) = y(38);
lhs = T(21)*T(22);
rhs = y(44)-params(6)*y(44)*params(37)/y(2);
residual(22) = lhs - rhs;
residual(23) = y(37);
lhs = y(4);
rhs = params(8)*y(10)^params(7);
residual(24) = lhs - rhs;
lhs = 1;
rhs = y(41)*(y(3)+y(7)*params(12))/T(23);
residual(25) = lhs - rhs;
lhs = 1;
rhs = y(41)*y(5)/y(2);
residual(26) = lhs - rhs;
lhs = y(7);
rhs = 1+y(29)+T(3)*params(15)*y(12)/(y(12));
residual(27) = lhs - rhs;
lhs = y(24);
rhs = T(1)*T(25);
residual(28) = lhs - rhs;
lhs = y(46);
rhs = T(1)*(T(24)-y(40)/y(2));
residual(29) = lhs - rhs;
lhs = y(25);
rhs = T(1)*(T(24)-y(27));
residual(30) = lhs - rhs;
lhs = y(23);
rhs = T(1)*y(5)/y(2);
residual(31) = lhs - rhs;
lhs = y(22);
rhs = y(23)/(y(30)+y(23)*T(5)*T(6)-(y(24)+y(20)*y(25)));
residual(32) = lhs - rhs;
lhs = y(21);
rhs = y(30)*y(22);
residual(33) = lhs - rhs;
lhs = y(20);
rhs = y(25)/(params(5)*y(23))-1/params(1)+T(26);
residual(34) = lhs - rhs;
lhs = y(8);
rhs = y(32)+y(31)+y(14)+y(11)+y(12)*(1+y(29))+T(28);
residual(35) = lhs - rhs;
lhs = y(19);
rhs = y(9)+y(27)*y(19)-y(14)/y(6);
residual(36) = lhs - rhs;
lhs = y(15);
rhs = y(13)*(y(3)+y(7)*params(12))*params(4)+params(3)*(y(16)*(y(3)+y(7)*params(12))-y(5)*y(18)/y(2)-y(19)*y(27)*y(6));
residual(37) = lhs - rhs;
lhs = y(7)*y(16)*(1+T(5)*T(6));
rhs = y(15)*y(22)*(1+T(5)*T(6));
residual(38) = lhs - rhs;
lhs = y(7)*y(16)*(1+T(5)*T(6));
rhs = y(15)+y(18)+y(6)*y(19);
residual(39) = lhs - rhs;
lhs = y(20);
rhs = y(6)*y(19)/(y(7)*y(16));
residual(40) = lhs - rhs;
residual(41) = y(47);
lhs = y(13);
rhs = y(17)+y(16);
residual(42) = lhs - rhs;
lhs = log(y(48));
rhs = log(y(2));
residual(43) = lhs - rhs;
lhs = log(params(6)*y(5));
rhs = x(1)+(1-params(19))*(log(y(2))*params(20)+0.*log(y(8)/(y(8)))+log(y(48))*0.3)+log(params(6)*y(5))*params(19);
residual(44) = lhs - rhs;
lhs = log(y(26));
rhs = log(y(26))*params(21)+x(2);
residual(45) = lhs - rhs;
lhs = y(28);
rhs = x(4)+y(28)*params(23)+(y(28))*(1-params(23));
residual(46) = lhs - rhs;
lhs = y(27);
rhs = x(3)+y(27)*params(22)+(y(27))*(1-params(22));
residual(47) = lhs - rhs;
lhs = y(33);
rhs = y(8)-y(6)*y(9)-T(28)-y(31)-y(32);
residual(48) = lhs - rhs;
lhs = y(49);
rhs = log(y(8));
residual(49) = lhs - rhs;
lhs = y(50);
rhs = log(y(2));
residual(50) = lhs - rhs;
lhs = y(51);
rhs = log(y(5));
residual(51) = lhs - rhs;
lhs = y(52);
rhs = log(y(12));
residual(52) = lhs - rhs;
lhs = y(53);
rhs = log(y(10));
residual(53) = lhs - rhs;
lhs = y(54);
rhs = log(y(11));
residual(54) = lhs - rhs;
lhs = y(55);
rhs = log(y(14));
residual(55) = lhs - rhs;
lhs = y(56);
rhs = log(y(9));
residual(56) = lhs - rhs;
lhs = y(57);
rhs = log(y(18));
residual(57) = lhs - rhs;
lhs = y(58);
rhs = log(y(19));
residual(58) = lhs - rhs;
lhs = y(59);
rhs = log(y(15));
residual(59) = lhs - rhs;
lhs = y(60);
rhs = T(25);
residual(60) = lhs - rhs;
lhs = y(61);
rhs = log(y(39));
residual(61) = lhs - rhs;
lhs = y(62);
rhs = log(y(22));
residual(62) = lhs - rhs;
lhs = y(63);
rhs = y(14)-y(9);
residual(63) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
