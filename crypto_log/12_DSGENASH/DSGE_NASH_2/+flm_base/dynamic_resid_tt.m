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

assert(length(T) >= 34);

T(1) = params(17)*y(14)*exp(y(42))/exp(y(15));
T(2) = (y(41)/y(11))^(-1);
T(3) = y(16)^(1-params(1));
T(4) = y(17)^params(1);
T(5) = y(9)^(1-params(1));
T(6) = y(12)^params(1);
T(7) = y(19)^(1-params(1));
T(8) = y(12)/y(2);
T(9) = (y(18)*T(8))^params(1);
T(10) = y(44)^(params(16)-1);
T(11) = y(44)^params(16);
T(12) = y(21)/y(20);
T(13) = y(19)^params(16);
T(14) = y(24)^(1-params(2));
T(15) = y(12)^params(2);
T(16) = (1-params(2))^(1-params(2));
T(17) = params(2)^params(2);
T(18) = y(25)*T(16)*T(17);
T(19) = y(26)^params(3);
T(20) = 1/params(17)*y(18)^params(4);
T(21) = y(19)^params(5);
T(22) = T(20)*T(21);
T(23) = T(8)^params(6);
T(24) = T(22)*T(23);
T(25) = (y(10)/(steady_state(2)))^params(26);
T(26) = 1/y(29);
T(27) = exp(y(15))*(log(y(11))-y(26)^(1+params(3))/(1+params(3)));
T(28) = params(29)*T(8)^params(30);
T(29) = (y(10)/y(1))^params(31);
T(30) = (y(37)/(steady_state(29)))^params(32);
T(31) = params(16)/(params(16)-1)*y(10)/y(11);
T(32) = (params(15))*(steady_state(2))/(params(19))*exp(y(32));
T(33) = 1-y(30)/(1-params(1));
T(34) = 1/T(33);

end
