function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = cash_cryp.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(66, 1);
lhs = y(59)+y(57);
rhs = 1/T(2);
residual(1) = lhs - rhs;
lhs = y(56);
rhs = params(6)*y(88)/y(59);
residual(2) = lhs - rhs;
lhs = y(47);
rhs = params(15)/2*T(35)^2;
residual(3) = lhs - rhs;
lhs = y(49);
rhs = T(5)/y(33);
residual(4) = lhs - rhs;
lhs = y(50);
rhs = T(6)*y(29)*y(35)*T(7);
residual(5) = lhs - rhs;
lhs = y(48);
rhs = params(2);
residual(6) = lhs - rhs;
lhs = y(24);
rhs = T(12)*T(13);
residual(7) = lhs - rhs;
lhs = y(17)*(y(17)-1);
rhs = 1/params(17)*(1+y(24)*params(13)-params(13))+T(14)*y(82)*(y(82)-1);
residual(8) = lhs - rhs;
lhs = y(15);
rhs = T(18)*T(19);
residual(9) = lhs - rhs;
lhs = y(28)*y(30)/(y(25)*y(5));
rhs = params(11)/params(10);
residual(10) = lhs - rhs;
lhs = y(31)*y(26)/(y(25)*y(5));
rhs = (1-params(10)-params(11))/params(10);
residual(11) = lhs - rhs;
lhs = y(33);
rhs = y(32)+y(5)*params(12);
residual(12) = lhs - rhs;
lhs = y(34);
rhs = y(46)*T(20);
residual(13) = lhs - rhs;
lhs = (1-params(36))*y(52);
rhs = T(21);
residual(14) = lhs - rhs;
lhs = log(y(54));
rhs = 0.95*log(y(12))+x(it_, 6);
residual(15) = lhs - rhs;
lhs = y(53);
rhs = 1;
residual(16) = lhs - rhs;
lhs = y(55);
rhs = y(52)/y(11);
residual(17) = lhs - rhs;
lhs = y(60);
rhs = 0.95*y(14)+0.03*x(it_, 5);
residual(18) = lhs - rhs;
lhs = y(16);
rhs = y(21);
residual(19) = lhs - rhs;
lhs = y(58);
rhs = 1;
residual(20) = lhs - rhs;
residual(21) = y(19);
residual(22) = params(6)*y(88)*params(37)/y(82)+y(57)-y(59);
lhs = params(34)*y(20)^(-params(31));
rhs = y(59)-y(55)*params(6)*y(88)/y(82);
residual(23) = lhs - rhs;
lhs = y(26);
rhs = params(8)*y(31)^params(7);
residual(24) = lhs - rhs;
lhs = 1;
rhs = y(56)*(y(84)+params(12)*y(86))/T(22);
residual(25) = lhs - rhs;
lhs = 1;
rhs = y(56)*y(27)/y(82);
residual(26) = lhs - rhs;
lhs = y(29);
rhs = 1+y(47)+T(35)*params(15)*y(32)/(steady_state(18));
residual(27) = lhs - rhs;
lhs = y(42);
rhs = T(4)*T(24);
residual(28) = lhs - rhs;
lhs = y(61);
rhs = T(4)*T(25);
residual(29) = lhs - rhs;
lhs = y(43);
rhs = T(4)*T(26);
residual(30) = lhs - rhs;
lhs = y(41);
rhs = T(4)*y(27)/y(82);
residual(31) = lhs - rhs;
lhs = y(40);
rhs = y(41)/T(27);
residual(32) = lhs - rhs;
lhs = y(39);
rhs = y(48)*y(40);
residual(33) = lhs - rhs;
lhs = y(38);
rhs = y(43)/(params(5)*y(41))-1/params(1)+T(28);
residual(34) = lhs - rhs;
lhs = y(15);
rhs = y(50)+y(49)+y(34)+y(16)+y(32)*(1+y(47))+T(30);
residual(35) = lhs - rhs;
lhs = y(22);
rhs = y(30)+y(9)*y(2)-y(34)/y(28);
residual(36) = lhs - rhs;
lhs = y(18);
rhs = params(3)*((y(25)+y(29)*params(12))*y(6)-y(7)*y(3)/y(17)-y(1)*y(13)/y(17)-y(2)*y(28)*y(9))+y(5)*(y(25)+y(29)*params(12))*params(4);
residual(37) = lhs - rhs;
lhs = y(29)*y(35)*(1+T(6)*T(7));
rhs = y(18)*y(40)*(1+T(6)*T(7));
residual(38) = lhs - rhs;
lhs = y(29)*y(35)*(1+T(6)*T(7));
rhs = y(20)+y(18)+y(37)+y(28)*y(22);
residual(39) = lhs - rhs;
lhs = y(38);
rhs = y(28)*y(22)/(y(29)*y(35));
residual(40) = lhs - rhs;
lhs = y(62);
rhs = y(20)/(y(29)*y(35));
residual(41) = lhs - rhs;
lhs = y(33);
rhs = y(36)+y(35);
residual(42) = lhs - rhs;
lhs = log(y(63));
rhs = log(T(31))+log(y(17));
residual(43) = lhs - rhs;
lhs = log(params(6)*y(27));
rhs = x(it_, 1)+(1-params(19))*(log(y(17))*params(20)+0.*log(T(32))+log(y(63))*params(49))+params(19)*log(params(6)*y(3));
residual(44) = lhs - rhs;
lhs = log(y(44));
rhs = params(21)*log(y(8))+x(it_, 2);
residual(45) = lhs - rhs;
lhs = y(46);
rhs = x(it_, 4)+params(23)*y(10)+(steady_state(32))*(1-params(23));
residual(46) = lhs - rhs;
lhs = y(45);
rhs = x(it_, 3)+y(9)*params(22)+(steady_state(31))*(1-params(22));
residual(47) = lhs - rhs;
lhs = y(51);
rhs = y(15)-y(28)*y(30)-T(30)-y(49)-y(50);
residual(48) = lhs - rhs;
lhs = y(65);
rhs = log(y(15));
residual(49) = lhs - rhs;
lhs = y(66);
rhs = log(y(17));
residual(50) = lhs - rhs;
lhs = y(67);
rhs = log(y(27));
residual(51) = lhs - rhs;
lhs = y(68);
rhs = log(y(32));
residual(52) = lhs - rhs;
lhs = y(69);
rhs = log(y(31));
residual(53) = lhs - rhs;
lhs = y(70);
rhs = log(y(16));
residual(54) = lhs - rhs;
lhs = y(71);
rhs = log(y(34));
residual(55) = lhs - rhs;
lhs = y(72);
rhs = log(y(30));
residual(56) = lhs - rhs;
lhs = y(73);
rhs = log(y(37));
residual(57) = lhs - rhs;
lhs = y(74);
rhs = log(y(22));
residual(58) = lhs - rhs;
lhs = y(75);
rhs = log(y(18));
residual(59) = lhs - rhs;
lhs = y(76);
rhs = T(24);
residual(60) = lhs - rhs;
lhs = y(77);
rhs = log(y(21));
residual(61) = lhs - rhs;
lhs = y(78);
rhs = log(y(40));
residual(62) = lhs - rhs;
lhs = y(79);
rhs = y(34)-y(30);
residual(63) = lhs - rhs;
lhs = y(80);
rhs = log(y(20));
residual(64) = lhs - rhs;
lhs = y(64);
rhs = T(34);
residual(65) = lhs - rhs;
lhs = y(23);
rhs = params(6)*y(83)+T(34);
residual(66) = lhs - rhs;

end
