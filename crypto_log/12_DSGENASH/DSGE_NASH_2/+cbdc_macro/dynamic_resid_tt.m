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

T(1) = y(31)^(1+params(7));
T(2) = y(16)-params(8)*T(1)/(1+params(7));
T(3) = 1-params(3)+params(3)*y(90);
T(4) = y(56)*T(3);
T(5) = params(9)/2*y(36)^2;
T(6) = params(5)/2;
T(7) = y(38)^2;
T(8) = 1/y(44);
T(9) = y(25)^params(10);
T(10) = T(8)*T(9);
T(11) = y(28)^params(11);
T(12) = T(10)*T(11);
T(13) = y(26)^(1-params(10)-params(11));
T(14) = y(56)*y(84)/y(15);
T(15) = (y(5)/params(10))^params(10);
T(16) = y(44)*T(15);
T(17) = (y(30)/params(11))^params(11);
T(18) = T(16)*T(17);
T(19) = (y(31)/(1-params(10)-params(11)))^(1-params(10)-params(11));
T(20) = y(28)^params(16);
T(21) = params(35)^y(54);
T(22) = params(38)*y(21)^(1-params(29))+params(39)*y(19)^(1-params(29));
T(23) = y(16)^params(29);
T(24) = y(19)^(-params(29));
T(25) = (y(21)+y(19))^2;
T(26) = y(21)^(-params(29));
T(27) = y(58)/(y(21)+y(19))-1/(y(21)+y(19));
T(28) = y(29)+params(9)*y(36)/y(33);
T(29) = (y(87)+params(12)*y(89))/y(29)-y(27)/y(85);
T(30) = y(27)*(1-y(65))/y(85)-y(55)/y(85);
T(31) = y(27)*(1-y(66))/y(85)-y(45)*y(88)/y(28);
T(32) = y(48)+y(41)*T(6)*T(7)-(y(42)+y(38)*y(43)+y(61)*y(62));
T(33) = sqrt((y(43)/(params(5)*y(41)))^2+(1/params(1))^2+y(62)*2*y(61)/(params(5)*y(41))+2*y(42)/(params(5)*y(41)));
T(34) = params(17)/2*(y(17)-1)^2;
T(35) = y(15)*T(34);
T(36) = y(28)/y(4);
T(37) = y(15)/(steady_state(1));
T(38) = y(16)-T(1)*params(8)/(1+params(7));
T(39) = log(T(38))-params(41)*(params(40)-y(58))^2+params(34)*y(20)^(1-params(31))/(1-params(31));
T(40) = y(32)/(steady_state(18))-1;

end
