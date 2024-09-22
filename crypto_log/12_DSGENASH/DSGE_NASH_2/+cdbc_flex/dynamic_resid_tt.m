function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 40);

T(1) = y(26)^(1+params(7));
T(2) = y(27)-params(8)*T(1)/(1+params(7));
T(3) = 1-params(3)+params(3)*y(88);
T(4) = y(57)*T(3);
T(5) = params(9)/2*y(33)^2;
T(6) = params(5)/2;
T(7) = y(36)^2;
T(8) = 1/y(42);
T(9) = y(19)^params(10);
T(10) = T(8)*T(9);
T(11) = y(22)^params(11);
T(12) = T(10)*T(11);
T(13) = y(20)^(1-params(10)-params(11));
T(14) = y(57)*y(87)/y(24);
T(15) = (y(3)/params(10))^params(10);
T(16) = y(42)*T(15);
T(17) = (y(25)/params(11))^params(11);
T(18) = T(16)*T(17);
T(19) = (y(26)/(1-params(10)-params(11)))^(1-params(10)-params(11));
T(20) = y(22)^params(16);
T(21) = params(35)^y(52);
T(22) = y(24)/(steady_state(9));
T(23) = params(38)*y(55)^(1-params(29))+params(39)*y(54)^(1-params(29));
T(24) = y(27)^params(29);
T(25) = y(54)^(-params(29));
T(26) = (y(55)+y(54))^2;
T(27) = y(55)^(-params(29));
T(28) = y(59)/(y(55)+y(54))-1/(y(55)+y(54));
T(29) = y(23)+params(9)*y(33)/y(29);
T(30) = y(21)/y(83);
T(31) = (y(84)+params(12)*y(86))/y(23)-T(30);
T(32) = T(30)-y(56)/y(83);
T(33) = T(30)-y(43)*y(85)/y(22);
T(34) = y(46)+y(39)*T(6)*T(7)-(y(40)+y(36)*y(41)+y(62)*y(63));
T(35) = sqrt((y(41)/(params(5)*y(39)))^2+(1/params(1))^2+y(63)*2*y(62)/(params(5)*y(39))+2*y(40)/(params(5)*y(39)));
T(36) = params(17)/2*(y(18)-1)^2;
T(37) = y(24)*T(36);
T(38) = y(22)/y(2);
T(39) = y(27)-T(1)*params(8)/(1+params(7));
T(40) = y(28)/(steady_state(13))-1;

end
