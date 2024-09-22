function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 70);

T = abk.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(28) = params(17)/2*2*(y(10)-1);
T(29) = (-y(13))/(y(42)*y(42));
T(30) = (-T(29));
T(31) = getPowerDeriv(y(11),params(10),1);
T(32) = 1/y(34)*T(31);
T(33) = T(9)*T(32);
T(34) = y(11)*y(2)*y(11)*y(2);
T(35) = 1/y(15);
T(36) = getPowerDeriv(y(12),1-params(10)-params(11),1);
T(37) = 1/y(42);
T(38) = (-T(37));
T(39) = getPowerDeriv(y(14),params(11),1);
T(40) = getPowerDeriv(y(14),params(16),1);
T(41) = (-(y(35)*(-y(44))/(y(14)*y(14))));
T(42) = (-(y(35)*1/y(14)));
T(43) = (-(y(43)+params(12)*y(45)))/(y(15)*y(15));
T(44) = params(12)/y(15);
T(45) = 1/params(11)*getPowerDeriv(y(17)/params(11),params(11),1);
T(46) = T(13)*T(45);
T(47) = params(6)*(-(params(8)*getPowerDeriv(y(18),1+params(7),1)/(1+params(7))));
T(48) = T(47)/T(2);
T(49) = 1/(1-params(10)-params(11))*getPowerDeriv(y(18)/(1-params(10)-params(11)),1-params(10)-params(11),1);
T(50) = (1-params(3)+params(3)*y(49))*T(48);
T(51) = (-(params(8)*getPowerDeriv(y(47),1+params(7),1)/(1+params(7))));
T(52) = (-(T(1)*T(51)))/(T(2)*T(2));
T(53) = (1-params(3)+params(3)*y(49))*T(52);
T(54) = params(6)/T(2);
T(55) = (1-params(3)+params(3)*y(49))*T(54);
T(56) = (-T(1))/(T(2)*T(2));
T(57) = (1-params(3)+params(3)*y(49))*T(56);
T(58) = 1/(steady_state(12));
T(59) = 1/params(10)*getPowerDeriv(y(2)/params(10),params(10),1);
T(60) = y(34)*T(59);
T(61) = (-(params(9)*y(25)))/(y(21)*y(21));
T(62) = params(9)/y(21);
T(63) = T(21)*T(21);
T(64) = (-(params(5)*y(33)))/(params(5)*y(31)*params(5)*y(31));
T(65) = 2*y(33)/(params(5)*y(31));
T(66) = T(64)*T(65)+(-(params(5)*2*y(32)))/(params(5)*y(31)*params(5)*y(31));
T(67) = 2/(params(5)*y(31))/(T(22)+T(22));
T(68) = 1/(params(5)*y(31));
T(69) = T(65)*T(68)/(T(22)+T(22));
T(70) = (-(y(44)/y(14)));

end
