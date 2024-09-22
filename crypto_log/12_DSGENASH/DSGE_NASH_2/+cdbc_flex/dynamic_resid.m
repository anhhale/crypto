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
    T = cdbc_flex.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(66, 1);
lhs = y(60)+y(58);
rhs = 1/T(2);
residual(1) = lhs - rhs;
lhs = y(57);
rhs = params(6)*y(89)/y(60);
residual(2) = lhs - rhs;
lhs = y(45);
rhs = params(15)/2*T(40)^2;
residual(3) = lhs - rhs;
lhs = y(47);
rhs = T(5)/y(29);
residual(4) = lhs - rhs;
lhs = y(48);
rhs = T(6)*y(23)*y(32)*T(7);
residual(5) = lhs - rhs;
lhs = y(46);
rhs = params(2);
residual(6) = lhs - rhs;
lhs = y(17);
rhs = T(12)*T(13);
residual(7) = lhs - rhs;
lhs = y(18)*(y(18)-1);
rhs = 1/params(17)*(1+y(17)*params(13)-params(13))+T(14)*y(83)*(y(83)-1);
residual(8) = lhs - rhs;
lhs = y(24);
rhs = T(18)*T(19);
residual(9) = lhs - rhs;
lhs = y(22)*y(25)/(y(19)*y(3));
rhs = params(11)/params(10);
residual(10) = lhs - rhs;
lhs = y(26)*y(20)/(y(19)*y(3));
rhs = (1-params(10)-params(11))/params(10);
residual(11) = lhs - rhs;
lhs = y(29);
rhs = y(28)+y(3)*params(12);
residual(12) = lhs - rhs;
lhs = y(30);
rhs = y(44)*T(20);
residual(13) = lhs - rhs;
lhs = (1-params(36))*y(50);
rhs = T(21);
residual(14) = lhs - rhs;
lhs = log(y(52));
rhs = 0.95*log(y(12))+x(it_, 6);
residual(15) = lhs - rhs;
lhs = log(y(51));
rhs = 0.07999999999999996*log(y(11))+0.92*(params(42)*log(y(18))+params(43)*log(T(22)));
residual(16) = lhs - rhs;
lhs = y(56);
rhs = y(50)/y(10);
residual(17) = lhs - rhs;
lhs = y(61);
rhs = 0.95*y(15)+0.03*x(it_, 5);
residual(18) = lhs - rhs;
lhs = y(27);
rhs = T(23)^(1/(1-params(29)));
residual(19) = lhs - rhs;
lhs = y(59);
rhs = y(55)/(y(55)+y(54));
residual(20) = lhs - rhs;
lhs = y(58)*params(39)*T(24)*T(25)-params(41)*2*y(55)*(params(40)-y(59))/T(26);
rhs = y(60)-y(51)*params(6)*y(89)/y(83);
residual(21) = lhs - rhs;
lhs = y(58)*params(38)*T(24)*T(27)-params(41)*2*(params(40)-y(59))*T(28);
rhs = y(60)-params(6)*y(89)*params(37)/y(83);
residual(22) = lhs - rhs;
lhs = params(34)*y(53)^(-params(31));
rhs = y(60)-y(56)*params(6)*y(89)/y(83);
residual(23) = lhs - rhs;
lhs = y(20);
rhs = params(8)*y(26)^params(7);
residual(24) = lhs - rhs;
lhs = 1;
rhs = y(57)*(y(84)+params(12)*y(86))/T(29);
residual(25) = lhs - rhs;
lhs = 1;
rhs = y(57)*y(21)/y(83);
residual(26) = lhs - rhs;
lhs = y(23);
rhs = 1+y(45)+T(40)*params(15)*y(28)/(steady_state(13));
residual(27) = lhs - rhs;
lhs = y(40);
rhs = T(4)*T(31);
residual(28) = lhs - rhs;
lhs = y(62);
rhs = T(4)*T(32);
residual(29) = lhs - rhs;
lhs = y(41);
rhs = T(4)*T(33);
residual(30) = lhs - rhs;
lhs = y(39);
rhs = T(4)*y(21)/y(83);
residual(31) = lhs - rhs;
lhs = y(38);
rhs = y(39)/T(34);
residual(32) = lhs - rhs;
lhs = y(37);
rhs = y(46)*y(38);
residual(33) = lhs - rhs;
lhs = y(36);
rhs = y(41)/(params(5)*y(39))-1/params(1)+T(35);
residual(34) = lhs - rhs;
lhs = y(24);
rhs = y(48)+y(47)+y(30)+y(27)+y(28)*(1+y(45))+T(37);
residual(35) = lhs - rhs;
lhs = y(35);
rhs = y(25)+y(8)*y(6)-y(30)/y(22);
residual(36) = lhs - rhs;
lhs = y(31);
rhs = params(3)*((y(19)+y(23)*params(12))*y(4)-y(5)*y(1)/y(18)-y(13)*y(14)/y(18)-y(6)*y(22)*y(8))+y(3)*(y(19)+y(23)*params(12))*params(4);
residual(37) = lhs - rhs;
lhs = y(23)*y(32)*(1+T(6)*T(7));
rhs = y(31)*y(38)*(1+T(6)*T(7));
residual(38) = lhs - rhs;
lhs = y(23)*y(32)*(1+T(6)*T(7));
rhs = y(53)+y(31)+y(34)+y(22)*y(35);
residual(39) = lhs - rhs;
lhs = y(36);
rhs = y(22)*y(35)/(y(23)*y(32));
residual(40) = lhs - rhs;
lhs = y(63);
rhs = y(53)/(y(23)*y(32));
residual(41) = lhs - rhs;
lhs = y(29);
rhs = y(33)+y(32);
residual(42) = lhs - rhs;
lhs = log(y(64));
rhs = log(y(18))+log(T(38));
residual(43) = lhs - rhs;
lhs = log(params(6)*y(21));
rhs = x(it_, 1)+(1-params(19))*(log(y(18))*params(20)+log(y(64))*params(44))+params(19)*log(params(6)*y(1));
residual(44) = lhs - rhs;
lhs = log(y(42));
rhs = params(21)*log(y(7))+x(it_, 2);
residual(45) = lhs - rhs;
lhs = y(44);
rhs = x(it_, 4)+params(23)*y(9)+(steady_state(29))*(1-params(23));
residual(46) = lhs - rhs;
lhs = y(43);
rhs = x(it_, 3)+y(8)*params(22)+(steady_state(28))*(1-params(22));
residual(47) = lhs - rhs;
lhs = y(49);
rhs = y(24)-y(22)*y(25)-T(37)-y(47)-y(48);
residual(48) = lhs - rhs;
lhs = y(65);
rhs = log(y(24));
residual(49) = lhs - rhs;
lhs = y(66);
rhs = log(y(18));
residual(50) = lhs - rhs;
lhs = y(67);
rhs = log(y(21));
residual(51) = lhs - rhs;
lhs = y(68);
rhs = log(y(28));
residual(52) = lhs - rhs;
lhs = y(69);
rhs = log(y(26));
residual(53) = lhs - rhs;
lhs = y(70);
rhs = log(y(27));
residual(54) = lhs - rhs;
lhs = y(71);
rhs = log(y(30));
residual(55) = lhs - rhs;
lhs = y(72);
rhs = log(y(25));
residual(56) = lhs - rhs;
lhs = y(73);
rhs = log(y(34));
residual(57) = lhs - rhs;
lhs = y(74);
rhs = log(y(35));
residual(58) = lhs - rhs;
lhs = y(75);
rhs = log(y(31));
residual(59) = lhs - rhs;
lhs = y(76);
rhs = T(31);
residual(60) = lhs - rhs;
lhs = y(77);
rhs = log(y(54));
residual(61) = lhs - rhs;
lhs = y(78);
rhs = log(y(55));
residual(62) = lhs - rhs;
lhs = y(79);
rhs = log(y(38));
residual(63) = lhs - rhs;
lhs = y(80);
rhs = y(30)-y(25);
residual(64) = lhs - rhs;
lhs = y(81);
rhs = log(y(53));
residual(65) = lhs - rhs;
lhs = y(16);
rhs = log(T(39))+params(6)*y(82);
residual(66) = lhs - rhs;

end
