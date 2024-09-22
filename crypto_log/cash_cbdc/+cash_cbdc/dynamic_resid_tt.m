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

assert(length(T) >= 29);

T(1) = y(53)*(1-params(3)+params(3)*y(82));
T(2) = params(9)/2*y(29)^2;
T(3) = params(5)/2;
T(4) = y(32)^2;
T(5) = y(15)^params(10);
T(6) = 1/y(38)*T(5);
T(7) = y(18)^params(11);
T(8) = T(6)*T(7);
T(9) = y(16)^(1-params(10)-params(11));
T(10) = (y(3)/params(10))^params(10);
T(11) = y(38)*T(10);
T(12) = (y(21)/params(11))^params(11);
T(13) = T(11)*T(12);
T(14) = (y(22)/(1-params(10)-params(11)))^(1-params(10)-params(11));
T(15) = y(18)^params(16);
T(16) = params(35)^y(48);
T(17) = params(38)*y(51)^(1-params(29))+params(39)*y(50)^(1-params(29));
T(18) = y(23)^params(29);
T(19) = y(50)^(-params(29));
T(20) = (y(51)+y(50))^2;
T(21) = y(51)^(-params(29));
T(22) = y(55)/(y(51)+y(50))-1/(y(51)+y(50));
T(23) = y(19)+params(9)*y(29)/y(25);
T(24) = y(17)/y(77);
T(25) = (y(78)+params(12)*y(80))/y(19)-T(24);
T(26) = params(17)/2*(y(14)-1)^2;
T(27) = y(20)*T(26);
T(28) = sqrt((y(37)/(params(5)*y(35)))^2+(1/params(1))^2+2*y(36)/(params(5)*y(35)));
T(29) = y(24)/(steady_state(12))-1;

end
