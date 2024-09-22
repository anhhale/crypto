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
    T = cdbc_flex_optim.static_g1_tt(T, y, x, params);
end
g1 = zeros(67, 67);
g1(1,2)=(-((-1)/(T(3)*T(3))));
g1(1,17)=(-(params(8)*T(42)/(1+params(7))/(T(3)*T(3))));
g1(1,43)=1;
g1(1,45)=1;
g1(2,42)=1;
g1(3,18)=(-(params(15)/2*((y(18))-y(18))/((y(18))*(y(18)))*2*T(4)));
g1(3,33)=1;
g1(4,19)=(-((-T(5))/(y(19)*y(19))));
g1(4,22)=(-(params(9)/2*2*y(22)/y(19)));
g1(4,35)=1;
g1(5,15)=(-(T(7)*T(6)*y(21)));
g1(5,21)=(-(T(6)*y(15)*T(7)));
g1(5,24)=(-(T(6)*y(15)*y(21)*2*y(24)));
g1(5,36)=1;
g1(6,34)=1;
g1(7,10)=1;
g1(7,11)=(-(T(13)*T(11)*T(8)*getPowerDeriv(y(11),params(10),1)));
g1(7,12)=(-(T(12)*getPowerDeriv(y(12),1-params(10)-params(11),1)));
g1(7,14)=(-(T(13)*T(10)*getPowerDeriv(y(14),params(11),1)));
g1(7,30)=(-(T(13)*T(11)*T(9)*(-1)/(y(30)*y(30))));
g1(8,3)=y(3)+y(3)-1-(y(42)*y(3)+y(42)*(y(3)-1));
g1(8,10)=(-(1/params(17)*params(13)));
g1(8,42)=(-(y(3)*(y(3)-1)));
g1(9,1)=1;
g1(9,16)=(-(T(18)*T(15)*1/params(11)*getPowerDeriv(y(16)/params(11),params(11),1)));
g1(9,17)=(-(T(17)*1/(1-params(10)-params(11))*getPowerDeriv(y(17)/(1-params(10)-params(11)),1-params(10)-params(11),1)));
g1(9,19)=(-(T(18)*T(16)*y(30)*1/params(10)*getPowerDeriv(y(19)/params(10),params(10),1)));
g1(9,30)=(-(T(18)*T(14)*T(16)));
g1(10,11)=(-(y(19)*y(14)*y(16)))/(y(19)*y(11)*y(19)*y(11));
g1(10,14)=y(16)/(y(19)*y(11));
g1(10,16)=y(14)/(y(19)*y(11));
g1(10,19)=(-(y(11)*y(14)*y(16)))/(y(19)*y(11)*y(19)*y(11));
g1(11,11)=(-(y(19)*y(17)*y(12)))/(y(19)*y(11)*y(19)*y(11));
g1(11,12)=y(17)/(y(19)*y(11));
g1(11,17)=y(12)/(y(19)*y(11));
g1(11,19)=(-(y(11)*y(17)*y(12)))/(y(19)*y(11)*y(19)*y(11));
g1(12,18)=(-1);
g1(12,19)=1-params(12);
g1(13,14)=(-(y(32)*getPowerDeriv(y(14),params(16),1)));
g1(13,20)=1;
g1(13,32)=(-T(19));
g1(14,38)=1-params(36);
g1(14,40)=(-(T(20)*log(params(35))));
g1(15,40)=1/y(40)-0.95*1/y(40);
g1(16,1)=(-(0.92*params(48)*T(35)));
g1(16,3)=(-(0.92*params(47)*T(37)));
g1(16,39)=1/y(39)-0.07999999999999996*1/y(39);
g1(17,41)=1;
g1(18,46)=0.05000000000000004;
g1(19,2)=1;
g1(19,5)=(-(params(39)*getPowerDeriv(y(5),1-params(29),1)*T(39)));
g1(19,7)=(-(T(39)*params(38)*getPowerDeriv(y(7),1-params(29),1)));
g1(20,5)=(-((-y(7))/((y(7)+y(5))*(y(7)+y(5)))));
g1(20,7)=(-(y(5)/((y(7)+y(5))*(y(7)+y(5)))));
g1(20,44)=1;
g1(21,2)=T(23)*y(43)*params(39)*T(36);
g1(21,3)=(-(y(39)*params(6)*y(45)))/(y(3)*y(3));
g1(21,5)=y(43)*params(39)*T(22)*getPowerDeriv(y(5),(-params(29)),1)-params(41)*(-(2*y(7)*(params(40)-y(44))*2*(y(7)+y(5))))/(T(24)*T(24));
g1(21,7)=(-(params(41)*(T(24)*2*(params(40)-y(44))-2*y(7)*(params(40)-y(44))*2*(y(7)+y(5)))/(T(24)*T(24))));
g1(21,39)=params(6)*y(45)/y(3);
g1(21,43)=params(39)*T(22)*T(23);
g1(21,44)=(-(params(41)*(-(2*y(7)))/T(24)));
g1(21,45)=(-(1-params(6)*y(39)/y(3)));
g1(22,2)=T(25)*y(43)*params(38)*T(36);
g1(22,3)=(-(params(6)*y(45)*params(37)))/(y(3)*y(3));
g1(22,5)=(-T(40));
g1(22,7)=y(43)*params(38)*T(22)*getPowerDeriv(y(7),(-params(29)),1)-T(40);
g1(22,43)=params(38)*T(22)*T(25);
g1(22,44)=(-(params(41)*(T(26)*(-2)+2*(params(40)-y(44))*1/(y(7)+y(5)))));
g1(22,45)=(-(1-params(6)*params(37)/y(3)));
g1(23,3)=(-(y(41)*params(6)*y(45)))/(y(3)*y(3));
g1(23,6)=params(34)*getPowerDeriv(y(6),(-params(31)),1);
g1(23,41)=params(6)*y(45)/y(3);
g1(23,45)=(-(1-params(6)*y(41)/y(3)));
g1(24,12)=1;
g1(24,17)=(-(params(8)*getPowerDeriv(y(17),params(7),1)));
g1(25,11)=(-(y(42)/T(27)));
g1(25,15)=(-((T(27)*y(42)*params(12)-y(42)*(y(11)+y(15)*params(12)))/(T(27)*T(27))));
g1(25,19)=(-((-(y(42)*(y(11)+y(15)*params(12))*(-(params(9)*y(22)))/(y(19)*y(19))))/(T(27)*T(27))));
g1(25,22)=(-((-(y(42)*(y(11)+y(15)*params(12))*params(9)/y(19)))/(T(27)*T(27))));
g1(25,42)=(-((y(11)+y(15)*params(12))/T(27)));
g1(26,3)=(-((-(y(42)*y(13)))/(y(3)*y(3))));
g1(26,13)=(-(y(42)/y(3)));
g1(26,42)=(-T(28));
g1(27,15)=1;
g1(27,18)=(-(params(15)*y(18)/(y(18))*((y(18))-y(18))/((y(18))*(y(18)))+T(4)*params(15)*((y(18))-y(18))/((y(18))*(y(18)))));
g1(27,33)=(-1);
g1(28,3)=(-(T(1)*(-T(38))));
g1(28,11)=(-(T(1)*1/y(15)));
g1(28,13)=(-(T(1)*(-T(37))));
g1(28,15)=(-(T(1)*(y(15)*params(12)-(y(11)+y(15)*params(12)))/(y(15)*y(15))));
g1(28,25)=(-(T(29)*y(42)*params(3)));
g1(28,28)=1;
g1(28,42)=(-((1-params(3)+params(3)*y(25))*T(29)));
g1(29,3)=(-(T(1)*(T(38)-(-y(41))/(y(3)*y(3)))));
g1(29,13)=(-(T(1)*T(37)));
g1(29,25)=(-((T(28)-y(41)/y(3))*y(42)*params(3)));
g1(29,41)=(-(T(1)*(-T(37))));
g1(29,42)=(-((1-params(3)+params(3)*y(25))*(T(28)-y(41)/y(3))));
g1(29,47)=1;
g1(30,3)=(-(T(1)*T(38)));
g1(30,13)=(-(T(1)*T(37)));
g1(30,25)=(-((T(28)-y(31))*y(42)*params(3)));
g1(30,29)=1;
g1(30,31)=T(1);
g1(30,42)=(-((1-params(3)+params(3)*y(25))*(T(28)-y(31))));
g1(31,3)=(-((-(T(1)*y(13)))/(y(3)*y(3))));
g1(31,13)=(-(T(1)/y(3)));
g1(31,25)=(-(y(13)*y(42)*params(3)/y(3)));
g1(31,27)=1;
g1(31,42)=(-((1-params(3)+params(3)*y(25))*y(13)/y(3)));
g1(32,24)=(-((-(y(27)*(y(27)*T(6)*2*y(24)-y(29))))/T(44)));
g1(32,26)=1;
g1(32,27)=(-((y(34)+y(27)*T(6)*T(7)-(y(28)+y(24)*y(29)+y(47)*y(48))-y(27)*T(6)*T(7))/T(44)));
g1(32,28)=(-(y(27)/T(44)));
g1(32,29)=(-((-(y(27)*(-y(24))))/T(44)));
g1(32,34)=(-((-y(27))/T(44)));
g1(32,47)=(-((-(y(27)*(-y(48))))/T(44)));
g1(32,48)=(-((-(y(27)*(-y(47))))/T(44)));
g1(33,25)=1;
g1(33,26)=(-y(34));
g1(33,34)=(-y(26));
g1(34,24)=1;
g1(34,27)=(-((-(params(5)*y(29)))/(params(5)*y(27)*params(5)*y(27))+((-(params(5)*y(29)))/(params(5)*y(27)*params(5)*y(27))*2*y(29)/(params(5)*y(27))+y(48)*(-(params(5)*2*y(47)))/(params(5)*y(27)*params(5)*y(27))+(-(params(5)*2*y(28)))/(params(5)*y(27)*params(5)*y(27)))/(T(30)+T(30))));
g1(34,28)=(-(2/(params(5)*y(27))/(T(30)+T(30))));
g1(34,29)=(-(1/(params(5)*y(27))+2*y(29)/(params(5)*y(27))*1/(params(5)*y(27))/(T(30)+T(30))));
g1(34,47)=(-(y(48)*2/(params(5)*y(27))/(T(30)+T(30))));
g1(34,48)=(-(2*y(47)/(params(5)*y(27))/(T(30)+T(30))));
g1(35,1)=1-T(31);
g1(35,2)=(-1);
g1(35,3)=(-(y(1)*params(17)/2*2*(y(3)-1)));
g1(35,18)=(-(1+y(33)));
g1(35,20)=(-1);
g1(35,33)=(-y(18));
g1(35,35)=(-1);
g1(35,36)=(-1);
g1(36,8)=1-y(31);
g1(36,14)=(-y(20))/(y(14)*y(14));
g1(36,16)=(-1);
g1(36,20)=1/y(14);
g1(36,31)=(-y(8));
g1(37,3)=(-(params(3)*((-((-(y(13)*y(23)))/(y(3)*y(3))))-(-(y(41)*y(6)))/(y(3)*y(3)))));
g1(37,4)=1;
g1(37,6)=(-(params(3)*(-(y(41)/y(3)))));
g1(37,8)=(-(params(3)*(-(y(31)*y(14)))));
g1(37,11)=(-(params(3)*y(21)+y(19)*params(4)));
g1(37,13)=(-(params(3)*(-(y(23)/y(3)))));
g1(37,14)=(-(params(3)*(-(y(31)*y(8)))));
g1(37,15)=(-(params(3)*y(21)*params(12)+y(19)*params(12)*params(4)));
g1(37,19)=(-((y(11)+y(15)*params(12))*params(4)));
g1(37,21)=(-(params(3)*(y(11)+y(15)*params(12))));
g1(37,23)=(-(params(3)*(-T(28))));
g1(37,31)=(-(params(3)*(-(y(14)*y(8)))));
g1(37,41)=(-(params(3)*(-(y(6)/y(3)))));
g1(38,4)=(-(y(26)*(1+T(6)*T(7))));
g1(38,15)=y(21)*(1+T(6)*T(7));
g1(38,21)=y(15)*(1+T(6)*T(7));
g1(38,24)=y(15)*y(21)*T(6)*2*y(24)-y(4)*y(26)*T(6)*2*y(24);
g1(38,26)=(-(y(4)*(1+T(6)*T(7))));
g1(39,4)=(-1);
g1(39,6)=(-1);
g1(39,8)=(-y(14));
g1(39,14)=(-y(8));
g1(39,15)=y(21)*(1+T(6)*T(7));
g1(39,21)=y(15)*(1+T(6)*T(7));
g1(39,23)=(-1);
g1(39,24)=y(15)*y(21)*T(6)*2*y(24);
g1(40,8)=(-(y(14)/(y(15)*y(21))));
g1(40,14)=(-(y(8)/(y(15)*y(21))));
g1(40,15)=(-((-(y(21)*y(14)*y(8)))/(y(15)*y(21)*y(15)*y(21))));
g1(40,21)=(-((-(y(15)*y(14)*y(8)))/(y(15)*y(21)*y(15)*y(21))));
g1(40,24)=1;
g1(41,6)=(-(1/(y(15)*y(21))));
g1(41,15)=(-((-(y(21)*y(6)))/(y(15)*y(21)*y(15)*y(21))));
g1(41,21)=(-((-(y(15)*y(6)))/(y(15)*y(21)*y(15)*y(21))));
g1(41,48)=1;
g1(42,19)=1;
g1(42,21)=(-1);
g1(42,22)=(-1);
g1(43,3)=(-T(37));
g1(43,49)=1/y(49);
g1(44,1)=(-((1-params(19))*0.*T(35)));
g1(44,3)=(-((1-params(19))*params(20)*T(37)));
g1(44,13)=params(6)/(params(6)*y(13))-params(19)*params(6)/(params(6)*y(13));
g1(44,49)=(-((1-params(19))*params(49)*1/y(49)));
g1(45,30)=T(8)-T(8)*params(21);
g1(48,1)=(-(1-T(31)));
g1(48,3)=y(1)*params(17)/2*2*(y(3)-1);
g1(48,14)=y(16);
g1(48,16)=y(14);
g1(48,35)=1;
g1(48,36)=1;
g1(48,37)=1;
g1(49,1)=(-(1/y(1)));
g1(49,51)=1;
g1(50,3)=(-T(37));
g1(50,52)=1;
g1(51,13)=(-(1/y(13)));
g1(51,53)=1;
g1(52,18)=(-(1/y(18)));
g1(52,54)=1;
g1(53,17)=(-(1/y(17)));
g1(53,55)=1;
g1(54,2)=(-(1/y(2)));
g1(54,56)=1;
g1(55,20)=(-(1/y(20)));
g1(55,57)=1;
g1(56,16)=(-(1/y(16)));
g1(56,58)=1;
g1(57,23)=(-(1/y(23)));
g1(57,59)=1;
g1(58,8)=(-(1/y(8)));
g1(58,60)=1;
g1(59,4)=(-(1/y(4)));
g1(59,61)=1;
g1(60,3)=T(38);
g1(60,11)=(-(1/y(15)));
g1(60,13)=T(37);
g1(60,15)=(-((y(15)*params(12)-(y(11)+y(15)*params(12)))/(y(15)*y(15))));
g1(60,62)=1;
g1(61,5)=(-(1/y(5)));
g1(61,63)=1;
g1(62,7)=(-(1/y(7)));
g1(62,64)=1;
g1(63,26)=(-(1/y(26)));
g1(63,65)=1;
g1(64,16)=1;
g1(64,20)=(-1);
g1(64,66)=1;
g1(65,6)=(-(1/y(6)));
g1(65,67)=1;
g1(66,2)=(-(1/T(33)));
g1(66,6)=T(41);
g1(66,17)=T(43);
g1(66,44)=params(41)*(-(2*(params(40)-y(44))));
g1(66,50)=1;
g1(67,2)=(-(1/T(33)));
g1(67,6)=T(41);
g1(67,9)=1-params(6);
g1(67,17)=T(43);
g1(67,44)=params(41)*(-(2*(params(40)-y(44))));
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
