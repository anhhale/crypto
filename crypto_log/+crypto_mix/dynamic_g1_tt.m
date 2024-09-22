function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 35);

T = crypto_mix.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(31) = getPowerDeriv(y(22),params(29),1);
T(32) = (y(41)+y(34)*T(4)*T(5)-(y(35)+y(31)*y(36)))*(y(41)+y(34)*T(4)*T(5)-(y(35)+y(31)*y(36)));
T(33) = getPowerDeriv(y(45)*y(48),(-params(31)),1);
T(34) = getPowerDeriv(T(18),1/(1-params(29)),1);
T(35) = params(41)*2*(params(40)-y(56))*((-y(56))/((y(50)+y(49))*(y(50)+y(49)))-(-1)/((y(50)+y(49))*(y(50)+y(49))));

end
