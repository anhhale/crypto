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

assert(length(T) >= 89);

T = cdbc_flex.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(41) = params(17)/2*2*(y(18)-1);
T(42) = (-y(21))/(y(83)*y(83));
T(43) = T(42)-(-y(56))/(y(83)*y(83));
T(44) = getPowerDeriv(y(19),params(10),1);
T(45) = T(8)*T(44);
T(46) = T(11)*T(45);
T(47) = y(19)*y(3)*y(19)*y(3);
T(48) = 1/y(23);
T(49) = getPowerDeriv(y(20),1-params(10)-params(11),1);
T(50) = 1/y(83);
T(51) = (-T(50));
T(52) = (-y(22))/(y(2)*y(2));
T(53) = getPowerDeriv(y(22),params(11),1);
T(54) = getPowerDeriv(y(22),params(16),1);
T(55) = (-(y(43)*(-y(85))/(y(22)*y(22))));
T(56) = 1/y(2);
T(57) = (-(y(84)+params(12)*y(86)))/(y(23)*y(23));
T(58) = y(23)*y(32)*y(23)*y(32);
T(59) = params(12)/y(23);
T(60) = 1/params(11)*getPowerDeriv(y(25)/params(11),params(11),1);
T(61) = T(16)*T(60);
T(62) = getPowerDeriv(y(26),1+params(7),1);
T(63) = params(8)*T(62)/(1+params(7));
T(64) = 1/(1-params(10)-params(11))*getPowerDeriv(y(26)/(1-params(10)-params(11)),1-params(10)-params(11),1);
T(65) = (-(params(8)/(1+params(7))*T(62)));
T(66) = getPowerDeriv(y(27),params(29),1);
T(67) = 1/(steady_state(13));
T(68) = 1/params(10)*getPowerDeriv(y(3)/params(10),params(10),1);
T(69) = y(42)*T(68);
T(70) = (-(params(9)*y(33)))/(y(29)*y(29));
T(71) = params(9)/y(29);
T(72) = (-(y(39)*(y(39)*T(6)*2*y(36)-y(41))));
T(73) = T(34)*T(34);
T(74) = (-(params(5)*y(41)))/(params(5)*y(39)*params(5)*y(39));
T(75) = 2*y(41)/(params(5)*y(39));
T(76) = T(74)*T(75)+y(63)*(-(params(5)*2*y(62)))/(params(5)*y(39)*params(5)*y(39))+(-(params(5)*2*y(40)))/(params(5)*y(39)*params(5)*y(39));
T(77) = 2/(params(5)*y(39));
T(78) = T(77)/(T(35)+T(35));
T(79) = 1/(params(5)*y(39));
T(80) = T(75)*T(79)/(T(35)+T(35));
T(81) = params(39)*getPowerDeriv(y(54),1-params(29),1);
T(82) = getPowerDeriv(T(23),1/(1-params(29)),1);
T(83) = getPowerDeriv(y(54),(-params(29)),1);
T(84) = (-y(59))/((y(55)+y(54))*(y(55)+y(54)))-(-1)/((y(55)+y(54))*(y(55)+y(54)));
T(85) = params(41)*2*(params(40)-y(59))*T(84);
T(86) = params(38)*getPowerDeriv(y(55),1-params(29),1);
T(87) = getPowerDeriv(y(55),(-params(29)),1);
T(88) = y(63)*T(77)/(T(35)+T(35));
T(89) = 2*y(62)/(params(5)*y(39))/(T(35)+T(35));

end
