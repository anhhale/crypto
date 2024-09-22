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
    T = cdbc_flex_optim.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(67, 1);
lhs = y(60)+y(58);
rhs = 1/T(2);
residual(1) = lhs - rhs;
lhs = y(57);
rhs = params(6)*y(90)/y(60);
residual(2) = lhs - rhs;
lhs = y(48);
rhs = params(15)/2*T(41)^2;
residual(3) = lhs - rhs;
lhs = y(50);
rhs = T(5)/y(34);
residual(4) = lhs - rhs;
lhs = y(51);
rhs = T(6)*y(30)*y(36)*T(7);
residual(5) = lhs - rhs;
lhs = y(49);
rhs = params(2);
residual(6) = lhs - rhs;
lhs = y(25);
rhs = T(12)*T(13);
residual(7) = lhs - rhs;
lhs = y(18)*(y(18)-1);
rhs = 1/params(17)*(1+y(25)*params(13)-params(13))+T(14)*y(84)*(y(84)-1);
residual(8) = lhs - rhs;
lhs = y(16);
rhs = T(18)*T(19);
residual(9) = lhs - rhs;
lhs = y(29)*y(31)/(y(26)*y(5));
rhs = params(11)/params(10);
residual(10) = lhs - rhs;
lhs = y(32)*y(27)/(y(26)*y(5));
rhs = (1-params(10)-params(11))/params(10);
residual(11) = lhs - rhs;
lhs = y(34);
rhs = y(33)+y(5)*params(12);
residual(12) = lhs - rhs;
lhs = y(35);
rhs = y(47)*T(20);
residual(13) = lhs - rhs;
lhs = (1-params(36))*y(53);
rhs = T(21);
residual(14) = lhs - rhs;
lhs = log(y(55));
rhs = 0.95*log(y(13))+x(it_, 6);
residual(15) = lhs - rhs;
lhs = log(y(54));
rhs = 0.07999999999999996*log(y(12))+0.92*(params(47)*log(y(18))+params(48)*log(T(22)));
residual(16) = lhs - rhs;
lhs = y(56);
rhs = y(53)/y(11);
residual(17) = lhs - rhs;
lhs = y(61);
rhs = 0.95*y(15)+0.03*x(it_, 5);
residual(18) = lhs - rhs;
lhs = y(17);
rhs = T(23)^(1/(1-params(29)));
residual(19) = lhs - rhs;
lhs = y(59);
rhs = y(22)/(y(22)+y(20));
residual(20) = lhs - rhs;
lhs = y(58)*params(39)*T(24)*T(25)-params(41)*2*y(22)*(params(40)-y(59))/T(26);
rhs = y(60)-y(54)*params(6)*y(90)/y(84);
residual(21) = lhs - rhs;
lhs = y(58)*params(38)*T(24)*T(27)-params(41)*2*(params(40)-y(59))*T(28);
rhs = y(60)-params(6)*y(90)*params(37)/y(84);
residual(22) = lhs - rhs;
lhs = params(34)*y(21)^(-params(31));
rhs = y(60)-y(56)*params(6)*y(90)/y(84);
residual(23) = lhs - rhs;
lhs = y(27);
rhs = params(8)*y(32)^params(7);
residual(24) = lhs - rhs;
lhs = 1;
rhs = y(57)*(y(86)+params(12)*y(88))/T(29);
residual(25) = lhs - rhs;
lhs = 1;
rhs = y(57)*y(28)/y(84);
residual(26) = lhs - rhs;
lhs = y(30);
rhs = 1+y(48)+T(41)*params(15)*y(33)/(steady_state(18));
residual(27) = lhs - rhs;
lhs = y(43);
rhs = T(4)*T(31);
residual(28) = lhs - rhs;
lhs = y(62);
rhs = T(4)*T(32);
residual(29) = lhs - rhs;
lhs = y(44);
rhs = T(4)*T(33);
residual(30) = lhs - rhs;
lhs = y(42);
rhs = T(4)*y(28)/y(84);
residual(31) = lhs - rhs;
lhs = y(41);
rhs = y(42)/T(34);
residual(32) = lhs - rhs;
lhs = y(40);
rhs = y(49)*y(41);
residual(33) = lhs - rhs;
lhs = y(39);
rhs = y(44)/(params(5)*y(42))-1/params(1)+T(35);
residual(34) = lhs - rhs;
lhs = y(16);
rhs = y(51)+y(50)+y(35)+y(17)+y(33)*(1+y(48))+T(37);
residual(35) = lhs - rhs;
lhs = y(23);
rhs = y(31)+y(9)*y(2)-y(35)/y(29);
residual(36) = lhs - rhs;
lhs = y(19);
rhs = params(3)*((y(26)+y(30)*params(12))*y(6)-y(7)*y(3)/y(18)-y(1)*y(14)/y(18)-y(2)*y(29)*y(9))+y(5)*(y(26)+y(30)*params(12))*params(4);
residual(37) = lhs - rhs;
lhs = y(30)*y(36)*(1+T(6)*T(7));
rhs = y(19)*y(41)*(1+T(6)*T(7));
residual(38) = lhs - rhs;
lhs = y(30)*y(36)*(1+T(6)*T(7));
rhs = y(21)+y(19)+y(38)+y(29)*y(23);
residual(39) = lhs - rhs;
lhs = y(39);
rhs = y(29)*y(23)/(y(30)*y(36));
residual(40) = lhs - rhs;
lhs = y(63);
rhs = y(21)/(y(30)*y(36));
residual(41) = lhs - rhs;
lhs = y(34);
rhs = y(37)+y(36);
residual(42) = lhs - rhs;
lhs = log(y(64));
rhs = log(y(18))+log(T(38));
residual(43) = lhs - rhs;
lhs = log(params(6)*y(28));
rhs = x(it_, 1)+(1-params(19))*(log(y(18))*params(20)+log(T(22))*0.+log(y(64))*params(49))+params(19)*log(params(6)*y(3));
residual(44) = lhs - rhs;
lhs = log(y(45));
rhs = params(21)*log(y(8))+x(it_, 2);
residual(45) = lhs - rhs;
lhs = y(47);
rhs = x(it_, 4)+params(23)*y(10)+(steady_state(32))*(1-params(23));
residual(46) = lhs - rhs;
lhs = y(46);
rhs = x(it_, 3)+y(9)*params(22)+(steady_state(31))*(1-params(22));
residual(47) = lhs - rhs;
lhs = y(52);
rhs = y(16)-y(29)*y(31)-T(37)-y(50)-y(51);
residual(48) = lhs - rhs;
lhs = y(66);
rhs = log(y(16));
residual(49) = lhs - rhs;
lhs = y(67);
rhs = log(y(18));
residual(50) = lhs - rhs;
lhs = y(68);
rhs = log(y(28));
residual(51) = lhs - rhs;
lhs = y(69);
rhs = log(y(33));
residual(52) = lhs - rhs;
lhs = y(70);
rhs = log(y(32));
residual(53) = lhs - rhs;
lhs = y(71);
rhs = log(y(17));
residual(54) = lhs - rhs;
lhs = y(72);
rhs = log(y(35));
residual(55) = lhs - rhs;
lhs = y(73);
rhs = log(y(31));
residual(56) = lhs - rhs;
lhs = y(74);
rhs = log(y(38));
residual(57) = lhs - rhs;
lhs = y(75);
rhs = log(y(23));
residual(58) = lhs - rhs;
lhs = y(76);
rhs = log(y(19));
residual(59) = lhs - rhs;
lhs = y(77);
rhs = T(31);
residual(60) = lhs - rhs;
lhs = y(78);
rhs = log(y(20));
residual(61) = lhs - rhs;
lhs = y(79);
rhs = log(y(22));
residual(62) = lhs - rhs;
lhs = y(80);
rhs = log(y(41));
residual(63) = lhs - rhs;
lhs = y(81);
rhs = y(35)-y(31);
residual(64) = lhs - rhs;
lhs = y(82);
rhs = log(y(21));
residual(65) = lhs - rhs;
lhs = y(65);
rhs = T(40);
residual(66) = lhs - rhs;
lhs = y(24);
rhs = T(40)+params(6)*y(85);
residual(67) = lhs - rhs;

end
