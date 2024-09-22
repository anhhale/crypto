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
    T = cdbc_quantity.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(67, 1);
lhs = y(61)+y(59);
rhs = 1/T(1);
residual(1) = lhs - rhs;
lhs = y(58);
rhs = params(6)*y(89)/y(61);
residual(2) = lhs - rhs;
lhs = y(44);
rhs = params(15)/2*T(30)^2;
residual(3) = lhs - rhs;
lhs = y(46);
rhs = T(3)/y(28);
residual(4) = lhs - rhs;
lhs = y(47);
rhs = T(4)*y(22)*y(31)*T(5);
residual(5) = lhs - rhs;
lhs = y(45);
rhs = params(2);
residual(6) = lhs - rhs;
lhs = y(16);
rhs = T(9)*T(10);
residual(7) = lhs - rhs;
lhs = y(17)*(y(17)-1);
rhs = 1/params(17)*(1+y(16)*params(13)-params(13))+y(58)*y(87)/y(23)*y(83)*(y(83)-1);
residual(8) = lhs - rhs;
lhs = y(23);
rhs = T(14)*T(15);
residual(9) = lhs - rhs;
lhs = y(21)*y(24)/(y(18)*y(3));
rhs = params(11)/params(10);
residual(10) = lhs - rhs;
lhs = y(25)*y(19)/(y(18)*y(3));
rhs = (1-params(10)-params(11))/params(10);
residual(11) = lhs - rhs;
lhs = y(28);
rhs = y(27)+y(3)*params(12);
residual(12) = lhs - rhs;
lhs = y(29);
rhs = y(43)*T(16);
residual(13) = lhs - rhs;
lhs = (1-params(36))*y(49);
rhs = T(17);
residual(14) = lhs - rhs;
lhs = log(y(52));
rhs = 0.95*log(y(12))+x(it_, 6);
residual(15) = lhs - rhs;
lhs = y(55);
rhs = y(23)*0.2;
residual(16) = lhs - rhs;
lhs = y(51);
rhs = y(55)/y(54);
residual(17) = lhs - rhs;
lhs = y(50);
rhs = y(51)/y(11);
residual(18) = lhs - rhs;
lhs = y(57);
rhs = y(49)/y(10);
residual(19) = lhs - rhs;
lhs = y(62);
rhs = 0.95*y(15)+0.03*x(it_, 5);
residual(20) = lhs - rhs;
lhs = y(26);
rhs = T(18)^(1/(1-params(29)));
residual(21) = lhs - rhs;
lhs = y(60);
rhs = y(56)/(y(54)+y(56));
residual(22) = lhs - rhs;
lhs = y(59)*params(39)*T(19)*T(20)-params(41)*2*y(56)*(params(40)-y(60))/T(21);
rhs = y(61)-y(50)*params(6)*y(89)/y(83);
residual(23) = lhs - rhs;
lhs = y(59)*params(38)*T(19)*T(22)-params(41)*2*(params(40)-y(60))*T(23);
rhs = y(61)-params(6)*y(89)*params(37)/y(83);
residual(24) = lhs - rhs;
lhs = params(34)*y(53)^(-params(31));
rhs = y(61)-y(57)*params(6)*y(89)/y(83);
residual(25) = lhs - rhs;
lhs = y(19);
rhs = params(8)*y(25)^params(7);
residual(26) = lhs - rhs;
lhs = 1;
rhs = y(58)*(y(84)+params(12)*y(86))/T(24);
residual(27) = lhs - rhs;
lhs = 1;
rhs = y(58)*y(20)/y(83);
residual(28) = lhs - rhs;
lhs = y(22);
rhs = 1+y(44)+T(30)*params(15)*y(27)/(steady_state(12));
residual(29) = lhs - rhs;
lhs = y(39);
rhs = T(2)*T(26);
residual(30) = lhs - rhs;
lhs = y(63);
rhs = T(2)*(T(25)-y(57)/y(83));
residual(31) = lhs - rhs;
lhs = y(40);
rhs = T(2)*(T(25)-y(42)*y(85)/y(21));
residual(32) = lhs - rhs;
lhs = y(38);
rhs = T(2)*y(20)/y(83);
residual(33) = lhs - rhs;
lhs = y(37);
rhs = y(38)/(y(45)+y(38)*T(4)*T(5)-(y(39)+y(35)*y(40)+y(63)*y(64)));
residual(34) = lhs - rhs;
lhs = y(36);
rhs = y(45)*y(37);
residual(35) = lhs - rhs;
lhs = y(35);
rhs = y(40)/(params(5)*y(38))-1/params(1)+T(27);
residual(36) = lhs - rhs;
lhs = y(23);
rhs = y(47)+y(46)+y(29)+y(26)+y(27)*(1+y(44))+T(29);
residual(37) = lhs - rhs;
lhs = y(34);
rhs = y(24)+y(8)*y(6)-y(29)/y(21);
residual(38) = lhs - rhs;
lhs = y(30);
rhs = params(3)*((y(18)+y(22)*params(12))*y(4)-y(5)*y(1)/y(17)-y(13)*y(14)/y(17)-y(6)*y(21)*y(8))+y(3)*(y(18)+y(22)*params(12))*params(4);
residual(39) = lhs - rhs;
lhs = y(22)*y(31)*(1+T(4)*T(5));
rhs = y(30)*y(37)*(1+T(4)*T(5));
residual(40) = lhs - rhs;
lhs = y(22)*y(31)*(1+T(4)*T(5));
rhs = y(53)+y(30)+y(33)+y(21)*y(34);
residual(41) = lhs - rhs;
lhs = y(35);
rhs = y(21)*y(34)/(y(22)*y(31));
residual(42) = lhs - rhs;
lhs = y(64);
rhs = y(53)/(y(22)*y(31));
residual(43) = lhs - rhs;
lhs = y(28);
rhs = y(32)+y(31);
residual(44) = lhs - rhs;
lhs = log(y(65));
rhs = log(y(21)/y(2))+log(y(17));
residual(45) = lhs - rhs;
lhs = log(params(6)*y(20));
rhs = x(it_, 1)+(1-params(19))*(log(y(17))*params(20)+0.*log(y(23)/(steady_state(8)))+log(y(65))*0.3)+params(19)*log(params(6)*y(1));
residual(46) = lhs - rhs;
lhs = log(y(41));
rhs = params(21)*log(y(7))+x(it_, 2);
residual(47) = lhs - rhs;
lhs = y(43);
rhs = x(it_, 4)+params(23)*y(9)+(steady_state(28))*(1-params(23));
residual(48) = lhs - rhs;
lhs = y(42);
rhs = x(it_, 3)+y(8)*params(22)+(steady_state(27))*(1-params(22));
residual(49) = lhs - rhs;
lhs = y(48);
rhs = y(23)-y(21)*y(24)-T(29)-y(46)-y(47);
residual(50) = lhs - rhs;
lhs = y(66);
rhs = log(y(23));
residual(51) = lhs - rhs;
lhs = y(67);
rhs = log(y(17));
residual(52) = lhs - rhs;
lhs = y(68);
rhs = log(y(20));
residual(53) = lhs - rhs;
lhs = y(69);
rhs = log(y(27));
residual(54) = lhs - rhs;
lhs = y(70);
rhs = log(y(25));
residual(55) = lhs - rhs;
lhs = y(71);
rhs = log(y(26));
residual(56) = lhs - rhs;
lhs = y(72);
rhs = log(y(29));
residual(57) = lhs - rhs;
lhs = y(73);
rhs = log(y(24));
residual(58) = lhs - rhs;
lhs = y(74);
rhs = log(y(33));
residual(59) = lhs - rhs;
lhs = y(75);
rhs = log(y(34));
residual(60) = lhs - rhs;
lhs = y(76);
rhs = log(y(30));
residual(61) = lhs - rhs;
lhs = y(77);
rhs = T(26);
residual(62) = lhs - rhs;
lhs = y(78);
rhs = log(y(54));
residual(63) = lhs - rhs;
lhs = y(79);
rhs = log(y(56));
residual(64) = lhs - rhs;
lhs = y(80);
rhs = log(y(37));
residual(65) = lhs - rhs;
lhs = y(81);
rhs = y(29)-y(24);
residual(66) = lhs - rhs;
lhs = y(82);
rhs = log(y(53));
residual(67) = lhs - rhs;

end
