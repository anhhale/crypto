function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 99);

T = cdbc_flex.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(90) = getPowerDeriv(y(26),1+params(7),2);
T(91) = getPowerDeriv(T(23),1/(1-params(29)),2);
T(92) = getPowerDeriv(y(27),params(29),2);
T(93) = params(41)*2*(params(40)-y(59))*((-((-y(59))*(y(55)+y(54)+y(55)+y(54))))/((y(55)+y(54))*(y(55)+y(54))*(y(55)+y(54))*(y(55)+y(54)))-(y(55)+y(54)+y(55)+y(54))/((y(55)+y(54))*(y(55)+y(54))*(y(55)+y(54))*(y(55)+y(54))));
T(94) = (-T(93));
T(95) = (-(params(41)*(T(84)*(-2)+2*(params(40)-y(59))*(-1)/((y(55)+y(54))*(y(55)+y(54))))));
T(96) = (-((-y(21))*(y(83)+y(83))))/(y(83)*y(83)*y(83)*y(83));
T(97) = (-((-(params(5)*y(41)))*(params(5)*params(5)*y(39)+params(5)*params(5)*y(39))))/(params(5)*y(39)*params(5)*y(39)*params(5)*y(39)*params(5)*y(39));
T(98) = (T(35)+T(35))*(T(35)+T(35));
T(99) = T(58)*T(58);

end
