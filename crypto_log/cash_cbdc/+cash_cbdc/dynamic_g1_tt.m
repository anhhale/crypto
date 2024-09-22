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

assert(length(T) >= 33);

T = cash_cbdc.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(30) = getPowerDeriv(y(23),params(29),1);
T(31) = (y(42)+y(35)*T(3)*T(4)-(y(36)+y(32)*y(37)))*(y(42)+y(35)*T(3)*T(4)-(y(36)+y(32)*y(37)));
T(32) = getPowerDeriv(T(17),1/(1-params(29)),1);
T(33) = params(41)*2*(params(40)-y(55))*((-y(55))/((y(51)+y(50))*(y(51)+y(50)))-(-1)/((y(51)+y(50))*(y(51)+y(50))));

end
