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

assert(length(T) >= 79);

T = abk.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(71) = params(6)*(-(params(8)*getPowerDeriv(y(18),1+params(7),2)/(1+params(7))))/T(2);
T(72) = (-(T(47)*T(51)))/(T(2)*T(2));
T(73) = (-T(47))/(T(2)*T(2));
T(74) = (T(2)*T(2)*(-(T(1)*(-(params(8)*getPowerDeriv(y(47),1+params(7),2)/(1+params(7))))))-(-(T(1)*T(51)))*(T(2)*T(51)+T(2)*T(51)))/(T(2)*T(2)*T(2)*T(2));
T(75) = (-(params(6)*T(51)))/(T(2)*T(2));
T(76) = (-((-(T(1)*T(51)))*(T(2)+T(2))))/(T(2)*T(2)*T(2)*T(2));
T(77) = (-params(6))/(T(2)*T(2));
T(78) = (-((-T(1))*(T(2)+T(2))))/(T(2)*T(2)*T(2)*T(2));
T(79) = (-((-(params(5)*y(33)))*(params(5)*params(5)*y(31)+params(5)*params(5)*y(31))))/(params(5)*y(31)*params(5)*y(31)*params(5)*y(31)*params(5)*y(31));

end
