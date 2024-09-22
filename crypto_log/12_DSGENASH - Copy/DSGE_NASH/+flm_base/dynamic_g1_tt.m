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

assert(length(T) >= 78);

T = flm_base.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(35) = getPowerDeriv(y(9),1-params(1),1);
T(36) = (-y(10))/(y(1)*y(1));
T(37) = getPowerDeriv(y(10)/y(1),params(31),1);
T(38) = 1/y(11);
T(39) = params(16)/(params(16)-1)/y(11);
T(40) = 1/(steady_state(2))*getPowerDeriv(y(10)/(steady_state(2)),params(26),1);
T(41) = (-y(41))/(y(11)*y(11));
T(42) = getPowerDeriv(y(41)/y(11),(-1),1);
T(43) = (-(params(16)/(params(16)-1)*y(10)))/(y(11)*y(11));
T(44) = (-y(12))/(y(2)*y(2));
T(45) = y(18)*T(44);
T(46) = getPowerDeriv(y(18)*T(8),params(1),1);
T(47) = getPowerDeriv(T(8),params(6),1);
T(48) = getPowerDeriv(T(8),params(30),1);
T(49) = getPowerDeriv(y(12),params(1),1);
T(50) = 1/y(2);
T(51) = y(18)*T(50);
T(52) = getPowerDeriv(y(12),params(2),1);
T(53) = params(17)*exp(y(42))/exp(y(15));
T(54) = (-(params(17)*y(14)*exp(y(42))*exp(y(15))))/(exp(y(15))*exp(y(15)));
T(55) = getPowerDeriv(y(16),1-params(1),1);
T(56) = getPowerDeriv(y(17),params(1),1);
T(57) = 1/params(17)*getPowerDeriv(y(18),params(4),1);
T(58) = T(21)*T(57);
T(59) = T(23)*T(58);
T(60) = getPowerDeriv(y(19),1-params(1),1);
T(61) = getPowerDeriv(y(19),params(16),1);
T(62) = getPowerDeriv(y(19),params(5),1);
T(63) = T(20)*T(62);
T(64) = T(23)*T(63);
T(65) = getPowerDeriv(y(44),params(16)-1,1);
T(66) = getPowerDeriv(y(44),params(16),1);
T(67) = (-y(21))/(y(20)*y(20));
T(68) = getPowerDeriv(T(12),1-params(16),1);
T(69) = getPowerDeriv(T(12),(-params(16)),1);
T(70) = 1/y(20);
T(71) = getPowerDeriv(y(24),1-params(2),1);
T(72) = getPowerDeriv(y(26),params(3),1);
T(73) = (-(exp(y(15))*(-(getPowerDeriv(y(26),1+params(3),1)/(1+params(3))))));
T(74) = (-1)/(y(29)*y(29));
T(75) = T(34)*T(74);
T(76) = getPowerDeriv(T(26)*T(34),1-params(1),1);
T(77) = 1/(1-params(1))/(T(33)*T(33));
T(78) = 1/(steady_state(29))*getPowerDeriv(y(37)/(steady_state(29)),params(32),1);

end
