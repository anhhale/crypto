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

assert(length(T) >= 85);

T = cash_cryp.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(78) = T(2)*(-(params(8)*T(58)/(1+params(7))))+T(2)*(-(params(8)*T(58)/(1+params(7))));
T(79) = getPowerDeriv(y(31),1+params(7),2);
T(80) = (-((-y(27))*(y(82)+y(82))))/(y(82)*y(82)*y(82)*y(82));
T(81) = (-((-(params(5)*y(43)))*(params(5)*params(5)*y(41)+params(5)*params(5)*y(41))))/(params(5)*y(41)*params(5)*y(41)*params(5)*y(41)*params(5)*y(41));
T(82) = (T(28)+T(28))*(T(28)+T(28));
T(83) = (-(params(8)/(1+params(7))*T(58)/(T(33)*T(33))));
T(84) = (-(params(34)*getPowerDeriv(y(20),1-params(31),2)/(1-params(31))));
T(85) = (-((T(33)*(-(params(8)/(1+params(7))*T(79)))-T(60)*T(60))/(T(33)*T(33))));

end
