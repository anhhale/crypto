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

assert(length(T) >= 106);

T = cdbc_flex_optim.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(93) = T(2)*(-(params(8)*T(73)/(1+params(7))))+T(2)*(-(params(8)*T(73)/(1+params(7))));
T(94) = getPowerDeriv(y(32),1+params(7),2);
T(95) = (-(1/(steady_state(1))*1/(steady_state(1))))/(T(22)*T(22));
T(96) = getPowerDeriv(T(23),1/(1-params(29)),2);
T(97) = getPowerDeriv(y(17),params(29),2);
T(98) = params(41)*2*(params(40)-y(59))*((-((-y(59))*(y(22)+y(20)+y(22)+y(20))))/((y(22)+y(20))*(y(22)+y(20))*(y(22)+y(20))*(y(22)+y(20)))-(y(22)+y(20)+y(22)+y(20))/((y(22)+y(20))*(y(22)+y(20))*(y(22)+y(20))*(y(22)+y(20))));
T(99) = (-T(98));
T(100) = (-(params(41)*(T(50)*(-2)+2*(params(40)-y(59))*(-1)/((y(22)+y(20))*(y(22)+y(20))))));
T(101) = (-((-y(28))*(y(84)+y(84))))/(y(84)*y(84)*y(84)*y(84));
T(102) = (-((-(params(5)*y(44)))*(params(5)*params(5)*y(42)+params(5)*params(5)*y(42))))/(params(5)*y(42)*params(5)*y(42)*params(5)*y(42)*params(5)*y(42));
T(103) = (T(35)+T(35))*(T(35)+T(35));
T(104) = (-(params(8)/(1+params(7))*T(73)/(T(39)*T(39))));
T(105) = (-(params(34)*getPowerDeriv(y(21),1-params(31),2)/(1-params(31))));
T(106) = (-((T(39)*(-(params(8)/(1+params(7))*T(94)))-T(75)*T(75))/(T(39)*T(39))));

end
