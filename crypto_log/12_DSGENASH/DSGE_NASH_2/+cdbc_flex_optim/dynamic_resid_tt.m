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

assert(length(T) >= 41);

T(1) = y(34)^(1+params(8));
T(2) = y(17)-params(9)*T(1)/(1+params(8));
T(3) = 1-params(4)+params(4)*y(92);
T(4) = y(59)*T(3);
T(5) = params(10)/2*y(39)^2;
T(6) = params(6)/2;
T(7) = y(41)^2;
T(8) = 1/y(47);
T(9) = y(28)^params(11);
T(10) = T(8)*T(9);
T(11) = y(31)^params(12);
T(12) = T(10)*T(11);
T(13) = y(29)^(1-params(11)-params(12));
T(14) = y(59)*y(85)/y(16);
T(15) = (y(5)/params(11))^params(11);
T(16) = y(47)*T(15);
T(17) = (y(33)/params(12))^params(12);
T(18) = T(16)*T(17);
T(19) = (y(34)/(1-params(11)-params(12)))^(1-params(11)-params(12));
T(20) = y(31)^params(17);
T(21) = params(36)^y(57);
T(22) = y(16)/(steady_state(1));
T(23) = params(39)*y(22)^(1-params(30))+params(40)*y(20)^(1-params(30));
T(24) = y(17)^params(30);
T(25) = y(20)^(-params(30));
T(26) = (y(22)+y(20))^2;
T(27) = y(22)^(-params(30));
T(28) = y(61)/(y(22)+y(20))-1/(y(22)+y(20));
T(29) = y(32)+params(10)*y(39)/y(36);
T(30) = y(30)/y(86);
T(31) = (y(89)+params(13)*y(91))/y(32)-T(30);
T(32) = T(30)-y(58)/y(86);
T(33) = T(30)-y(48)*y(90)/y(31);
T(34) = y(51)+y(44)*T(6)*T(7)-(y(45)+y(41)*y(46)+y(64)*y(65));
T(35) = sqrt((y(46)/(params(6)*y(44)))^2+(1/params(1))^2+y(65)*2*y(64)/(params(6)*y(44))+2*y(45)/(params(6)*y(44)));
T(36) = params(18)/2*(y(18)-1)^2;
T(37) = y(16)*T(36);
T(38) = y(31)/y(4);
T(39) = y(17)-T(1)*params(9)/(1+params(8));
T(40) = y(17)*(1-params(2))-T(1)*params(9)/(1+params(8));
T(41) = y(35)/(steady_state(20))-1;

end
