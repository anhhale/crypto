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
    T = crypto_bank_mix.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(48, 1);
lhs = y(58)+y(56);
rhs = 1/T(1);
residual(1) = lhs - rhs;
lhs = y(55);
rhs = params(6)*y(69)/y(58);
residual(2) = lhs - rhs;
lhs = y(43);
rhs = params(15)/2*T(30)^2;
residual(3) = lhs - rhs;
lhs = y(45);
rhs = T(3)/y(27);
residual(4) = lhs - rhs;
lhs = y(46);
rhs = T(4)*y(21)*y(30)*T(5);
residual(5) = lhs - rhs;
lhs = y(44);
rhs = params(2);
residual(6) = lhs - rhs;
lhs = y(15);
rhs = T(9)*T(10);
residual(7) = lhs - rhs;
lhs = y(16)*(y(16)-1);
rhs = 1/params(17)*(1+y(15)*params(13)-params(13))+y(55)*y(67)/y(22)*y(63)*(y(63)-1);
residual(8) = lhs - rhs;
lhs = y(22);
rhs = T(14)*T(15);
residual(9) = lhs - rhs;
lhs = y(20)*y(23)/(y(17)*y(3));
rhs = params(11)/params(10);
residual(10) = lhs - rhs;
lhs = y(24)*y(18)/(y(17)*y(3));
rhs = (1-params(10)-params(11))/params(10);
residual(11) = lhs - rhs;
lhs = y(27);
rhs = y(26)+y(3)*params(12);
residual(12) = lhs - rhs;
lhs = y(28);
rhs = y(42)*T(16);
residual(13) = lhs - rhs;
lhs = (1-params(36))*y(48);
rhs = T(17);
residual(14) = lhs - rhs;
lhs = log(y(50));
rhs = 0.95*log(y(11))+x(it_, 6);
residual(15) = lhs - rhs;
lhs = y(49);
rhs = 1;
residual(16) = lhs - rhs;
lhs = y(54);
rhs = y(48)/y(10);
residual(17) = lhs - rhs;
lhs = y(59);
rhs = 0.95*y(14)+0.03*x(it_, 5);
residual(18) = lhs - rhs;
lhs = y(25);
rhs = T(18)^(1/(1-params(29)));
residual(19) = lhs - rhs;
lhs = y(57);
rhs = y(53)/(y(53)+y(52));
residual(20) = lhs - rhs;
lhs = y(56)*params(39)*T(19)*T(20)-params(41)*2*y(53)*(params(40)-y(57))/T(21);
rhs = y(58)-params(6)*y(69)/y(63);
residual(21) = lhs - rhs;
lhs = y(56)*params(38)*T(19)*T(22)-params(41)*2*(params(40)-y(57))*T(23);
rhs = y(58)-params(6)*y(69)*params(37)/y(63);
residual(22) = lhs - rhs;
lhs = params(34)*y(51)^(-params(31));
rhs = y(58)-y(54)*params(6)*y(69)/y(63);
residual(23) = lhs - rhs;
lhs = y(18);
rhs = params(8)*y(24)^params(7);
residual(24) = lhs - rhs;
lhs = 1;
rhs = y(55)*(y(64)+params(12)*y(66))/T(24);
residual(25) = lhs - rhs;
lhs = 1;
rhs = y(55)*y(19)/y(63);
residual(26) = lhs - rhs;
lhs = y(21);
rhs = 1+y(43)+T(30)*params(15)*y(26)/(steady_state(12));
residual(27) = lhs - rhs;
lhs = y(38);
rhs = T(2)*T(26);
residual(28) = lhs - rhs;
lhs = y(60);
rhs = T(2)*(T(25)-y(54)/y(63));
residual(29) = lhs - rhs;
lhs = y(39);
rhs = T(2)*(T(25)-y(41)*y(65)/y(20));
residual(30) = lhs - rhs;
lhs = y(37);
rhs = T(2)*y(19)/y(63);
residual(31) = lhs - rhs;
lhs = y(36);
rhs = y(37)/(y(44)+y(37)*T(4)*T(5)-(y(38)+y(34)*y(39)+y(60)*y(61)));
residual(32) = lhs - rhs;
lhs = y(35);
rhs = y(44)*y(36);
residual(33) = lhs - rhs;
lhs = y(34);
rhs = y(39)/(params(5)*y(37))-1/params(1)+T(27);
residual(34) = lhs - rhs;
lhs = y(22);
rhs = y(46)+y(45)+y(28)+y(25)+y(26)*(1+y(43))+T(29);
residual(35) = lhs - rhs;
lhs = y(33);
rhs = y(23)+y(8)*y(6)-y(28)/y(20);
residual(36) = lhs - rhs;
lhs = y(29);
rhs = params(3)*((y(17)+y(21)*params(12))*y(4)-y(5)*y(1)/y(16)-y(12)*y(13)/y(16)-y(6)*y(20)*y(8))+y(3)*(y(17)+y(21)*params(12))*params(4);
residual(37) = lhs - rhs;
lhs = y(21)*y(30)*(1+T(4)*T(5));
rhs = y(29)*y(36)*(1+T(4)*T(5));
residual(38) = lhs - rhs;
lhs = y(21)*y(30)*(1+T(4)*T(5));
rhs = y(51)+y(29)+y(32)+y(20)*y(33);
residual(39) = lhs - rhs;
lhs = y(34);
rhs = y(20)*y(33)/(y(21)*y(30));
residual(40) = lhs - rhs;
lhs = y(61);
rhs = y(51)/(y(21)*y(30));
residual(41) = lhs - rhs;
lhs = y(27);
rhs = y(31)+y(30);
residual(42) = lhs - rhs;
lhs = log(y(62));
rhs = log(y(20)/y(2))+log(y(16));
residual(43) = lhs - rhs;
lhs = log(params(6)*y(19));
rhs = x(it_, 1)+(1-params(19))*(log(y(16))*params(20)+0.*log(y(22)/(steady_state(8)))+log(y(62))*0.3)+params(19)*log(params(6)*y(1));
residual(44) = lhs - rhs;
lhs = log(y(40));
rhs = params(21)*log(y(7))+x(it_, 2);
residual(45) = lhs - rhs;
lhs = y(42);
rhs = x(it_, 4)+params(23)*y(9)+(steady_state(28))*(1-params(23));
residual(46) = lhs - rhs;
lhs = y(41);
rhs = x(it_, 3)+y(8)*params(22)+(steady_state(27))*(1-params(22));
residual(47) = lhs - rhs;
lhs = y(47);
rhs = y(22)-y(20)*y(23)-T(29)-y(45)-y(46);
residual(48) = lhs - rhs;

end
