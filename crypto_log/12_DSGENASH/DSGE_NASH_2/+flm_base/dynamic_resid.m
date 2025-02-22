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
    T = flm_base.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(32, 1);
lhs = y(10)*y(9);
rhs = y(11)+y(12)*y(13);
residual(1) = lhs - rhs;
lhs = 1;
rhs = T(1)*T(2)/y(43);
residual(2) = lhs - rhs;
lhs = y(11);
rhs = T(3)*T(4);
residual(3) = lhs - rhs;
lhs = 1;
rhs = T(5)*T(6);
residual(4) = lhs - rhs;
lhs = y(18);
rhs = T(7)*T(9);
residual(5) = lhs - rhs;
lhs = y(20);
rhs = y(10)/y(11)+params(18)*params(17)*T(10)*y(45);
residual(6) = lhs - rhs;
lhs = y(21);
rhs = params(18)*params(17)*T(11)*y(46)+y(22)*T(31);
residual(7) = lhs - rhs;
lhs = params(18)*y(19)^(params(16)-1);
rhs = 1-(1-params(18))*T(12)^(1-params(16));
residual(8) = lhs - rhs;
lhs = y(23);
rhs = (1-params(18))*T(12)^(-params(16))+params(18)*y(4)*T(13);
residual(9) = lhs - rhs;
lhs = y(22);
rhs = T(14)*T(15)/T(18);
residual(10) = lhs - rhs;
lhs = y(24);
rhs = y(11)*T(19);
residual(11) = lhs - rhs;
lhs = y(26);
rhs = y(23)*y(10)*y(22)*(1-params(2))/y(24);
residual(12) = lhs - rhs;
lhs = y(14);
rhs = T(24)*T(25)*exp(y(34));
residual(13) = lhs - rhs;
lhs = y(27);
rhs = y(13)+y(17)-y(28);
residual(14) = lhs - rhs;
lhs = y(17);
rhs = params(1)*y(11)/y(12);
residual(15) = lhs - rhs;
lhs = y(13);
rhs = y(23)*y(10)*y(22)*params(2)/y(12);
residual(16) = lhs - rhs;
lhs = y(28);
rhs = y(29)*y(12)*T(32);
residual(17) = lhs - rhs;
lhs = y(12)/y(40);
rhs = (T(26)*T(34))^(1-params(1));
residual(18) = lhs - rhs;
lhs = y(30);
rhs = y(27)/(y(27)+2*y(28));
residual(19) = lhs - rhs;
lhs = y(31);
rhs = params(7)*y(5)-x(it_, 1);
residual(20) = lhs - rhs;
lhs = y(32);
rhs = params(8)*y(6)+x(it_, 2);
residual(21) = lhs - rhs;
lhs = y(33);
rhs = params(9)*y(7)+x(it_, 3);
residual(22) = lhs - rhs;
lhs = y(34);
rhs = params(10)*y(8)+x(it_, 5);
residual(23) = lhs - rhs;
lhs = y(15);
rhs = params(21)*y(3)+x(it_, 4);
residual(24) = lhs - rhs;
lhs = y(33);
rhs = log(y(25));
residual(25) = lhs - rhs;
lhs = y(31);
rhs = log(y(29));
residual(26) = lhs - rhs;
lhs = y(35);
rhs = T(27)+params(17)*y(47);
residual(27) = lhs - rhs;
lhs = y(36);
rhs = y(12)*y(27)-y(27)*T(26);
residual(28) = lhs - rhs;
lhs = y(37);
rhs = y(11)/y(36);
residual(29) = lhs - rhs;
lhs = y(38);
rhs = y(36)*1/y(37)+params(17)*y(48);
residual(30) = lhs - rhs;
lhs = y(39);
rhs = (-((y(12)-(steady_state(4)))^2));
residual(31) = lhs - rhs;
lhs = y(40);
rhs = T(28)*T(29)*T(30);
residual(32) = lhs - rhs;

end
