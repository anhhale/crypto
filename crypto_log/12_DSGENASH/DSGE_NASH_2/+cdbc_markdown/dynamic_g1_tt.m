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

T = cdbc_markdown.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(42) = getPowerDeriv(y(16),params(29),1);
T(43) = params(17)/2*2*(y(17)-1);
T(44) = (-y(27))/(y(83)*y(83));
T(45) = T(44)-(-y(55))/(y(83)*y(83));
T(46) = params(39)*getPowerDeriv(y(19),1-params(29),1);
T(47) = getPowerDeriv(T(22),1/(1-params(29)),1);
T(48) = getPowerDeriv(y(19),(-params(29)),1);
T(49) = (-y(58))/((y(21)+y(19))*(y(21)+y(19)))-(-1)/((y(21)+y(19))*(y(21)+y(19)));
T(50) = params(41)*2*(params(40)-y(58))*T(49);
T(51) = (-(params(34)*getPowerDeriv(y(20),1-params(31),1)/(1-params(31))));
T(52) = params(38)*getPowerDeriv(y(21),1-params(29),1);
T(53) = getPowerDeriv(y(21),(-params(29)),1);
T(54) = getPowerDeriv(y(25),params(10),1);
T(55) = T(8)*T(54);
T(56) = T(11)*T(55);
T(57) = y(25)*y(5)*y(25)*y(5);
T(58) = 1/y(29);
T(59) = getPowerDeriv(y(26),1-params(10)-params(11),1);
T(60) = 1/y(83);
T(61) = (-T(60));
T(62) = (-y(28))/(y(4)*y(4));
T(63) = getPowerDeriv(y(28),params(11),1);
T(64) = getPowerDeriv(y(28),params(16),1);
T(65) = (-(y(45)*(-y(86))/(y(28)*y(28))));
T(66) = 1/y(4);
T(67) = (-(y(85)+params(12)*y(87)))/(y(29)*y(29));
T(68) = y(29)*y(35)*y(29)*y(35);
T(69) = params(12)/y(29);
T(70) = 1/params(11)*getPowerDeriv(y(30)/params(11),params(11),1);
T(71) = T(16)*T(70);
T(72) = getPowerDeriv(y(31),1+params(7),1);
T(73) = 1/(1-params(10)-params(11))*getPowerDeriv(y(31)/(1-params(10)-params(11)),1-params(10)-params(11),1);
T(74) = (-(params(8)/(1+params(7))*T(72)));
T(75) = (-(T(74)/T(39)));
T(76) = 1/(steady_state(18));
T(77) = 1/params(10)*getPowerDeriv(y(5)/params(10),params(10),1);
T(78) = y(44)*T(77);
T(79) = (-(params(9)*y(36)))/(y(33)*y(33));
T(80) = params(9)/y(33);
T(81) = (-(y(41)*(y(41)*T(6)*2*y(38)-y(43))));
T(82) = T(33)*T(33);
T(83) = (-(params(5)*y(43)))/(params(5)*y(41)*params(5)*y(41));
T(84) = 2*y(43)/(params(5)*y(41));
T(85) = T(83)*T(84)+y(62)*(-(params(5)*2*y(61)))/(params(5)*y(41)*params(5)*y(41))+(-(params(5)*2*y(42)))/(params(5)*y(41)*params(5)*y(41));
T(86) = 2/(params(5)*y(41));
T(87) = T(86)/(T(34)+T(34));
T(88) = 1/(params(5)*y(41));
T(89) = T(84)*T(88)/(T(34)+T(34));
T(90) = y(62)*T(86)/(T(34)+T(34));
T(91) = 2*y(61)/(params(5)*y(41))/(T(34)+T(34));

end
