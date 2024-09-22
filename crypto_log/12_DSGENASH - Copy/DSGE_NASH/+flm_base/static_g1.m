function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = flm_base.static_g1_tt(T, y, x, params);
end
g1 = zeros(32, 32);
g1(1,1)=y(2);
g1(1,2)=y(1);
g1(1,3)=(-1);
g1(1,4)=(-y(5));
g1(1,5)=(-y(4));
g1(2,6)=(-(params(17)/y(10)));
g1(2,10)=(-((-(params(17)*y(6)))/(y(10)*y(10))));
g1(3,3)=1;
g1(3,8)=(-(T(2)*getPowerDeriv(y(8),1-params(1),1)));
g1(3,9)=(-(T(1)*getPowerDeriv(y(9),params(1),1)));
g1(4,1)=(-(T(4)*getPowerDeriv(y(1),1-params(1),1)));
g1(4,4)=(-(T(3)*getPowerDeriv(y(4),params(1),1)));
g1(5,10)=1-T(5)*getPowerDeriv(y(10),params(1),1);
g1(5,11)=(-(T(6)*getPowerDeriv(y(11),1-params(1),1)));
g1(6,2)=(-(1/y(3)));
g1(6,3)=(-((-y(2))/(y(3)*y(3))));
g1(6,11)=(-(params(18)*params(17)*y(12)*T(24)));
g1(6,12)=1-params(18)*params(17)*T(7);
g1(7,2)=(-(y(14)*params(16)/(params(16)-1)/y(3)));
g1(7,3)=(-(y(14)*(-(params(16)/(params(16)-1)*y(2)))/(y(3)*y(3))));
g1(7,11)=(-(params(18)*params(17)*y(13)*T(25)));
g1(7,13)=1-params(18)*params(17)*T(8);
g1(7,14)=(-T(9));
g1(8,11)=params(18)*T(24);
g1(8,12)=(1-params(18))*(-y(13))/(y(12)*y(12))*T(26);
g1(8,13)=(1-params(18))*T(26)*1/y(12);
g1(9,11)=(-(params(18)*y(15)*T(25)));
g1(9,12)=(-((1-params(18))*(-y(13))/(y(12)*y(12))*T(27)));
g1(9,13)=(-((1-params(18))*T(27)*1/y(12)));
g1(9,15)=1-params(18)*T(8);
g1(10,4)=(-(T(11)*getPowerDeriv(y(4),params(2),1)/T(15)));
g1(10,14)=1;
g1(10,16)=(-(T(12)*getPowerDeriv(y(16),1-params(2),1)/T(15)));
g1(10,17)=(-((-(T(11)*T(12)*T(13)*T(14)))/(T(15)*T(15))));
g1(11,3)=(-T(16));
g1(11,16)=1;
g1(11,18)=(-(y(3)*getPowerDeriv(y(18),params(3),1)));
g1(12,2)=(-(y(15)*y(14)*(1-params(2))/y(16)));
g1(12,14)=(-(y(15)*y(2)*(1-params(2))/y(16)));
g1(12,15)=(-(y(2)*y(14)*(1-params(2))/y(16)));
g1(12,16)=(-(y(15)*y(2)*(-(y(14)*(1-params(2))))/(y(16)*y(16))));
g1(12,18)=1;
g1(13,2)=(-(exp(y(26))*T(19)*((y(2))-y(2))/((y(2))*(y(2)))*getPowerDeriv(y(2)/(y(2)),params(26),1)));
g1(13,6)=1;
g1(13,10)=(-(exp(y(26))*T(20)*T(18)*1/params(17)*getPowerDeriv(y(10),params(4),1)));
g1(13,11)=(-(exp(y(26))*T(20)*T(17)*getPowerDeriv(y(11),params(5),1)));
g1(13,26)=(-(T(19)*T(20)*exp(y(26))));
g1(14,5)=(-1);
g1(14,9)=(-1);
g1(14,19)=1;
g1(14,20)=1;
g1(15,3)=(-(params(1)/y(4)));
g1(15,4)=(-((-(params(1)*y(3)))/(y(4)*y(4))));
g1(15,9)=1;
g1(16,2)=(-(y(15)*y(14)*params(2)/y(4)));
g1(16,4)=(-(y(15)*y(2)*(-(y(14)*params(2)))/(y(4)*y(4))));
g1(16,5)=1;
g1(16,14)=(-(y(15)*y(2)*params(2)/y(4)));
g1(16,15)=(-(y(2)*y(14)*params(2)/y(4)));
g1(17,2)=(-(y(21)*y(4)*exp(y(24))*(params(15))/(params(19))));
g1(17,4)=(-(y(21)*(params(15))*(y(2))/(params(19))*exp(y(24))));
g1(17,20)=1;
g1(17,21)=(-(y(4)*(params(15))*(y(2))/(params(19))*exp(y(24))));
g1(17,24)=(-(y(21)*y(4)*(params(15))*(y(2))/(params(19))*exp(y(24))));
g1(18,4)=1/y(32);
g1(18,21)=(-(T(22)*(-1)/(y(21)*y(21))*T(28)));
g1(18,22)=(-(T(28)*T(21)*1/(1-params(1))/((1-y(22)/(1-params(1)))*(1-y(22)/(1-params(1))))));
g1(18,32)=(-y(4))/(y(32)*y(32));
g1(19,19)=(-(2*y(20)/((y(19)+2*y(20))*(y(19)+2*y(20)))));
g1(19,20)=(-((-(2*y(19)))/((y(19)+2*y(20))*(y(19)+2*y(20)))));
g1(19,22)=1;
g1(20,23)=1-params(7);
g1(21,24)=1-params(8);
g1(22,25)=1-params(9);
g1(23,26)=1-params(10);
g1(24,7)=1-params(21);
g1(25,17)=(-(1/y(17)));
g1(25,25)=1;
g1(26,21)=(-T(21));
g1(26,23)=1;
g1(27,3)=(-(exp(y(7))*1/y(3)));
g1(27,7)=(-T(23));
g1(27,18)=(-(exp(y(7))*(-(getPowerDeriv(y(18),1+params(3),1)/(1+params(3))))));
g1(27,27)=1-params(17);
g1(28,4)=(-y(19));
g1(28,19)=(-(y(4)-T(21)));
g1(28,21)=y(19)*(-1)/(y(21)*y(21));
g1(28,28)=1;
g1(29,3)=(-(1/y(28)));
g1(29,28)=(-((-y(3))/(y(28)*y(28))));
g1(29,29)=1;
g1(30,28)=(-(1/y(29)));
g1(30,29)=(-(y(28)*(-1)/(y(29)*y(29))));
g1(30,30)=1-params(17);
g1(31,31)=1;
g1(32,29)=(-(params(29)*((y(29))-y(29))/((y(29))*(y(29)))*getPowerDeriv(y(29)/(y(29)),params(32),1)));
g1(32,32)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
