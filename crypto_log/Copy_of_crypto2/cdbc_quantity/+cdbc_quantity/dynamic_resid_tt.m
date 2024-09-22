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

assert(length(T) >= 30);

T(1) = y(26)-params(8)*y(25)^(1+params(7))/(1+params(7));
T(2) = y(58)*(1-params(3)+params(3)*y(89));
T(3) = params(9)/2*y(32)^2;
T(4) = params(5)/2;
T(5) = y(35)^2;
T(6) = y(18)^params(10);
T(7) = 1/y(41)*T(6);
T(8) = y(21)^params(11);
T(9) = T(7)*T(8);
T(10) = y(19)^(1-params(10)-params(11));
T(11) = (y(3)/params(10))^params(10);
T(12) = y(41)*T(11);
T(13) = (y(24)/params(11))^params(11);
T(14) = T(12)*T(13);
T(15) = (y(25)/(1-params(10)-params(11)))^(1-params(10)-params(11));
T(16) = y(21)^params(16);
T(17) = params(35)^y(52);
T(18) = params(38)*y(56)^(1-params(29))+params(39)*y(54)^(1-params(29));
T(19) = y(26)^params(29);
T(20) = y(54)^(-params(29));
T(21) = (y(54)+y(56))^2;
T(22) = y(56)^(-params(29));
T(23) = y(60)/(y(54)+y(56))-1/(y(54)+y(56));
T(24) = y(22)+params(9)*y(32)/y(28);
T(25) = y(20)/y(84);
T(26) = (y(85)+params(12)*y(87))/y(22)-T(25);
T(27) = sqrt((y(40)/(params(5)*y(38)))^2+(1/params(1))^2+y(64)*2*y(63)/(params(5)*y(38))+2*y(39)/(params(5)*y(38)));
T(28) = params(17)/2*(y(17)-1)^2;
T(29) = y(23)*T(28);
T(30) = y(27)/(steady_state(12))-1;

end
