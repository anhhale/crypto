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

assert(length(T) >= 92);

T = cdbc_flex_optim.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(42) = 1/(steady_state(1))/T(22);
T(43) = getPowerDeriv(y(17),params(29),1);
T(44) = params(17)/2*2*(y(18)-1);
T(45) = (-y(28))/(y(84)*y(84));
T(46) = T(45)-(-y(56))/(y(84)*y(84));
T(47) = params(39)*getPowerDeriv(y(20),1-params(29),1);
T(48) = getPowerDeriv(T(23),1/(1-params(29)),1);
T(49) = getPowerDeriv(y(20),(-params(29)),1);
T(50) = (-y(59))/((y(22)+y(20))*(y(22)+y(20)))-(-1)/((y(22)+y(20))*(y(22)+y(20)));
T(51) = params(41)*2*(params(40)-y(59))*T(50);
T(52) = (-(params(34)*getPowerDeriv(y(21),1-params(31),1)/(1-params(31))));
T(53) = params(38)*getPowerDeriv(y(22),1-params(29),1);
T(54) = getPowerDeriv(y(22),(-params(29)),1);
T(55) = getPowerDeriv(y(26),params(10),1);
T(56) = T(8)*T(55);
T(57) = T(11)*T(56);
T(58) = y(26)*y(5)*y(26)*y(5);
T(59) = 1/y(30);
T(60) = getPowerDeriv(y(27),1-params(10)-params(11),1);
T(61) = 1/y(84);
T(62) = (-T(61));
T(63) = (-y(29))/(y(4)*y(4));
T(64) = getPowerDeriv(y(29),params(11),1);
T(65) = getPowerDeriv(y(29),params(16),1);
T(66) = (-(y(46)*(-y(87))/(y(29)*y(29))));
T(67) = 1/y(4);
T(68) = (-(y(86)+params(12)*y(88)))/(y(30)*y(30));
T(69) = y(30)*y(36)*y(30)*y(36);
T(70) = params(12)/y(30);
T(71) = 1/params(11)*getPowerDeriv(y(31)/params(11),params(11),1);
T(72) = T(16)*T(71);
T(73) = getPowerDeriv(y(32),1+params(7),1);
T(74) = 1/(1-params(10)-params(11))*getPowerDeriv(y(32)/(1-params(10)-params(11)),1-params(10)-params(11),1);
T(75) = (-(params(8)/(1+params(7))*T(73)));
T(76) = (-(T(75)/T(39)));
T(77) = 1/(steady_state(18));
T(78) = 1/params(10)*getPowerDeriv(y(5)/params(10),params(10),1);
T(79) = y(45)*T(78);
T(80) = (-(params(9)*y(37)))/(y(34)*y(34));
T(81) = params(9)/y(34);
T(82) = (-(y(42)*(y(42)*T(6)*2*y(39)-y(44))));
T(83) = T(34)*T(34);
T(84) = (-(params(5)*y(44)))/(params(5)*y(42)*params(5)*y(42));
T(85) = 2*y(44)/(params(5)*y(42));
T(86) = T(84)*T(85)+y(63)*(-(params(5)*2*y(62)))/(params(5)*y(42)*params(5)*y(42))+(-(params(5)*2*y(43)))/(params(5)*y(42)*params(5)*y(42));
T(87) = 2/(params(5)*y(42));
T(88) = T(87)/(T(35)+T(35));
T(89) = 1/(params(5)*y(42));
T(90) = T(85)*T(89)/(T(35)+T(35));
T(91) = y(63)*T(87)/(T(35)+T(35));
T(92) = 2*y(62)/(params(5)*y(42))/(T(35)+T(35));

end
