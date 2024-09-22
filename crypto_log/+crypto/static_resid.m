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
    T = crypto.static_resid_tt(T, y, x, params);
end
residual = zeros(44, 1);
lhs = y(41);
rhs = params(6);
residual(1) = lhs - rhs;
lhs = y(42);
rhs = 1/T(2);
residual(2) = lhs - rhs;
lhs = y(29);
rhs = params(15)/2*T(3)^2;
residual(3) = lhs - rhs;
lhs = y(31);
rhs = T(4)/y(13);
residual(4) = lhs - rhs;
lhs = y(32);
rhs = T(5)*y(7)*y(16)*T(6);
residual(5) = lhs - rhs;
lhs = y(30);
rhs = params(2);
residual(6) = lhs - rhs;
lhs = y(1);
rhs = T(10)*T(11);
residual(7) = lhs - rhs;
lhs = y(2)*(y(2)-1);
rhs = 1/params(17)*(1+y(1)*params(13)-params(13))+(y(2)-1)*y(41)*y(2);
residual(8) = lhs - rhs;
lhs = y(8);
rhs = T(15)*T(16);
residual(9) = lhs - rhs;
lhs = y(6)*y(9)/(y(13)*y(3));
rhs = params(11)/params(10);
residual(10) = lhs - rhs;
lhs = y(10)*y(4)/(y(13)*y(3));
rhs = (1-params(10)-params(11))/params(10);
residual(11) = lhs - rhs;
lhs = y(13);
rhs = y(12)+y(13)*params(12);
residual(12) = lhs - rhs;
lhs = y(14);
rhs = y(28)*T(17);
residual(13) = lhs - rhs;
lhs = (1-params(36))*y(34);
rhs = T(18);
residual(14) = lhs - rhs;
lhs = y(36);
rhs = y(34)*y(37);
residual(15) = lhs - rhs;
lhs = y(35);
rhs = 1;
residual(16) = lhs - rhs;
lhs = y(40);
rhs = 1;
residual(17) = lhs - rhs;
lhs = params(32)*y(38)^(-params(29));
rhs = y(42)-params(6)*y(42)/y(2);
residual(18) = lhs - rhs;
lhs = params(33)*y(39)^(-params(30));
rhs = y(42)-params(6)*y(42)*params(37)/y(2);
residual(19) = lhs - rhs;
lhs = params(34)*y(37)^(-params(31));
rhs = y(42)-y(40)*params(6)*y(42)/y(2);
residual(20) = lhs - rhs;
lhs = y(4);
rhs = params(8)*y(10)^params(7);
residual(21) = lhs - rhs;
lhs = 1;
rhs = y(41)*(y(3)+y(7)*params(12))/T(19);
residual(22) = lhs - rhs;
lhs = 1;
rhs = y(41)*y(5)/y(2);
residual(23) = lhs - rhs;
lhs = y(7);
rhs = 1+y(29)+T(3)*params(15)*y(12)/(y(12));
residual(24) = lhs - rhs;
lhs = y(24);
rhs = T(1)*T(20);
residual(25) = lhs - rhs;
lhs = y(25);
rhs = T(1)*(y(5)/y(2)-y(27));
residual(26) = lhs - rhs;
lhs = y(23);
rhs = T(1)*y(5)/y(2);
residual(27) = lhs - rhs;
lhs = y(22);
rhs = y(23)/(y(30)+y(23)*T(5)*T(6)-(y(24)+y(20)*y(25)));
residual(28) = lhs - rhs;
lhs = y(21);
rhs = y(30)*y(22);
residual(29) = lhs - rhs;
lhs = y(20);
rhs = y(25)/(params(5)*y(23))-1/params(1)+T(21);
residual(30) = lhs - rhs;
lhs = y(8);
rhs = y(32)+y(31)+y(14)+y(11)+y(12)*(1+y(29))+T(23);
residual(31) = lhs - rhs;
lhs = y(19);
rhs = y(9)+y(27)*y(19)-y(14)/y(6);
residual(32) = lhs - rhs;
lhs = y(15);
rhs = params(3)*(y(16)*(y(3)+y(7)*params(12))-y(5)*y(18)/y(2)-y(19)*y(27)*y(6))+y(13)*(y(3)+y(7)*params(12))*params(4);
residual(33) = lhs - rhs;
lhs = y(7)*y(16)*(1+T(5)*T(6));
rhs = y(15)*y(22)*(1+T(5)*T(6));
residual(34) = lhs - rhs;
lhs = y(7)*y(16)*(1+T(5)*T(6));
rhs = y(15)+y(18)+y(6)*y(19);
residual(35) = lhs - rhs;
lhs = y(20);
rhs = y(6)*y(19)/(y(7)*y(16));
residual(36) = lhs - rhs;
lhs = y(13);
rhs = y(17)+y(16);
residual(37) = lhs - rhs;
lhs = log(y(5))+log(params(6));
rhs = x(1)+(1-params(19))*params(20)*log(y(2))+(log(y(5))+log(params(6)))*params(19);
residual(38) = lhs - rhs;
lhs = y(26);
rhs = 1-params(21)+y(26)*params(21)+x(2);
residual(39) = lhs - rhs;
lhs = log(y(43));
rhs = params(21)*log(y(43));
residual(40) = lhs - rhs;
lhs = log(y(44));
rhs = params(21)*log(y(44));
residual(41) = lhs - rhs;
lhs = y(28);
rhs = x(4)+y(28)*params(23)+(y(28))*(1-params(23));
residual(42) = lhs - rhs;
lhs = y(27);
rhs = x(3)+y(27)*params(22)+(y(27))*(1-params(22));
residual(43) = lhs - rhs;
lhs = y(33);
rhs = y(8)-y(6)*y(9)-T(23)-y(31)-y(32);
residual(44) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
