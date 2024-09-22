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

T(1) = y(22)-params(8)*y(21)^(1+params(7))/(1+params(7));
T(2) = y(52)*(1-params(3)+params(3)*y(64));
T(3) = params(9)/2*y(28)^2;
T(4) = params(5)/2;
T(5) = y(31)^2;
T(6) = y(14)^params(10);
T(7) = 1/y(37)*T(6);
T(8) = y(17)^params(11);
T(9) = T(7)*T(8);
T(10) = y(15)^(1-params(10)-params(11));
T(11) = (y(2)/params(10))^params(10);
T(12) = y(37)*T(11);
T(13) = (y(20)/params(11))^params(11);
T(14) = T(12)*T(13);
T(15) = (y(21)/(1-params(10)-params(11)))^(1-params(10)-params(11));
T(16) = y(17)^params(16);
T(17) = params(35)^(0.5*y(53)+0.5*y(54));
T(18) = params(38)*y(50)^(1-params(29))+params(39)*y(49)^(1-params(29));
T(19) = y(22)^params(29);
T(20) = y(49)^(-params(29));
T(21) = (y(50)+y(49))^2;
T(22) = y(50)^(-params(29));
T(23) = y(56)/(y(50)+y(49))-1/(y(50)+y(49));
T(24) = y(18)+params(9)*y(28)/y(24);
T(25) = (y(60)+params(12)*y(62))/y(18)-y(16)/y(59);
T(26) = y(16)/y(59)-y(38)*y(61)/y(17);
T(27) = sqrt((y(36)/(params(5)*y(34)))^2+(1/params(1))^2+2*y(35)/(params(5)*y(34)));
T(28) = params(17)/2*(y(13)-1)^2;
T(29) = y(19)*T(28);
T(30) = y(23)/(steady_state(12))-1;

end