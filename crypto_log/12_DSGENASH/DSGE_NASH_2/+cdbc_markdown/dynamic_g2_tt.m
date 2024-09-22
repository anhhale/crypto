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

assert(length(T) >= 104);

T = cdbc_markdown.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(92) = T(2)*(-(params(8)*T(72)/(1+params(7))))+T(2)*(-(params(8)*T(72)/(1+params(7))));
T(93) = getPowerDeriv(y(31),1+params(7),2);
T(94) = getPowerDeriv(T(22),1/(1-params(29)),2);
T(95) = getPowerDeriv(y(16),params(29),2);
T(96) = params(41)*2*(params(40)-y(58))*((-((-y(58))*(y(21)+y(19)+y(21)+y(19))))/((y(21)+y(19))*(y(21)+y(19))*(y(21)+y(19))*(y(21)+y(19)))-(y(21)+y(19)+y(21)+y(19))/((y(21)+y(19))*(y(21)+y(19))*(y(21)+y(19))*(y(21)+y(19))));
T(97) = (-T(96));
T(98) = (-(params(41)*(T(49)*(-2)+2*(params(40)-y(58))*(-1)/((y(21)+y(19))*(y(21)+y(19))))));
T(99) = (-((-y(27))*(y(83)+y(83))))/(y(83)*y(83)*y(83)*y(83));
T(100) = (-((-(params(5)*y(43)))*(params(5)*params(5)*y(41)+params(5)*params(5)*y(41))))/(params(5)*y(41)*params(5)*y(41)*params(5)*y(41)*params(5)*y(41));
T(101) = (T(34)+T(34))*(T(34)+T(34));
T(102) = (-(params(8)/(1+params(7))*T(72)/(T(39)*T(39))));
T(103) = (-(params(34)*getPowerDeriv(y(20),1-params(31),2)/(1-params(31))));
T(104) = (-((T(39)*(-(params(8)/(1+params(7))*T(93)))-T(74)*T(74))/(T(39)*T(39))));

end
