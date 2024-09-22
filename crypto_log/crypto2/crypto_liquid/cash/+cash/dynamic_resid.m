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
    T = cash.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(63, 1);
lhs = y(56)+y(54);
rhs = 1/T(1);
residual(1) = lhs - rhs;
lhs = y(53);
rhs = params(6)*y(82)/y(56);
residual(2) = lhs - rhs;
lhs = y(41);
rhs = params(15)/2*T(27)^2;
residual(3) = lhs - rhs;
lhs = y(43);
rhs = T(3)/y(25);
residual(4) = lhs - rhs;
lhs = y(44);
rhs = T(4)*y(19)*y(28)*T(5);
residual(5) = lhs - rhs;
lhs = y(42);
rhs = params(2);
residual(6) = lhs - rhs;
lhs = y(13);
rhs = T(9)*T(10);
residual(7) = lhs - rhs;
lhs = y(14)*(y(14)-1);
rhs = 1/params(17)*(1+y(13)*params(13)-params(13))+y(53)*y(80)/y(20)*y(76)*(y(76)-1);
residual(8) = lhs - rhs;
lhs = y(20);
rhs = T(14)*T(15);
residual(9) = lhs - rhs;
lhs = y(18)*y(21)/(y(15)*y(3));
rhs = params(11)/params(10);
residual(10) = lhs - rhs;
lhs = y(22)*y(16)/(y(15)*y(3));
rhs = (1-params(10)-params(11))/params(10);
residual(11) = lhs - rhs;
lhs = y(25);
rhs = y(24)+y(3)*params(12);
residual(12) = lhs - rhs;
lhs = y(26);
rhs = y(40)*T(16);
residual(13) = lhs - rhs;
lhs = (1-params(36))*y(46);
rhs = T(17);
residual(14) = lhs - rhs;
lhs = log(y(48));
rhs = 0.95*log(y(11))+x(it_, 6);
residual(15) = lhs - rhs;
lhs = y(47);
rhs = 1;
residual(16) = lhs - rhs;
lhs = y(52);
rhs = y(46)/y(10);
residual(17) = lhs - rhs;
lhs = y(57);
rhs = 0.95*y(12)+0.03*x(it_, 5);
residual(18) = lhs - rhs;
lhs = y(23);
rhs = y(51);
residual(19) = lhs - rhs;
lhs = y(55);
rhs = 1;
residual(20) = lhs - rhs;
residual(21) = y(50);
lhs = T(19)*T(20);
rhs = y(56)-params(6)*y(82)*params(37)/y(76);
residual(22) = lhs - rhs;
residual(23) = y(49);
lhs = y(16);
rhs = params(8)*y(22)^params(7);
residual(24) = lhs - rhs;
lhs = 1;
rhs = y(53)*(y(77)+params(12)*y(79))/T(21);
residual(25) = lhs - rhs;
lhs = 1;
rhs = y(53)*y(17)/y(76);
residual(26) = lhs - rhs;
lhs = y(19);
rhs = 1+y(41)+T(27)*params(15)*y(24)/(steady_state(12));
residual(27) = lhs - rhs;
lhs = y(36);
rhs = T(2)*T(23);
residual(28) = lhs - rhs;
lhs = y(58);
rhs = T(2)*(T(22)-y(52)/y(76));
residual(29) = lhs - rhs;
lhs = y(37);
rhs = T(2)*(T(22)-y(39)*y(78)/y(18));
residual(30) = lhs - rhs;
lhs = y(35);
rhs = T(2)*y(17)/y(76);
residual(31) = lhs - rhs;
lhs = y(34);
rhs = y(35)/(y(42)+y(35)*T(4)*T(5)-(y(36)+y(32)*y(37)));
residual(32) = lhs - rhs;
lhs = y(33);
rhs = y(42)*y(34);
residual(33) = lhs - rhs;
lhs = y(32);
rhs = y(37)/(params(5)*y(35))-1/params(1)+T(26);
residual(34) = lhs - rhs;
lhs = y(20);
rhs = y(44)+y(43)+y(26)+y(23)+y(24)*(1+y(41))+T(25);
residual(35) = lhs - rhs;
lhs = y(31);
rhs = y(21)+y(8)*y(6)-y(26)/y(18);
residual(36) = lhs - rhs;
lhs = y(27);
rhs = y(3)*(y(15)+y(19)*params(12))*params(4)+params(3)*((y(15)+y(19)*params(12))*y(4)-y(5)*y(1)/y(14)-y(6)*y(18)*y(8));
residual(37) = lhs - rhs;
lhs = y(19)*y(28)*(1+T(4)*T(5));
rhs = y(27)*y(34)*(1+T(4)*T(5));
residual(38) = lhs - rhs;
lhs = y(19)*y(28)*(1+T(4)*T(5));
rhs = y(27)+y(30)+y(18)*y(31);
residual(39) = lhs - rhs;
lhs = y(32);
rhs = y(18)*y(31)/(y(19)*y(28));
residual(40) = lhs - rhs;
residual(41) = y(59);
lhs = y(25);
rhs = y(29)+y(28);
residual(42) = lhs - rhs;
lhs = log(y(60));
rhs = log(y(18)/y(2))+log(y(14));
residual(43) = lhs - rhs;
lhs = log(params(6)*y(17));
rhs = x(it_, 1)+(1-params(19))*(log(y(14))*params(20)+0.*log(y(20)/(steady_state(8)))+log(y(60))*0.3)+params(19)*log(params(6)*y(1));
residual(44) = lhs - rhs;
lhs = log(y(38));
rhs = params(21)*log(y(7))+x(it_, 2);
residual(45) = lhs - rhs;
lhs = y(40);
rhs = x(it_, 4)+params(23)*y(9)+(steady_state(28))*(1-params(23));
residual(46) = lhs - rhs;
lhs = y(39);
rhs = x(it_, 3)+y(8)*params(22)+(steady_state(27))*(1-params(22));
residual(47) = lhs - rhs;
lhs = y(45);
rhs = y(20)-y(18)*y(21)-T(25)-y(43)-y(44);
residual(48) = lhs - rhs;
lhs = y(61);
rhs = log(y(20));
residual(49) = lhs - rhs;
lhs = y(62);
rhs = log(y(14));
residual(50) = lhs - rhs;
lhs = y(63);
rhs = log(y(17));
residual(51) = lhs - rhs;
lhs = y(64);
rhs = log(y(24));
residual(52) = lhs - rhs;
lhs = y(65);
rhs = log(y(22));
residual(53) = lhs - rhs;
lhs = y(66);
rhs = log(y(23));
residual(54) = lhs - rhs;
lhs = y(67);
rhs = log(y(26));
residual(55) = lhs - rhs;
lhs = y(68);
rhs = log(y(21));
residual(56) = lhs - rhs;
lhs = y(69);
rhs = log(y(30));
residual(57) = lhs - rhs;
lhs = y(70);
rhs = log(y(31));
residual(58) = lhs - rhs;
lhs = y(71);
rhs = log(y(27));
residual(59) = lhs - rhs;
lhs = y(72);
rhs = T(23);
residual(60) = lhs - rhs;
lhs = y(73);
rhs = log(y(51));
residual(61) = lhs - rhs;
lhs = y(74);
rhs = log(y(34));
residual(62) = lhs - rhs;
lhs = y(75);
rhs = y(26)-y(21);
residual(63) = lhs - rhs;

end