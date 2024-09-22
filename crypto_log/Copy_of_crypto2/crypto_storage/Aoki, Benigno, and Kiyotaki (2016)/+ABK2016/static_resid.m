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
    T = ABK2016.static_resid_tt(T, y, x, params);
end
residual = zeros(33, 1);
lhs = y(29);
rhs = params(15)/2*T(2)^2;
residual(1) = lhs - rhs;
lhs = y(31);
rhs = T(3)/y(13);
residual(2) = lhs - rhs;
lhs = y(32);
rhs = T(4)*y(7)*y(16)*T(5);
residual(3) = lhs - rhs;
lhs = y(30);
rhs = params(2);
residual(4) = lhs - rhs;
lhs = y(1);
rhs = T(9)*T(10);
residual(5) = lhs - rhs;
lhs = y(2)*(y(2)-1);
rhs = 1/params(17)*(1+y(1)*params(13)-params(13))+(y(2)-1)*params(6)*y(2);
residual(6) = lhs - rhs;
lhs = y(8);
rhs = T(14)*T(15);
residual(7) = lhs - rhs;
lhs = y(6)*y(9)/(y(13)*y(3));
rhs = params(11)/params(10);
residual(8) = lhs - rhs;
lhs = y(10)*y(4)/(y(13)*y(3));
rhs = (1-params(10)-params(11))/params(10);
residual(9) = lhs - rhs;
lhs = y(13);
rhs = y(12)+y(13)*params(12);
residual(10) = lhs - rhs;
lhs = y(14);
rhs = y(28)*T(16);
residual(11) = lhs - rhs;
lhs = y(4);
rhs = params(8)*y(10)^params(7);
residual(12) = lhs - rhs;
lhs = 1;
rhs = params(6)*(y(3)+y(7)*params(12))/T(17);
residual(13) = lhs - rhs;
lhs = 1;
rhs = params(6)*y(5)/y(2);
residual(14) = lhs - rhs;
lhs = y(7);
rhs = 1+y(29)+T(2)*params(15)*y(12)/(y(12));
residual(15) = lhs - rhs;
lhs = y(24);
rhs = T(1)*T(18);
residual(16) = lhs - rhs;
lhs = y(25);
rhs = T(1)*(y(5)/y(2)-y(27));
residual(17) = lhs - rhs;
lhs = y(23);
rhs = T(1)*y(5)/y(2);
residual(18) = lhs - rhs;
lhs = y(22);
rhs = y(23)/T(20);
residual(19) = lhs - rhs;
lhs = y(21);
rhs = y(30)*y(22);
residual(20) = lhs - rhs;
lhs = y(20);
rhs = y(25)/(params(5)*y(23));
residual(21) = lhs - rhs;
lhs = y(8);
rhs = y(32)+y(31)+y(14)+y(11)+y(12)*(1+y(29))+T(22);
residual(22) = lhs - rhs;
lhs = y(19);
rhs = y(9)+y(27)*y(19)-y(14)/y(6);
residual(23) = lhs - rhs;
lhs = y(15);
rhs = y(16)*(y(3)+y(7)*params(12))*(params(3)+params(4))-y(5)*params(3)*y(18)/y(2)-y(19)*y(27)*params(3)*y(6);
residual(24) = lhs - rhs;
lhs = y(7)*y(16)*T(23);
rhs = y(15)*y(22)*T(23);
residual(25) = lhs - rhs;
lhs = y(7)*y(16)*T(23);
rhs = y(15)+y(18)+y(6)*y(19);
residual(26) = lhs - rhs;
lhs = y(20);
rhs = y(6)*y(19)/(y(7)*y(16));
residual(27) = lhs - rhs;
lhs = y(13);
rhs = y(17)+y(16);
residual(28) = lhs - rhs;
lhs = y(5)-1-(1/params(6)-1);
rhs = x(1)+(y(2)-1)*(1-params(19))*params(20)+(y(5)-1-(1/params(6)-1))*params(19);
residual(29) = lhs - rhs;
lhs = y(26);
rhs = 1-params(21)+y(26)*params(21)+x(2);
residual(30) = lhs - rhs;
lhs = y(28);
rhs = x(4)+y(28)*params(23)+(y(28))*(1-params(23));
residual(31) = lhs - rhs;
lhs = y(27);
rhs = x(3)+y(27)*params(22)+(y(27))*(1-params(22));
residual(32) = lhs - rhs;
lhs = y(33);
rhs = y(8)-y(6)*y(9)-T(22)-y(31)-y(32);
residual(33) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
