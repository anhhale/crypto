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

assert(length(T) >= 91);

T = cdbc_flex_optim.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(42) = 1/(steady_state(1))/T(22);
T(43) = getPowerDeriv(y(17),params(30),1);
T(44) = params(18)/2*2*(y(18)-1);
T(45) = (-y(30))/(y(86)*y(86));
T(46) = T(45)-(-y(58))/(y(86)*y(86));
T(47) = params(40)*getPowerDeriv(y(20),1-params(30),1);
T(48) = getPowerDeriv(T(23),1/(1-params(30)),1);
T(49) = getPowerDeriv(y(20),(-params(30)),1);
T(50) = (-y(61))/((y(22)+y(20))*(y(22)+y(20)))-(-1)/((y(22)+y(20))*(y(22)+y(20)));
T(51) = params(42)*2*(params(41)-y(61))*T(50);
T(52) = params(39)*getPowerDeriv(y(22),1-params(30),1);
T(53) = getPowerDeriv(y(22),(-params(30)),1);
T(54) = getPowerDeriv(y(28),params(11),1);
T(55) = T(8)*T(54);
T(56) = T(11)*T(55);
T(57) = y(28)*y(5)*y(28)*y(5);
T(58) = 1/y(32);
T(59) = getPowerDeriv(y(29),1-params(11)-params(12),1);
T(60) = 1/y(86);
T(61) = (-T(60));
T(62) = (-y(31))/(y(4)*y(4));
T(63) = getPowerDeriv(y(31),params(12),1);
T(64) = getPowerDeriv(y(31),params(17),1);
T(65) = (-(y(48)*(-y(90))/(y(31)*y(31))));
T(66) = 1/y(4);
T(67) = (-(y(89)+params(13)*y(91)))/(y(32)*y(32));
T(68) = y(32)*y(38)*y(32)*y(38);
T(69) = params(13)/y(32);
T(70) = 1/params(12)*getPowerDeriv(y(33)/params(12),params(12),1);
T(71) = T(16)*T(70);
T(72) = getPowerDeriv(y(34),1+params(8),1);
T(73) = 1/(1-params(11)-params(12))*getPowerDeriv(y(34)/(1-params(11)-params(12)),1-params(11)-params(12),1);
T(74) = (-(params(9)/(1+params(8))*T(72)));
T(75) = (-(T(74)/T(39)));
T(76) = 1/(steady_state(20));
T(77) = 1/params(11)*getPowerDeriv(y(5)/params(11),params(11),1);
T(78) = y(47)*T(77);
T(79) = (-(params(10)*y(39)))/(y(36)*y(36));
T(80) = params(10)/y(36);
T(81) = (-(y(44)*(y(44)*T(6)*2*y(41)-y(46))));
T(82) = T(34)*T(34);
T(83) = (-(params(6)*y(46)))/(params(6)*y(44)*params(6)*y(44));
T(84) = 2*y(46)/(params(6)*y(44));
T(85) = T(83)*T(84)+y(65)*(-(params(6)*2*y(64)))/(params(6)*y(44)*params(6)*y(44))+(-(params(6)*2*y(45)))/(params(6)*y(44)*params(6)*y(44));
T(86) = 2/(params(6)*y(44));
T(87) = T(86)/(T(35)+T(35));
T(88) = 1/(params(6)*y(44));
T(89) = T(84)*T(88)/(T(35)+T(35));
T(90) = y(65)*T(86)/(T(35)+T(35));
T(91) = 2*y(64)/(params(6)*y(44))/(T(35)+T(35));

end
