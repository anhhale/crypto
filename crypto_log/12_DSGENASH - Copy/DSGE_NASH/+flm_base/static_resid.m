function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = flm_base.static_resid_tt(T, y, x, params);
end
residual = zeros(32, 1);
lhs = y(2)*y(1);
rhs = y(3)+y(4)*y(5);
residual(1) = lhs - rhs;
lhs = 1;
rhs = params(17)*y(6)/y(10);
residual(2) = lhs - rhs;
lhs = y(3);
rhs = T(1)*T(2);
residual(3) = lhs - rhs;
lhs = 1;
rhs = T(3)*T(4);
residual(4) = lhs - rhs;
lhs = y(10);
rhs = T(5)*T(6);
residual(5) = lhs - rhs;
lhs = y(12);
rhs = y(2)/y(3)+params(18)*params(17)*y(12)*T(7);
residual(6) = lhs - rhs;
lhs = y(13);
rhs = params(18)*params(17)*y(13)*T(8)+y(14)*T(9);
residual(7) = lhs - rhs;
lhs = params(18)*T(7);
rhs = 1-(1-params(18))*T(10)^(1-params(16));
residual(8) = lhs - rhs;
lhs = y(15);
rhs = (1-params(18))*T(10)^(-params(16))+T(8)*params(18)*y(15);
residual(9) = lhs - rhs;
lhs = y(14);
rhs = T(11)*T(12)/T(15);
residual(10) = lhs - rhs;
lhs = y(16);
rhs = y(3)*T(16);
residual(11) = lhs - rhs;
lhs = y(18);
rhs = y(15)*y(2)*y(14)*(1-params(2))/y(16);
residual(12) = lhs - rhs;
lhs = y(6);
rhs = T(19)*T(20)*exp(y(26));
residual(13) = lhs - rhs;
lhs = y(19);
rhs = y(5)+y(9)-y(20);
residual(14) = lhs - rhs;
lhs = y(9);
rhs = params(1)*y(3)/y(4);
residual(15) = lhs - rhs;
lhs = y(5);
rhs = y(15)*y(2)*y(14)*params(2)/y(4);
residual(16) = lhs - rhs;
lhs = y(20);
rhs = y(21)*y(4)*(params(15))*(y(2))/(params(19))*exp(y(24));
residual(17) = lhs - rhs;
lhs = y(4)/y(32);
rhs = (T(21)*T(22))^(1-params(1));
residual(18) = lhs - rhs;
lhs = y(22);
rhs = y(19)/(y(19)+2*y(20));
residual(19) = lhs - rhs;
lhs = y(23);
rhs = y(23)*params(7)-x(1);
residual(20) = lhs - rhs;
lhs = y(24);
rhs = y(24)*params(8)+x(2);
residual(21) = lhs - rhs;
lhs = y(25);
rhs = y(25)*params(9)+x(3);
residual(22) = lhs - rhs;
lhs = y(26);
rhs = y(26)*params(10)+x(5);
residual(23) = lhs - rhs;
lhs = y(7);
rhs = y(7)*params(21)+x(4);
residual(24) = lhs - rhs;
lhs = y(25);
rhs = log(y(17));
residual(25) = lhs - rhs;
lhs = y(23);
rhs = log(y(21));
residual(26) = lhs - rhs;
lhs = y(27);
rhs = T(23)+params(17)*y(27);
residual(27) = lhs - rhs;
lhs = y(28);
rhs = y(4)*y(19)-y(19)*T(21);
residual(28) = lhs - rhs;
lhs = y(29);
rhs = y(3)/y(28);
residual(29) = lhs - rhs;
lhs = y(30);
rhs = y(28)*1/y(29)+params(17)*y(30);
residual(30) = lhs - rhs;
lhs = y(31);
rhs = (-((y(4)-(y(4)))^2));
residual(31) = lhs - rhs;
lhs = y(32);
rhs = params(29)*(y(29)/(y(29)))^params(32);
residual(32) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
