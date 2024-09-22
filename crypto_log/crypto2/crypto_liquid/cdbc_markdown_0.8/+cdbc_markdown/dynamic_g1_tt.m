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

T = cdbc_markdown.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(31) = (-y(19))/(y(80)*y(80));
T(32) = getPowerDeriv(y(25),params(29),1);
T(33) = (y(44)+y(37)*T(4)*T(5)-(y(38)+y(34)*y(39)+y(60)*y(61)))*(y(44)+y(37)*T(4)*T(5)-(y(38)+y(34)*y(39)+y(60)*y(61)));
T(34) = getPowerDeriv(T(18),1/(1-params(29)),1);
T(35) = params(41)*2*(params(40)-y(57))*((-y(57))/((y(53)+y(52))*(y(53)+y(52)))-(-1)/((y(53)+y(52))*(y(53)+y(52))));

end
