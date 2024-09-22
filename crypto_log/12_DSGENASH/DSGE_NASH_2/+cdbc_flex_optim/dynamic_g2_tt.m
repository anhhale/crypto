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

T = cdbc_flex_optim.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(92) = T(2)*(-(params(9)*T(72)/(1+params(8))))+T(2)*(-(params(9)*T(72)/(1+params(8))));
T(93) = getPowerDeriv(y(34),1+params(8),2);
T(94) = (-(1/(steady_state(1))*1/(steady_state(1))))/(T(22)*T(22));
T(95) = getPowerDeriv(T(23),1/(1-params(30)),2);
T(96) = getPowerDeriv(y(17),params(30),2);
T(97) = params(42)*2*(params(41)-y(61))*((-((-y(61))*(y(22)+y(20)+y(22)+y(20))))/((y(22)+y(20))*(y(22)+y(20))*(y(22)+y(20))*(y(22)+y(20)))-(y(22)+y(20)+y(22)+y(20))/((y(22)+y(20))*(y(22)+y(20))*(y(22)+y(20))*(y(22)+y(20))));
T(98) = (-T(97));
T(99) = (-(params(42)*(T(50)*(-2)+2*(params(41)-y(61))*(-1)/((y(22)+y(20))*(y(22)+y(20))))));
T(100) = (-((-y(30))*(y(86)+y(86))))/(y(86)*y(86)*y(86)*y(86));
T(101) = (-((-(params(6)*y(46)))*(params(6)*params(6)*y(44)+params(6)*params(6)*y(44))))/(params(6)*y(44)*params(6)*y(44)*params(6)*y(44)*params(6)*y(44));
T(102) = (T(35)+T(35))*(T(35)+T(35));
T(103) = (-(params(9)/(1+params(8))*T(72)/(T(39)*T(39))));
T(104) = (-((T(39)*(-(params(9)/(1+params(8))*T(93)))-T(74)*T(74))/(T(39)*T(39))));

end
