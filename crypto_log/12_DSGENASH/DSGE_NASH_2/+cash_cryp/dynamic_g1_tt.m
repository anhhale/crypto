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

assert(length(T) >= 77);

T = cash_cryp.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(36) = params(17)/2*2*(y(17)-1);
T(37) = (-y(27))/(y(82)*y(82));
T(38) = T(37)-(-y(55))/(y(82)*y(82));
T(39) = (-(params(34)*getPowerDeriv(y(20),1-params(31),1)/(1-params(31))));
T(40) = getPowerDeriv(y(25),params(10),1);
T(41) = T(8)*T(40);
T(42) = T(11)*T(41);
T(43) = y(25)*y(5)*y(25)*y(5);
T(44) = 1/y(29);
T(45) = getPowerDeriv(y(26),1-params(10)-params(11),1);
T(46) = 1/y(82);
T(47) = (-T(46));
T(48) = (-y(28))/(y(4)*y(4));
T(49) = getPowerDeriv(y(28),params(11),1);
T(50) = getPowerDeriv(y(28),params(16),1);
T(51) = (-(y(45)*(-y(85))/(y(28)*y(28))));
T(52) = 1/y(4);
T(53) = (-(y(84)+params(12)*y(86)))/(y(29)*y(29));
T(54) = y(29)*y(35)*y(29)*y(35);
T(55) = params(12)/y(29);
T(56) = 1/params(11)*getPowerDeriv(y(30)/params(11),params(11),1);
T(57) = T(16)*T(56);
T(58) = getPowerDeriv(y(31),1+params(7),1);
T(59) = 1/(1-params(10)-params(11))*getPowerDeriv(y(31)/(1-params(10)-params(11)),1-params(10)-params(11),1);
T(60) = (-(params(8)/(1+params(7))*T(58)));
T(61) = (-(T(60)/T(33)));
T(62) = 1/(steady_state(18));
T(63) = 1/params(10)*getPowerDeriv(y(5)/params(10),params(10),1);
T(64) = y(44)*T(63);
T(65) = (-(params(9)*y(36)))/(y(33)*y(33));
T(66) = params(9)/y(33);
T(67) = (-(y(41)*(y(41)*T(6)*2*y(38)-y(43))));
T(68) = T(27)*T(27);
T(69) = (-(params(5)*y(43)))/(params(5)*y(41)*params(5)*y(41));
T(70) = 2*y(43)/(params(5)*y(41));
T(71) = T(69)*T(70)+y(62)*(-(params(5)*2*y(61)))/(params(5)*y(41)*params(5)*y(41))+(-(params(5)*2*y(42)))/(params(5)*y(41)*params(5)*y(41));
T(72) = 2/(params(5)*y(41));
T(73) = T(72)/(T(28)+T(28));
T(74) = 1/(params(5)*y(41));
T(75) = T(70)*T(74)/(T(28)+T(28));
T(76) = y(62)*T(72)/(T(28)+T(28));
T(77) = 2*y(61)/(params(5)*y(41))/(T(28)+T(28));

end
