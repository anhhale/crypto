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

assert(length(T) >= 87);

T = flm_base.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(79) = getPowerDeriv(y(41)/y(11),(-1),2);
T(80) = (-((-y(12))*(y(2)+y(2))))/(y(2)*y(2)*y(2)*y(2));
T(81) = getPowerDeriv(y(18)*T(8),params(1),2);
T(82) = getPowerDeriv(T(12),1-params(16),2);
T(83) = getPowerDeriv(T(12),(-params(16)),2);
T(84) = getPowerDeriv(T(8),params(6),2);
T(85) = getPowerDeriv(T(26)*T(34),1-params(1),2);
T(86) = getPowerDeriv(y(10)/y(1),params(31),2);
T(87) = getPowerDeriv(T(8),params(30),2);

end
