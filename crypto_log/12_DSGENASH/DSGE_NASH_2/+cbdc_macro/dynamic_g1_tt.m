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

assert(length(T) >= 90);

T = cbdc_macro.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(41) = getPowerDeriv(y(16),params(29),1);
T(42) = params(17)/2*2*(y(17)-1);
T(43) = (-((-y(27))/(y(85)*y(85))));
T(44) = (-(y(27)*(1-y(65))))/(y(85)*y(85))-(-y(55))/(y(85)*y(85));
T(45) = (-(y(27)*(1-y(66))))/(y(85)*y(85));
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
T(60) = (-(1/y(85)));
T(61) = (-y(28))/(y(4)*y(4));
T(62) = getPowerDeriv(y(28),params(11),1);
T(63) = getPowerDeriv(y(28),params(16),1);
T(64) = (-(y(45)*(-y(88))/(y(28)*y(28))));
T(65) = 1/y(4);
T(66) = (-(y(87)+params(12)*y(89)))/(y(29)*y(29));
T(67) = y(29)*y(35)*y(29)*y(35);
T(68) = params(12)/y(29);
T(69) = 1/params(11)*getPowerDeriv(y(30)/params(11),params(11),1);
T(70) = T(16)*T(69);
T(71) = getPowerDeriv(y(31),1+params(7),1);
T(72) = 1/(1-params(10)-params(11))*getPowerDeriv(y(31)/(1-params(10)-params(11)),1-params(10)-params(11),1);
T(73) = (-(params(8)/(1+params(7))*T(71)));
T(74) = (-(T(73)/T(38)));
T(75) = 1/(steady_state(18));
T(76) = 1/params(10)*getPowerDeriv(y(5)/params(10),params(10),1);
T(77) = y(44)*T(76);
T(78) = (-(params(9)*y(36)))/(y(33)*y(33));
T(79) = params(9)/y(33);
T(80) = (-(y(41)*(y(41)*T(6)*2*y(38)-y(43))));
T(81) = T(32)*T(32);
T(82) = (-(params(5)*y(43)))/(params(5)*y(41)*params(5)*y(41));
T(83) = 2*y(43)/(params(5)*y(41));
T(84) = T(82)*T(83)+y(62)*(-(params(5)*2*y(61)))/(params(5)*y(41)*params(5)*y(41))+(-(params(5)*2*y(42)))/(params(5)*y(41)*params(5)*y(41));
T(85) = 2/(params(5)*y(41));
T(86) = T(85)/(T(33)+T(33));
T(87) = 1/(params(5)*y(41));
T(88) = T(83)*T(87)/(T(33)+T(33));
T(89) = y(62)*T(85)/(T(33)+T(33));
T(90) = 2*y(61)/(params(5)*y(41))/(T(33)+T(33));

end
