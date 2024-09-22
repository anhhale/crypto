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

assert(length(T) >= 36);

T = cdbc_flex.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(31) = (-y(20))/(y(81)*y(81));
T(32) = 1/(steady_state(8))/(y(23)/(steady_state(8)));
T(33) = getPowerDeriv(y(26),params(29),1);
T(34) = (y(45)+y(38)*T(4)*T(5)-(y(39)+y(35)*y(40)+y(61)*y(62)))*(y(45)+y(38)*T(4)*T(5)-(y(39)+y(35)*y(40)+y(61)*y(62)));
T(35) = getPowerDeriv(T(18),1/(1-params(29)),1);
T(36) = params(41)*2*(params(40)-y(58))*((-y(58))/((y(54)+y(53))*(y(54)+y(53)))-(-1)/((y(54)+y(53))*(y(54)+y(53))));

end
