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
residual = zeros(69, 1);
lhs = y(62)+y(60);
rhs = 1/T(2);
residual(1) = lhs - rhs;
lhs = y(59);
rhs = params(7)*y(93)/y(62);
residual(2) = lhs - rhs;
lhs = y(50);
rhs = params(16)/2*T(41)^2;
residual(3) = lhs - rhs;
lhs = y(52);
rhs = T(5)/y(36);
residual(4) = lhs - rhs;
lhs = y(53);
rhs = T(6)*y(32)*y(38)*T(7);
residual(5) = lhs - rhs;
lhs = y(51);
rhs = params(3);
residual(6) = lhs - rhs;
lhs = y(27);
rhs = T(12)*T(13);
residual(7) = lhs - rhs;
lhs = y(18)*(y(18)-1);
rhs = 1/params(18)*(1+y(27)*params(14)-params(14))+T(14)*y(86)*(y(86)-1);
residual(8) = lhs - rhs;
lhs = y(16);
rhs = T(18)*T(19);
residual(9) = lhs - rhs;
lhs = y(31)*y(33)/(y(28)*y(5));
rhs = params(12)/params(11);
residual(10) = lhs - rhs;
lhs = y(34)*y(29)/(y(28)*y(5));
rhs = (1-params(11)-params(12))/params(11);
residual(11) = lhs - rhs;
lhs = y(36);
rhs = y(35)+y(5)*params(13);
residual(12) = lhs - rhs;
lhs = y(37);
rhs = y(49)*T(20);
residual(13) = lhs - rhs;
lhs = (1-params(37))*y(55);
rhs = T(21);
residual(14) = lhs - rhs;
lhs = log(y(57));
rhs = 0.95*log(y(13))+x(it_, 6);
residual(15) = lhs - rhs;
lhs = log(y(56));
rhs = (1-params(51))*log(y(12))+params(51)*(params(48)*log(y(18))+params(49)*log(T(22)));
residual(16) = lhs - rhs;
lhs = y(58);
rhs = y(55)/y(11);
residual(17) = lhs - rhs;
lhs = y(63);
rhs = 0.95*y(15)+0.03*x(it_, 5);
residual(18) = lhs - rhs;
lhs = y(17);
rhs = T(23)^(1/(1-params(30)));
residual(19) = lhs - rhs;
lhs = y(61);
rhs = y(22)/(y(22)+y(20));
residual(20) = lhs - rhs;
lhs = y(60)*params(40)*T(24)*T(25)-params(42)*2*y(22)*(params(41)-y(61))/T(26);
rhs = y(62)-y(56)*params(7)*y(93)/y(86);
residual(21) = lhs - rhs;
lhs = y(60)*params(39)*T(24)*T(27)-params(42)*2*(params(41)-y(61))*T(28);
rhs = y(62)-params(7)*y(93)*params(38)/y(86);
residual(22) = lhs - rhs;
lhs = params(35)*y(21)^(-params(32));
rhs = y(62)-y(58)*params(7)*y(93)/y(86);
residual(23) = lhs - rhs;
lhs = y(29);
rhs = params(9)*y(34)^params(8);
residual(24) = lhs - rhs;
lhs = 1;
rhs = y(59)*(y(89)+params(13)*y(91))/T(29);
residual(25) = lhs - rhs;
lhs = 1;
rhs = y(59)*y(30)/y(86);
residual(26) = lhs - rhs;
lhs = y(32);
rhs = 1+y(50)+T(41)*params(16)*y(35)/(steady_state(20));
residual(27) = lhs - rhs;
lhs = y(45);
rhs = T(4)*T(31);
residual(28) = lhs - rhs;
lhs = y(64);
rhs = T(4)*T(32);
residual(29) = lhs - rhs;
lhs = y(46);
rhs = T(4)*T(33);
residual(30) = lhs - rhs;
lhs = y(44);
rhs = T(4)*y(30)/y(86);
residual(31) = lhs - rhs;
lhs = y(43);
rhs = y(44)/T(34);
residual(32) = lhs - rhs;
lhs = y(42);
rhs = y(51)*y(43);
residual(33) = lhs - rhs;
lhs = y(41);
rhs = y(46)/(params(6)*y(44))-1/params(1)+T(35);
residual(34) = lhs - rhs;
lhs = y(16);
rhs = y(53)+y(52)+y(37)+y(17)+y(35)*(1+y(50))+T(37);
residual(35) = lhs - rhs;
lhs = y(23);
rhs = y(33)+y(9)*y(2)-y(37)/y(31);
residual(36) = lhs - rhs;
lhs = y(19);
rhs = params(4)*((y(28)+y(32)*params(13))*y(6)-y(7)*y(3)/y(18)-y(1)*y(14)/y(18)-y(2)*y(31)*y(9))+y(5)*(y(28)+y(32)*params(13))*params(5);
residual(37) = lhs - rhs;
lhs = y(32)*y(38)*(1+T(6)*T(7));
rhs = y(19)*y(43)*(1+T(6)*T(7));
residual(38) = lhs - rhs;
lhs = y(32)*y(38)*(1+T(6)*T(7));
rhs = y(21)+y(19)+y(40)+y(31)*y(23);
residual(39) = lhs - rhs;
lhs = y(41);
rhs = y(31)*y(23)/(y(32)*y(38));
residual(40) = lhs - rhs;
lhs = y(65);
rhs = y(21)/(y(32)*y(38));
residual(41) = lhs - rhs;
lhs = y(36);
rhs = y(39)+y(38);
residual(42) = lhs - rhs;
lhs = log(y(66));
rhs = log(y(18))+log(T(38));
residual(43) = lhs - rhs;
lhs = log(params(7)*y(30));
rhs = x(it_, 1)+(1-params(20))*(log(y(18))*params(21)+log(T(22))*0.+log(y(66))*params(50))+params(20)*log(params(7)*y(3));
residual(44) = lhs - rhs;
lhs = log(y(47));
rhs = params(22)*log(y(8))+x(it_, 2);
residual(45) = lhs - rhs;
lhs = y(49);
rhs = x(it_, 4)+params(24)*y(10)+(steady_state(34))*(1-params(24));
residual(46) = lhs - rhs;
lhs = y(48);
rhs = x(it_, 3)+y(9)*params(23)+(steady_state(33))*(1-params(23));
residual(47) = lhs - rhs;
lhs = y(54);
rhs = y(16)-y(31)*y(33)-T(37)-y(52)-y(53);
residual(48) = lhs - rhs;
lhs = y(68);
rhs = log(y(16));
residual(49) = lhs - rhs;
lhs = y(69);
rhs = log(y(18));
residual(50) = lhs - rhs;
lhs = y(70);
rhs = log(y(30));
residual(51) = lhs - rhs;
lhs = y(71);
rhs = log(y(35));
residual(52) = lhs - rhs;
lhs = y(72);
rhs = log(y(34));
residual(53) = lhs - rhs;
lhs = y(73);
rhs = log(y(17));
residual(54) = lhs - rhs;
lhs = y(74);
rhs = log(y(37));
residual(55) = lhs - rhs;
lhs = y(75);
rhs = log(y(33));
residual(56) = lhs - rhs;
lhs = y(76);
rhs = log(y(40));
residual(57) = lhs - rhs;
lhs = y(77);
rhs = log(y(23));
residual(58) = lhs - rhs;
lhs = y(78);
rhs = log(y(19));
residual(59) = lhs - rhs;
lhs = y(79);
rhs = T(31);
residual(60) = lhs - rhs;
lhs = y(80);
rhs = log(y(20));
residual(61) = lhs - rhs;
lhs = y(81);
rhs = log(y(22));
residual(62) = lhs - rhs;
lhs = y(82);
rhs = log(y(43));
residual(63) = lhs - rhs;
lhs = y(83);
rhs = y(37)-y(33);
residual(64) = lhs - rhs;
lhs = y(84);
rhs = log(y(21));
residual(65) = lhs - rhs;
lhs = y(67);
rhs = log(T(39));
residual(66) = lhs - rhs;
lhs = y(24);
rhs = log(T(39))+params(7)*y(87);
residual(67) = lhs - rhs;
lhs = y(25);
rhs = log(T(40))+params(7)*y(88);
residual(68) = lhs - rhs;
lhs = y(26);
rhs = y(24)-y(25);
residual(69) = lhs - rhs;

end
