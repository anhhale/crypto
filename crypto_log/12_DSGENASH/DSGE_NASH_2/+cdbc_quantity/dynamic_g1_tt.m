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

T = cdbc_quantity.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(42) = getPowerDeriv(y(17),params(29),1);
T(43) = params(17)/2*2*(y(18)-1);
T(44) = (-y(28))/(y(86)*y(86));
T(45) = T(44)-(-y(56))/(y(86)*y(86));
T(46) = params(39)*getPowerDeriv(y(20),1-params(29),1);
T(47) = getPowerDeriv(T(22),1/(1-params(29)),1);
T(48) = getPowerDeriv(y(20),(-params(29)),1);
T(49) = (-y(61))/((y(20)+y(22))*(y(20)+y(22)))-(-1)/((y(20)+y(22))*(y(20)+y(22)));
T(50) = params(41)*2*(params(40)-y(61))*T(49);
T(51) = (-(params(34)*getPowerDeriv(y(21),1-params(31),1)/(1-params(31))));
T(52) = params(38)*getPowerDeriv(y(22),1-params(29),1);
T(53) = getPowerDeriv(y(22),(-params(29)),1);
T(54) = getPowerDeriv(y(26),params(10),1);
T(55) = T(8)*T(54);
T(56) = T(11)*T(55);
T(57) = y(26)*y(5)*y(26)*y(5);
T(58) = 1/y(30);
T(59) = getPowerDeriv(y(27),1-params(10)-params(11),1);
T(60) = 1/y(86);
T(61) = (-T(60));
T(62) = (-y(29))/(y(4)*y(4));
T(63) = getPowerDeriv(y(29),params(11),1);
T(64) = getPowerDeriv(y(29),params(16),1);
T(65) = (-(y(46)*(-y(89))/(y(29)*y(29))));
T(66) = 1/y(4);
T(67) = (-(y(88)+params(12)*y(90)))/(y(30)*y(30));
T(68) = y(30)*y(36)*y(30)*y(36);
T(69) = params(12)/y(30);
T(70) = 1/params(11)*getPowerDeriv(y(31)/params(11),params(11),1);
T(71) = T(16)*T(70);
T(72) = getPowerDeriv(y(32),1+params(7),1);
T(73) = 1/(1-params(10)-params(11))*getPowerDeriv(y(32)/(1-params(10)-params(11)),1-params(10)-params(11),1);
T(74) = (-(params(8)/(1+params(7))*T(72)));
T(75) = (-(T(74)/T(39)));
T(76) = 1/(steady_state(18));
T(77) = 1/params(10)*getPowerDeriv(y(5)/params(10),params(10),1);
T(78) = y(45)*T(77);
T(79) = (-(params(9)*y(37)))/(y(34)*y(34));
T(80) = params(9)/y(34);
T(81) = (-(y(42)*(y(42)*T(6)*2*y(39)-y(44))));
T(82) = T(33)*T(33);
T(83) = (-(params(5)*y(44)))/(params(5)*y(42)*params(5)*y(42));
T(84) = 2*y(44)/(params(5)*y(42));
T(85) = T(83)*T(84)+y(65)*(-(params(5)*2*y(64)))/(params(5)*y(42)*params(5)*y(42))+(-(params(5)*2*y(43)))/(params(5)*y(42)*params(5)*y(42));
T(86) = 2/(params(5)*y(42));
T(87) = T(86)/(T(34)+T(34));
T(88) = 1/(params(5)*y(42));
T(89) = T(84)*T(88)/(T(34)+T(34));
T(90) = y(65)*T(86)/(T(34)+T(34));
T(91) = 2*y(64)/(params(5)*y(42))/(T(34)+T(34));

end
