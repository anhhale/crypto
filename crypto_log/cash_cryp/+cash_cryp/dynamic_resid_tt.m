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

assert(length(T) >= 23);

T(1) = y(55)*(1-params(3)+params(3)*y(84));
T(2) = params(9)/2*y(31)^2;
T(3) = params(5)/2;
T(4) = y(34)^2;
T(5) = y(17)^params(10);
T(6) = 1/y(40)*T(5);
T(7) = y(20)^params(11);
T(8) = T(6)*T(7);
T(9) = y(18)^(1-params(10)-params(11));
T(10) = (y(3)/params(10))^params(10);
T(11) = y(40)*T(10);
T(12) = (y(23)/params(11))^params(11);
T(13) = T(11)*T(12);
T(14) = (y(24)/(1-params(10)-params(11)))^(1-params(10)-params(11));
T(15) = y(20)^params(16);
T(16) = params(35)^y(50);
T(17) = y(21)+params(9)*y(31)/y(27);
T(18) = y(19)/y(79);
T(19) = (y(80)+params(12)*y(82))/y(21)-T(18);
T(20) = sqrt((y(39)/(params(5)*y(37)))^2+(1/params(1))^2+y(61)*2*y(60)/(params(5)*y(37))+2*y(38)/(params(5)*y(37)));
T(21) = params(17)/2*(y(16)-1)^2;
T(22) = y(22)*T(21);
T(23) = y(26)/(steady_state(12))-1;

end
