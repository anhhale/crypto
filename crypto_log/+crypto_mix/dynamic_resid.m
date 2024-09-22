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
    T = crypto_mix.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(47, 1);
lhs = y(57)+y(55);
rhs = 1/T(1);
residual(1) = lhs - rhs;
lhs = y(52);
rhs = params(6)*y(66)/y(57);
residual(2) = lhs - rhs;
lhs = y(40);
rhs = params(15)/2*T(30)^2;
residual(3) = lhs - rhs;
lhs = y(42);
rhs = T(3)/y(24);
residual(4) = lhs - rhs;
lhs = y(43);
rhs = T(4)*y(18)*y(27)*T(5);
residual(5) = lhs - rhs;
lhs = y(41);
rhs = params(2)*exp(y(31)*(-params(1)));
residual(6) = lhs - rhs;
lhs = y(12);
rhs = T(9)*T(10);
residual(7) = lhs - rhs;
lhs = y(13)*(y(13)-1);
rhs = 1/params(17)*(1+y(12)*params(13)-params(13))+y(52)*y(63)/y(19)*y(59)*(y(59)-1);
residual(8) = lhs - rhs;
lhs = y(19);
rhs = T(14)*T(15);
residual(9) = lhs - rhs;
lhs = y(17)*y(20)/(y(14)*y(2));
rhs = params(11)/params(10);
residual(10) = lhs - rhs;
lhs = y(21)*y(15)/(y(14)*y(2));
rhs = (1-params(10)-params(11))/params(10);
residual(11) = lhs - rhs;
lhs = y(24);
rhs = y(23)+y(2)*params(12);
residual(12) = lhs - rhs;
lhs = y(25);
rhs = y(39)*T(16);
residual(13) = lhs - rhs;
lhs = (1-params(36))*y(45)*exp(y(58));
rhs = T(17);
residual(14) = lhs - rhs;
residual(15) = y(47);
lhs = y(46);
rhs = 1;
residual(16) = lhs - rhs;
lhs = y(51);
rhs = y(65)/y(45)+x(it_, 6);
residual(17) = lhs - rhs;
lhs = y(58);
rhs = 0.95*y(11)+0.03*x(it_, 5);
residual(18) = lhs - rhs;
lhs = y(22);
rhs = T(18)^(1/(1-params(29)));
residual(19) = lhs - rhs;
lhs = y(56);
rhs = y(50)/(y(50)+y(49));
residual(20) = lhs - rhs;
lhs = y(55)*params(39)*T(19)*T(20)-params(41)*2*y(50)*(params(40)-y(56))/T(21);
rhs = y(57)-params(6)*y(66)/y(59);
residual(21) = lhs - rhs;
lhs = y(55)*params(38)*T(19)*T(22)-params(41)*2*(params(40)-y(56))*T(23);
rhs = y(57)-params(6)*y(66)*params(37)/y(59);
residual(22) = lhs - rhs;
lhs = params(34)*(y(45)*y(48))^(-params(31));
rhs = y(57)-y(51)*params(6)*y(66)/y(59);
residual(23) = lhs - rhs;
lhs = y(15);
rhs = params(8)*y(21)^params(7);
residual(24) = lhs - rhs;
lhs = 1;
rhs = y(52)*(y(60)+params(12)*y(62))/T(24);
residual(25) = lhs - rhs;
lhs = 1;
rhs = y(52)*y(16)/y(59);
residual(26) = lhs - rhs;
lhs = y(18);
rhs = 1+y(40)+T(30)*params(15)*y(23)/(steady_state(12));
residual(27) = lhs - rhs;
lhs = y(35);
rhs = T(2)*T(25);
residual(28) = lhs - rhs;
lhs = y(36);
rhs = T(2)*T(26);
residual(29) = lhs - rhs;
lhs = y(34);
rhs = T(2)*y(16)/y(59);
residual(30) = lhs - rhs;
lhs = y(33);
rhs = y(34)/(y(41)+y(34)*T(4)*T(5)-(y(35)+y(31)*y(36)));
residual(31) = lhs - rhs;
lhs = y(32);
rhs = y(41)*y(33);
residual(32) = lhs - rhs;
lhs = y(31);
rhs = y(36)/(params(5)*y(34))-1/params(1)+T(27);
residual(33) = lhs - rhs;
lhs = y(19);
rhs = y(43)+y(42)+y(25)+y(22)+y(23)*(1+y(40))+T(29);
residual(34) = lhs - rhs;
lhs = y(30);
rhs = y(20)+y(7)*y(5)-y(25)/y(17);
residual(35) = lhs - rhs;
lhs = y(26);
rhs = params(3)*((y(14)+y(18)*params(12))*y(3)-y(4)*y(1)/y(13)-y(5)*y(17)*y(7))+y(2)*(y(14)+y(18)*params(12))*params(4);
residual(36) = lhs - rhs;
lhs = y(18)*y(27)*(1+T(4)*T(5));
rhs = y(26)*y(33)*(1+T(4)*T(5));
residual(37) = lhs - rhs;
lhs = y(18)*y(27)*(1+T(4)*T(5));
rhs = y(26)+y(29)+y(17)*y(30);
residual(38) = lhs - rhs;
lhs = y(31);
rhs = y(17)*y(30)/(y(18)*y(27));
residual(39) = lhs - rhs;
lhs = y(24);
rhs = y(28)+y(27);
residual(40) = lhs - rhs;
lhs = y(16)-1-(1/params(6)-1);
rhs = x(it_, 1)+(y(13)-1)*(1-params(19))*params(20)+params(19)*(y(1)-1-(1/params(6)-1));
residual(41) = lhs - rhs;
lhs = y(37);
rhs = 1-params(21)+params(21)*y(6)+x(it_, 2);
residual(42) = lhs - rhs;
lhs = log(y(53));
rhs = x(it_, 6)+params(21)*log(y(9));
residual(43) = lhs - rhs;
lhs = log(y(54));
rhs = params(21)*log(y(10));
residual(44) = lhs - rhs;
lhs = y(39);
rhs = x(it_, 4)+params(23)*y(8)+(steady_state(28))*(1-params(23));
residual(45) = lhs - rhs;
lhs = y(38);
rhs = x(it_, 3)+y(7)*params(22)+(steady_state(27))*(1-params(22));
residual(46) = lhs - rhs;
lhs = y(44);
rhs = y(19)-y(17)*y(20)-T(29)-y(42)-y(43);
residual(47) = lhs - rhs;

end
