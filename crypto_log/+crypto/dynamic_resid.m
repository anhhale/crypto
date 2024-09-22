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
    T = crypto.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(44, 1);
lhs = y(52);
rhs = params(6)*T(1)/T(2);
residual(1) = lhs - rhs;
lhs = y(53);
rhs = 1/T(1);
residual(2) = lhs - rhs;
lhs = y(40);
rhs = params(15)/2*T(25)^2;
residual(3) = lhs - rhs;
lhs = y(42);
rhs = T(4)/y(24);
residual(4) = lhs - rhs;
lhs = y(43);
rhs = T(5)*y(18)*y(27)*T(6);
residual(5) = lhs - rhs;
lhs = y(41);
rhs = params(2);
residual(6) = lhs - rhs;
lhs = y(12);
rhs = T(10)*T(11);
residual(7) = lhs - rhs;
lhs = y(13)*(y(13)-1);
rhs = 1/params(17)*(1+y(12)*params(13)-params(13))+y(52)*y(60)/y(19)*y(56)*(y(56)-1);
residual(8) = lhs - rhs;
lhs = y(19);
rhs = T(15)*T(16);
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
rhs = y(39)*T(17);
residual(13) = lhs - rhs;
lhs = (1-params(36))*y(45);
rhs = T(18);
residual(14) = lhs - rhs;
lhs = y(47);
rhs = y(45)*y(48);
residual(15) = lhs - rhs;
lhs = y(46);
rhs = 1;
residual(16) = lhs - rhs;
lhs = y(51);
rhs = y(45)/y(9);
residual(17) = lhs - rhs;
lhs = params(32)*y(49)^(-params(29));
rhs = y(53)-params(6)*y(64)/y(56);
residual(18) = lhs - rhs;
lhs = params(33)*y(50)^(-params(30));
rhs = y(53)-params(6)*y(64)*params(37)/y(56);
residual(19) = lhs - rhs;
lhs = params(34)*y(48)^(-params(31));
rhs = y(53)-y(51)*params(6)*y(64)/y(56);
residual(20) = lhs - rhs;
lhs = y(15);
rhs = params(8)*y(21)^params(7);
residual(21) = lhs - rhs;
lhs = 1;
rhs = y(52)*(y(57)+params(12)*y(59))/T(19);
residual(22) = lhs - rhs;
lhs = 1;
rhs = y(52)*y(16)/y(56);
residual(23) = lhs - rhs;
lhs = y(18);
rhs = 1+y(40)+T(25)*params(15)*y(23)/(steady_state(12));
residual(24) = lhs - rhs;
lhs = y(35);
rhs = T(3)*T(20);
residual(25) = lhs - rhs;
lhs = y(36);
rhs = T(3)*T(21);
residual(26) = lhs - rhs;
lhs = y(34);
rhs = T(3)*y(16)/y(56);
residual(27) = lhs - rhs;
lhs = y(33);
rhs = y(34)/(y(41)+y(34)*T(5)*T(6)-(y(35)+y(31)*y(36)));
residual(28) = lhs - rhs;
lhs = y(32);
rhs = y(41)*y(33);
residual(29) = lhs - rhs;
lhs = y(31);
rhs = y(36)/(params(5)*y(34))-1/params(1)+T(22);
residual(30) = lhs - rhs;
lhs = y(19);
rhs = y(43)+y(42)+y(25)+y(22)+y(23)*(1+y(40))+T(24);
residual(31) = lhs - rhs;
lhs = y(30);
rhs = y(20)+y(7)*y(5)-y(25)/y(17);
residual(32) = lhs - rhs;
lhs = y(26);
rhs = params(3)*((y(14)+y(18)*params(12))*y(3)-y(4)*y(1)/y(13)-y(5)*y(17)*y(7))+y(2)*(y(14)+y(18)*params(12))*params(4);
residual(33) = lhs - rhs;
lhs = y(18)*y(27)*(1+T(5)*T(6));
rhs = y(26)*y(33)*(1+T(5)*T(6));
residual(34) = lhs - rhs;
lhs = y(18)*y(27)*(1+T(5)*T(6));
rhs = y(26)+y(29)+y(17)*y(30);
residual(35) = lhs - rhs;
lhs = y(31);
rhs = y(17)*y(30)/(y(18)*y(27));
residual(36) = lhs - rhs;
lhs = y(24);
rhs = y(28)+y(27);
residual(37) = lhs - rhs;
lhs = log(y(16))+log(params(6));
rhs = x(it_, 1)+(1-params(19))*params(20)*log(y(13))+params(19)*(log(y(1))+log(params(6)));
residual(38) = lhs - rhs;
lhs = y(37);
rhs = 1-params(21)+params(21)*y(6)+x(it_, 2);
residual(39) = lhs - rhs;
lhs = log(y(54));
rhs = params(21)*log(y(10));
residual(40) = lhs - rhs;
lhs = log(y(55));
rhs = params(21)*log(y(11));
residual(41) = lhs - rhs;
lhs = y(39);
rhs = x(it_, 4)+params(23)*y(8)+(steady_state(28))*(1-params(23));
residual(42) = lhs - rhs;
lhs = y(38);
rhs = x(it_, 3)+y(7)*params(22)+(steady_state(27))*(1-params(22));
residual(43) = lhs - rhs;
lhs = y(44);
rhs = y(19)-y(17)*y(20)-T(24)-y(42)-y(43);
residual(44) = lhs - rhs;

end
