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
    T = cdbc_markdown.static_resid_tt(T, y, x, params);
end
residual = zeros(67, 1);
lhs = y(45)+y(43);
rhs = 1/T(3);
residual(1) = lhs - rhs;
lhs = y(42);
rhs = params(6);
residual(2) = lhs - rhs;
lhs = y(33);
rhs = params(15)/2*T(4)^2;
residual(3) = lhs - rhs;
lhs = y(35);
rhs = T(5)/y(19);
residual(4) = lhs - rhs;
lhs = y(36);
rhs = T(6)*y(15)*y(21)*T(7);
residual(5) = lhs - rhs;
lhs = y(34);
rhs = params(2);
residual(6) = lhs - rhs;
lhs = y(10);
rhs = T(12)*T(13);
residual(7) = lhs - rhs;
lhs = y(3)*(y(3)-1);
rhs = 1/params(17)*(1+y(10)*params(13)-params(13))+(y(3)-1)*y(42)*y(3);
residual(8) = lhs - rhs;
lhs = y(1);
rhs = T(17)*T(18);
residual(9) = lhs - rhs;
lhs = y(14)*y(16)/(y(19)*y(11));
rhs = params(11)/params(10);
residual(10) = lhs - rhs;
lhs = y(17)*y(12)/(y(19)*y(11));
rhs = (1-params(10)-params(11))/params(10);
residual(11) = lhs - rhs;
lhs = y(19);
rhs = y(18)+y(19)*params(12);
residual(12) = lhs - rhs;
lhs = y(20);
rhs = y(32)*T(19);
residual(13) = lhs - rhs;
lhs = (1-params(36))*y(38);
rhs = T(20);
residual(14) = lhs - rhs;
lhs = log(y(40));
rhs = log(y(40))*0.95+x(6);
residual(15) = lhs - rhs;
lhs = y(39);
rhs = y(13)-(1/params(6)-1);
residual(16) = lhs - rhs;
lhs = y(41);
rhs = 1;
residual(17) = lhs - rhs;
lhs = y(46);
rhs = 0.95*y(46)+0.03*x(5);
residual(18) = lhs - rhs;
lhs = y(2);
rhs = T(21)^(1/(1-params(29)));
residual(19) = lhs - rhs;
lhs = y(44);
rhs = y(7)/(y(7)+y(5));
residual(20) = lhs - rhs;
lhs = y(43)*params(39)*T(22)*T(23)-params(41)*2*y(7)*(params(40)-y(44))/T(24);
rhs = y(45)-y(39)*params(6)*y(45)/y(3);
residual(21) = lhs - rhs;
lhs = y(43)*params(38)*T(22)*T(25)-params(41)*2*(params(40)-y(44))*T(26);
rhs = y(45)-params(6)*y(45)*params(37)/y(3);
residual(22) = lhs - rhs;
lhs = params(34)*y(6)^(-params(31));
rhs = y(45)-y(41)*params(6)*y(45)/y(3);
residual(23) = lhs - rhs;
lhs = y(12);
rhs = params(8)*y(17)^params(7);
residual(24) = lhs - rhs;
lhs = 1;
rhs = y(42)*(y(11)+y(15)*params(12))/T(27);
residual(25) = lhs - rhs;
lhs = 1;
rhs = y(42)*y(13)/y(3);
residual(26) = lhs - rhs;
lhs = y(15);
rhs = 1+y(33)+T(4)*params(15)*y(18)/(y(18));
residual(27) = lhs - rhs;
lhs = y(28);
rhs = T(1)*T(29);
residual(28) = lhs - rhs;
lhs = y(47);
rhs = T(1)*(T(28)-y(41)/y(3));
residual(29) = lhs - rhs;
lhs = y(29);
rhs = T(1)*(T(28)-y(31));
residual(30) = lhs - rhs;
lhs = y(27);
rhs = T(1)*y(13)/y(3);
residual(31) = lhs - rhs;
lhs = y(26);
rhs = y(27)/(y(34)+y(27)*T(6)*T(7)-(y(28)+y(24)*y(29)+y(47)*y(48)));
residual(32) = lhs - rhs;
lhs = y(25);
rhs = y(34)*y(26);
residual(33) = lhs - rhs;
lhs = y(24);
rhs = y(29)/(params(5)*y(27))-1/params(1)+T(30);
residual(34) = lhs - rhs;
lhs = y(1);
rhs = y(36)+y(35)+y(20)+y(2)+y(18)*(1+y(33))+T(32);
residual(35) = lhs - rhs;
lhs = y(8);
rhs = y(16)+y(31)*y(8)-y(20)/y(14);
residual(36) = lhs - rhs;
lhs = y(4);
rhs = params(3)*(y(21)*(y(11)+y(15)*params(12))-y(13)*y(23)/y(3)-y(41)*y(6)/y(3)-y(8)*y(31)*y(14))+y(19)*(y(11)+y(15)*params(12))*params(4);
residual(37) = lhs - rhs;
lhs = y(15)*y(21)*(1+T(6)*T(7));
rhs = y(4)*y(26)*(1+T(6)*T(7));
residual(38) = lhs - rhs;
lhs = y(15)*y(21)*(1+T(6)*T(7));
rhs = y(6)+y(4)+y(23)+y(14)*y(8);
residual(39) = lhs - rhs;
lhs = y(24);
rhs = y(14)*y(8)/(y(15)*y(21));
residual(40) = lhs - rhs;
lhs = y(48);
rhs = y(6)/(y(15)*y(21));
residual(41) = lhs - rhs;
lhs = y(19);
rhs = y(22)+y(21);
residual(42) = lhs - rhs;
lhs = log(y(49));
rhs = log(y(3));
residual(43) = lhs - rhs;
lhs = log(params(6)*y(13));
rhs = x(1)+(1-params(19))*(log(y(3))*params(20)+0.*log(y(1)/(y(1)))+log(y(49))*params(49))+log(params(6)*y(13))*params(19);
residual(44) = lhs - rhs;
lhs = log(y(30));
rhs = log(y(30))*params(21)+x(2);
residual(45) = lhs - rhs;
lhs = y(32);
rhs = x(4)+y(32)*params(23)+(y(32))*(1-params(23));
residual(46) = lhs - rhs;
lhs = y(31);
rhs = x(3)+y(31)*params(22)+(y(31))*(1-params(22));
residual(47) = lhs - rhs;
lhs = y(37);
rhs = y(1)-y(14)*y(16)-T(32)-y(35)-y(36);
residual(48) = lhs - rhs;
lhs = y(51);
rhs = log(y(1));
residual(49) = lhs - rhs;
lhs = y(52);
rhs = log(y(3));
residual(50) = lhs - rhs;
lhs = y(53);
rhs = log(y(13));
residual(51) = lhs - rhs;
lhs = y(54);
rhs = log(y(18));
residual(52) = lhs - rhs;
lhs = y(55);
rhs = log(y(17));
residual(53) = lhs - rhs;
lhs = y(56);
rhs = log(y(2));
residual(54) = lhs - rhs;
lhs = y(57);
rhs = log(y(20));
residual(55) = lhs - rhs;
lhs = y(58);
rhs = log(y(16));
residual(56) = lhs - rhs;
lhs = y(59);
rhs = log(y(23));
residual(57) = lhs - rhs;
lhs = y(60);
rhs = log(y(8));
residual(58) = lhs - rhs;
lhs = y(61);
rhs = log(y(4));
residual(59) = lhs - rhs;
lhs = y(62);
rhs = T(29);
residual(60) = lhs - rhs;
lhs = y(63);
rhs = log(y(5));
residual(61) = lhs - rhs;
lhs = y(64);
rhs = log(y(7));
residual(62) = lhs - rhs;
lhs = y(65);
rhs = log(y(26));
residual(63) = lhs - rhs;
lhs = y(66);
rhs = y(20)-y(16);
residual(64) = lhs - rhs;
lhs = y(67);
rhs = log(y(6));
residual(65) = lhs - rhs;
lhs = y(50);
rhs = T(34);
residual(66) = lhs - rhs;
lhs = y(9);
rhs = T(34)+params(6)*y(9);
residual(67) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
