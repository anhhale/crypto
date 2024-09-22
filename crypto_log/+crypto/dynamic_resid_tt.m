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

assert(length(T) >= 25);

T(1) = y(22)-params(8)*y(21)^(1+params(7))/(1+params(7));
T(2) = y(62)-params(8)*y(61)^(1+params(7))/(1+params(7));
T(3) = y(52)*(1-params(3)+params(3)*y(63));
T(4) = params(9)/2*y(28)^2;
T(5) = params(5)/2;
T(6) = y(31)^2;
T(7) = y(14)^params(10);
T(8) = 1/y(37)*T(7);
T(9) = y(17)^params(11);
T(10) = T(8)*T(9);
T(11) = y(15)^(1-params(10)-params(11));
T(12) = (y(2)/params(10))^params(10);
T(13) = y(37)*T(12);
T(14) = (y(20)/params(11))^params(11);
T(15) = T(13)*T(14);
T(16) = (y(21)/(1-params(10)-params(11)))^(1-params(10)-params(11));
T(17) = y(17)^params(16);
T(18) = params(35)^(0.5*y(54)+0.5*y(55));
T(19) = y(18)+params(9)*y(28)/y(24);
T(20) = (y(57)+params(12)*y(59))/y(18)-y(16)/y(56);
T(21) = y(16)/y(56)-y(38)*y(58)/y(17);
T(22) = sqrt((y(36)/(params(5)*y(34)))^2+(1/params(1))^2+2*y(35)/(params(5)*y(34)));
T(23) = params(17)/2*(y(13)-1)^2;
T(24) = y(19)*T(23);
T(25) = y(23)/(steady_state(12))-1;

end
