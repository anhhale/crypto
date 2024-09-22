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
    T = cdbc_fix.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(68, 1);
lhs = y(58)+y(56);
rhs = 1/T(1);
residual(1) = lhs - rhs;
lhs = y(55);
rhs = params(6)*y(89)/y(58);
residual(2) = lhs - rhs;
lhs = y(82);
rhs = y(55)*(1-params(3)+params(3)*y(88));
residual(3) = lhs - rhs;
lhs = y(43);
rhs = params(15)/2*T(29)^2;
residual(4) = lhs - rhs;
lhs = y(45);
rhs = T(2)/y(27);
residual(5) = lhs - rhs;
lhs = y(46);
rhs = T(3)*y(21)*y(30)*T(4);
residual(6) = lhs - rhs;
lhs = y(44);
rhs = params(2);
residual(7) = lhs - rhs;
lhs = y(15);
rhs = T(8)*T(9);
residual(8) = lhs - rhs;
lhs = y(16)*(y(16)-1);
rhs = 1/params(17)*(1+y(15)*params(13)-params(13))+y(55)*y(87)/y(22)*y(83)*(y(83)-1);
residual(9) = lhs - rhs;
lhs = y(22);
rhs = T(13)*T(14);
residual(10) = lhs - rhs;
lhs = y(20)*y(23)/(y(17)*y(3));
rhs = params(11)/params(10);
residual(11) = lhs - rhs;
lhs = y(24)*y(18)/(y(17)*y(3));
rhs = (1-params(10)-params(11))/params(10);
residual(12) = lhs - rhs;
lhs = y(27);
rhs = y(26)+y(3)*params(12);
residual(13) = lhs - rhs;
lhs = y(28);
rhs = y(42)*T(15);
residual(14) = lhs - rhs;
lhs = (1-params(36))*y(48);
rhs = T(16);
residual(15) = lhs - rhs;
lhs = log(y(50));
rhs = 0.95*log(y(11))+x(it_, 6);
residual(16) = lhs - rhs;
lhs = y(49);
rhs = 1;
residual(17) = lhs - rhs;
lhs = y(54);
rhs = y(48)/y(10);
residual(18) = lhs - rhs;
lhs = y(59);
rhs = 0.95*y(14)+0.03*x(it_, 5);
residual(19) = lhs - rhs;
lhs = y(25);
rhs = T(17)^(1/(1-params(29)));
residual(20) = lhs - rhs;
lhs = y(57);
rhs = y(53)/(y(53)+y(52));
residual(21) = lhs - rhs;
lhs = y(56)*params(39)*T(18)*T(19)-params(41)*2*y(53)*(params(40)-y(57))/T(20);
rhs = y(58)-params(6)*y(89)/y(83);
residual(22) = lhs - rhs;
lhs = y(56)*params(38)*T(18)*T(21)-params(41)*2*(params(40)-y(57))*T(22);
rhs = y(58)-params(6)*y(89)*params(37)/y(83);
residual(23) = lhs - rhs;
lhs = params(34)*y(51)^(-params(31));
rhs = y(58)-y(54)*params(6)*y(89)/y(83);
residual(24) = lhs - rhs;
lhs = y(18);
rhs = params(8)*y(24)^params(7);
residual(25) = lhs - rhs;
lhs = 1;
rhs = y(55)*(y(84)+params(12)*y(86))/T(23);
residual(26) = lhs - rhs;
lhs = 1;
rhs = y(55)*y(19)/y(83);
residual(27) = lhs - rhs;
lhs = y(21);
rhs = 1+y(43)+T(29)*params(15)*y(26)/(steady_state(12));
residual(28) = lhs - rhs;
lhs = y(38);
rhs = y(82)*T(25);
residual(29) = lhs - rhs;
lhs = y(60);
rhs = y(82)*(T(24)-y(54)/y(83));
residual(30) = lhs - rhs;
lhs = y(39);
rhs = y(82)*(T(24)-y(41)*y(85)/y(20));
residual(31) = lhs - rhs;
lhs = y(37);
rhs = y(82)*y(19)/y(83);
residual(32) = lhs - rhs;
lhs = y(36);
rhs = y(37)/(y(44)+y(37)*T(3)*T(4)-(y(38)+y(34)*y(39)+y(60)*y(61)));
residual(33) = lhs - rhs;
lhs = y(35);
rhs = y(44)*y(36);
residual(34) = lhs - rhs;
lhs = y(34);
rhs = y(39)/(params(5)*y(37))-1/params(1)+T(26);
residual(35) = lhs - rhs;
lhs = y(22);
rhs = y(46)+y(45)+y(28)+y(25)+y(26)*(1+y(43))+T(28);
residual(36) = lhs - rhs;
lhs = y(33);
rhs = y(23)+y(8)*y(6)-y(28)/y(20);
residual(37) = lhs - rhs;
lhs = y(29);
rhs = params(3)*((y(17)+y(21)*params(12))*y(4)-y(5)*y(1)/y(16)-y(12)*y(13)/y(16)-y(6)*y(20)*y(8))+y(3)*(y(17)+y(21)*params(12))*params(4);
residual(38) = lhs - rhs;
lhs = y(21)*y(30)*(1+T(3)*T(4));
rhs = y(29)*y(36)*(1+T(3)*T(4));
residual(39) = lhs - rhs;
lhs = y(21)*y(30)*(1+T(3)*T(4));
rhs = y(51)+y(29)+y(32)+y(20)*y(33);
residual(40) = lhs - rhs;
lhs = y(34);
rhs = y(20)*y(33)/(y(21)*y(30));
residual(41) = lhs - rhs;
lhs = y(61);
rhs = y(51)/(y(21)*y(30));
residual(42) = lhs - rhs;
lhs = y(27);
rhs = y(31)+y(30);
residual(43) = lhs - rhs;
lhs = log(y(62));
rhs = log(y(20)/y(2))+log(y(16));
residual(44) = lhs - rhs;
lhs = log(params(6)*y(19));
rhs = x(it_, 1)+(1-params(19))*(log(y(16))*params(20)+0.*log(y(22)/(steady_state(8)))+log(y(62))*0.3)+params(19)*log(params(6)*y(1));
residual(45) = lhs - rhs;
lhs = log(y(40));
rhs = params(21)*log(y(7))+x(it_, 2);
residual(46) = lhs - rhs;
lhs = y(42);
rhs = x(it_, 4)+params(23)*y(9)+(steady_state(28))*(1-params(23));
residual(47) = lhs - rhs;
lhs = y(41);
rhs = x(it_, 3)+y(8)*params(22)+(steady_state(27))*(1-params(22));
residual(48) = lhs - rhs;
lhs = y(47);
rhs = y(22)-y(20)*y(23)-T(28)-y(45)-y(46);
residual(49) = lhs - rhs;
lhs = y(63);
rhs = log(y(22));
residual(50) = lhs - rhs;
lhs = y(64);
rhs = log(y(16));
residual(51) = lhs - rhs;
lhs = y(65);
rhs = log(y(19));
residual(52) = lhs - rhs;
lhs = y(66);
rhs = log(y(26));
residual(53) = lhs - rhs;
lhs = y(67);
rhs = log(y(24));
residual(54) = lhs - rhs;
lhs = y(68);
rhs = log(y(25));
residual(55) = lhs - rhs;
lhs = y(69);
rhs = log(y(28));
residual(56) = lhs - rhs;
lhs = y(70);
rhs = log(y(23));
residual(57) = lhs - rhs;
lhs = y(71);
rhs = log(y(32));
residual(58) = lhs - rhs;
lhs = y(72);
rhs = log(y(33));
residual(59) = lhs - rhs;
lhs = y(73);
rhs = log(y(29));
residual(60) = lhs - rhs;
lhs = y(74);
rhs = log(T(25));
residual(61) = lhs - rhs;
lhs = y(75);
rhs = log(y(52));
residual(62) = lhs - rhs;
lhs = y(76);
rhs = log(y(53));
residual(63) = lhs - rhs;
lhs = y(77);
rhs = log(y(36));
residual(64) = lhs - rhs;
lhs = y(78);
rhs = log(y(28)-y(23));
residual(65) = lhs - rhs;
lhs = y(79);
rhs = log(y(51));
residual(66) = lhs - rhs;
residual(67) = y(80);
lhs = y(81);
rhs = log(y(82)*T(25));
residual(68) = lhs - rhs;

end
