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
    T = abk.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(33, 1);
lhs = y(37);
rhs = params(15)/2*T(25)^2;
residual(1) = lhs - rhs;
lhs = y(39);
rhs = T(4)/y(21);
residual(2) = lhs - rhs;
lhs = y(40);
rhs = T(5)*y(15)*y(24)*T(6);
residual(3) = lhs - rhs;
lhs = y(38);
rhs = params(2);
residual(4) = lhs - rhs;
lhs = y(9);
rhs = T(10)*T(11);
residual(5) = lhs - rhs;
lhs = y(10)*(y(10)-1);
rhs = 1/params(17)*(1+y(9)*params(13)-params(13))+(y(42)-1)*y(42)*T(26);
residual(6) = lhs - rhs;
lhs = y(16);
rhs = T(15)*T(16);
residual(7) = lhs - rhs;
lhs = y(14)*y(17)/(y(11)*y(2));
rhs = params(11)/params(10);
residual(8) = lhs - rhs;
lhs = y(18)*y(12)/(y(11)*y(2));
rhs = (1-params(10)-params(11))/params(10);
residual(9) = lhs - rhs;
lhs = y(21);
rhs = y(20)+y(2)*params(12);
residual(10) = lhs - rhs;
lhs = y(22);
rhs = y(36)*T(17);
residual(11) = lhs - rhs;
lhs = y(12);
rhs = params(8)*y(18)^params(7);
residual(12) = lhs - rhs;
lhs = 1;
rhs = T(3)*(y(43)+params(12)*y(45))/T(18);
residual(13) = lhs - rhs;
lhs = 1;
rhs = T(3)*y(13)/y(42);
residual(14) = lhs - rhs;
lhs = y(15);
rhs = 1+y(37)+T(25)*params(15)*y(20)/(steady_state(12));
residual(15) = lhs - rhs;
lhs = y(32);
rhs = T(19)*T(27);
residual(16) = lhs - rhs;
lhs = y(33);
rhs = T(20)*T(27);
residual(17) = lhs - rhs;
lhs = y(31);
rhs = y(13)*T(27)/y(42);
residual(18) = lhs - rhs;
lhs = y(30);
rhs = y(31)/T(21);
residual(19) = lhs - rhs;
lhs = y(29);
rhs = y(38)*y(30);
residual(20) = lhs - rhs;
lhs = y(28);
rhs = y(33)/(params(5)*y(31))-1/params(2)+T(22);
residual(21) = lhs - rhs;
lhs = y(16);
rhs = y(40)+y(39)+y(22)+y(19)+y(20)*(1+y(37))+T(24);
residual(22) = lhs - rhs;
lhs = y(27);
rhs = y(17)+y(7)*y(5)-y(22)/y(14);
residual(23) = lhs - rhs;
lhs = y(23);
rhs = params(3)*((y(11)+y(15)*params(12))*y(3)-y(4)*y(1)/y(10)-y(5)*y(14)*y(7))+y(2)*(y(11)+y(15)*params(12))*params(4);
residual(24) = lhs - rhs;
lhs = y(15)*y(24)*(1+T(5)*T(6));
rhs = y(23)*y(30)*(1+T(5)*T(6));
residual(25) = lhs - rhs;
lhs = y(15)*y(24)*(1+T(5)*T(6));
rhs = y(23)+y(26)+y(14)*y(27);
residual(26) = lhs - rhs;
lhs = y(28);
rhs = y(14)*y(27)/(y(15)*y(24));
residual(27) = lhs - rhs;
lhs = y(21);
rhs = y(25)+y(24);
residual(28) = lhs - rhs;
lhs = y(13)-1-(1/params(6)-1);
rhs = x(it_, 1)+(y(10)-1)*(1-params(19))*params(20)+params(19)*(y(1)-1-(1/params(6)-1));
residual(29) = lhs - rhs;
lhs = y(34);
rhs = 1-params(21)+params(21)*y(6)+x(it_, 2);
residual(30) = lhs - rhs;
lhs = y(36);
rhs = x(it_, 4)+params(23)*y(8)+(steady_state(28))*(1-params(23));
residual(31) = lhs - rhs;
lhs = y(35);
rhs = x(it_, 3)+y(7)*params(22)+(steady_state(27))*(1-params(22));
residual(32) = lhs - rhs;
lhs = y(41);
rhs = y(16)-y(14)*y(17)-T(24)-y(39)-y(40);
residual(33) = lhs - rhs;

end
