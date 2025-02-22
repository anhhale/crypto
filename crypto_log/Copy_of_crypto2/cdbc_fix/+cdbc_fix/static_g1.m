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
    T = cdbc_fix.static_g1_tt(T, y, x, params);
end
g1 = zeros(68, 68);
g1(1,10)=(-(params(8)*getPowerDeriv(y(10),1+params(7),1)/(1+params(7))/(T(1)*T(1))));
g1(1,11)=(-((-1)/(T(1)*T(1))));
g1(1,42)=1;
g1(1,44)=1;
g1(2,41)=1;
g1(3,21)=(-(y(41)*params(3)));
g1(3,41)=(-(1-params(3)+params(3)*y(21)));
g1(3,68)=1;
g1(4,12)=(-(params(15)/2*((y(12))-y(12))/((y(12))*(y(12)))*2*T(2)));
g1(4,29)=1;
g1(5,13)=(-((-T(3))/(y(13)*y(13))));
g1(5,17)=(-(params(9)/2*2*y(17)/y(13)));
g1(5,31)=1;
g1(6,7)=(-(T(5)*T(4)*y(16)));
g1(6,16)=(-(T(4)*y(7)*T(5)));
g1(6,20)=(-(T(4)*y(7)*y(16)*2*y(20)));
g1(6,32)=1;
g1(7,30)=1;
g1(8,1)=1;
g1(8,3)=(-(T(11)*T(9)*T(6)*getPowerDeriv(y(3),params(10),1)));
g1(8,4)=(-(T(10)*getPowerDeriv(y(4),1-params(10)-params(11),1)));
g1(8,6)=(-(T(11)*T(8)*getPowerDeriv(y(6),params(11),1)));
g1(8,26)=(-(T(11)*T(9)*T(7)*(-1)/(y(26)*y(26))));
g1(9,1)=(-(1/params(17)*params(13)));
g1(9,2)=y(2)+y(2)-1-(y(41)*y(2)+y(41)*(y(2)-1));
g1(9,41)=(-(y(2)*(y(2)-1)));
g1(10,8)=1;
g1(10,9)=(-(T(16)*T(13)*1/params(11)*getPowerDeriv(y(9)/params(11),params(11),1)));
g1(10,10)=(-(T(15)*1/(1-params(10)-params(11))*getPowerDeriv(y(10)/(1-params(10)-params(11)),1-params(10)-params(11),1)));
g1(10,13)=(-(T(16)*T(14)*y(26)*1/params(10)*getPowerDeriv(y(13)/params(10),params(10),1)));
g1(10,26)=(-(T(16)*T(12)*T(14)));
g1(11,3)=(-(y(13)*y(6)*y(9)))/(y(13)*y(3)*y(13)*y(3));
g1(11,6)=y(9)/(y(13)*y(3));
g1(11,9)=y(6)/(y(13)*y(3));
g1(11,13)=(-(y(3)*y(6)*y(9)))/(y(13)*y(3)*y(13)*y(3));
g1(12,3)=(-(y(13)*y(10)*y(4)))/(y(13)*y(3)*y(13)*y(3));
g1(12,4)=y(10)/(y(13)*y(3));
g1(12,10)=y(4)/(y(13)*y(3));
g1(12,13)=(-(y(3)*y(10)*y(4)))/(y(13)*y(3)*y(13)*y(3));
g1(13,12)=(-1);
g1(13,13)=1-params(12);
g1(14,6)=(-(y(28)*getPowerDeriv(y(6),params(16),1)));
g1(14,14)=1;
g1(14,28)=(-T(17));
g1(15,34)=1-params(36);
g1(15,36)=(-(T(18)*log(params(35))));
g1(16,36)=1/y(36)-0.95*1/y(36);
g1(17,35)=1;
g1(18,40)=1;
g1(19,45)=0.05000000000000004;
g1(20,11)=1;
g1(20,38)=(-(params(39)*getPowerDeriv(y(38),1-params(29),1)*T(34)));
g1(20,39)=(-(T(34)*params(38)*getPowerDeriv(y(39),1-params(29),1)));
g1(21,38)=(-((-y(39))/((y(39)+y(38))*(y(39)+y(38)))));
g1(21,39)=(-(y(38)/((y(39)+y(38))*(y(39)+y(38)))));
g1(21,43)=1;
g1(22,2)=(-(params(6)*y(44)))/(y(2)*y(2));
g1(22,11)=T(21)*y(42)*params(39)*T(32);
g1(22,38)=y(42)*params(39)*T(20)*getPowerDeriv(y(38),(-params(29)),1)-params(41)*(-(2*y(39)*(params(40)-y(43))*2*(y(39)+y(38))))/(T(22)*T(22));
g1(22,39)=(-(params(41)*(T(22)*2*(params(40)-y(43))-2*y(39)*(params(40)-y(43))*2*(y(39)+y(38)))/(T(22)*T(22))));
g1(22,42)=params(39)*T(20)*T(21);
g1(22,43)=(-(params(41)*(-(2*y(39)))/T(22)));
g1(22,44)=(-(1-params(6)/y(2)));
g1(23,2)=(-(params(6)*y(44)*params(37)))/(y(2)*y(2));
g1(23,11)=T(23)*y(42)*params(38)*T(32);
g1(23,38)=(-T(35));
g1(23,39)=y(42)*params(38)*T(20)*getPowerDeriv(y(39),(-params(29)),1)-T(35);
g1(23,42)=params(38)*T(20)*T(23);
g1(23,43)=(-(params(41)*(T(24)*(-2)+2*(params(40)-y(43))*1/(y(39)+y(38)))));
g1(23,44)=(-(1-params(6)*params(37)/y(2)));
g1(24,2)=(-(y(40)*params(6)*y(44)))/(y(2)*y(2));
g1(24,37)=params(34)*getPowerDeriv(y(37),(-params(31)),1);
g1(24,40)=params(6)*y(44)/y(2);
g1(24,44)=(-(1-params(6)*y(40)/y(2)));
g1(25,4)=1;
g1(25,10)=(-(params(8)*getPowerDeriv(y(10),params(7),1)));
g1(26,3)=(-(y(41)/T(25)));
g1(26,7)=(-((T(25)*y(41)*params(12)-y(41)*(y(3)+y(7)*params(12)))/(T(25)*T(25))));
g1(26,13)=(-((-(y(41)*(y(3)+y(7)*params(12))*(-(params(9)*y(17)))/(y(13)*y(13))))/(T(25)*T(25))));
g1(26,17)=(-((-(y(41)*(y(3)+y(7)*params(12))*params(9)/y(13)))/(T(25)*T(25))));
g1(26,41)=(-((y(3)+y(7)*params(12))/T(25)));
g1(27,2)=(-((-(y(41)*y(5)))/(y(2)*y(2))));
g1(27,5)=(-(y(41)/y(2)));
g1(27,41)=(-T(26));
g1(28,7)=1;
g1(28,12)=(-(params(15)*y(12)/(y(12))*((y(12))-y(12))/((y(12))*(y(12)))+T(2)*params(15)*((y(12))-y(12))/((y(12))*(y(12)))));
g1(28,29)=(-1);
g1(29,2)=(-(y(68)*(-((-y(5))/(y(2)*y(2))))));
g1(29,3)=(-(y(68)*1/y(7)));
g1(29,5)=(-(y(68)*T(31)));
g1(29,7)=(-(y(68)*(y(7)*params(12)-(y(3)+y(7)*params(12)))/(y(7)*y(7))));
g1(29,24)=1;
g1(29,68)=(-T(27));
g1(30,2)=(-(y(68)*((-y(5))/(y(2)*y(2))-(-y(40))/(y(2)*y(2)))));
g1(30,5)=(-(y(68)*1/y(2)));
g1(30,40)=(-(y(68)*T(31)));
g1(30,46)=1;
g1(30,68)=(-(T(26)-y(40)/y(2)));
g1(31,2)=(-(y(68)*(-y(5))/(y(2)*y(2))));
g1(31,5)=(-(y(68)*1/y(2)));
g1(31,25)=1;
g1(31,27)=y(68);
g1(31,68)=(-(T(26)-y(27)));
g1(32,2)=(-((-(y(68)*y(5)))/(y(2)*y(2))));
g1(32,5)=(-(y(68)/y(2)));
g1(32,23)=1;
g1(32,68)=(-T(26));
g1(33,20)=(-((-(y(23)*(y(23)*T(4)*2*y(20)-y(25))))/T(33)));
g1(33,22)=1;
g1(33,23)=(-((y(30)+y(23)*T(4)*T(5)-(y(24)+y(20)*y(25)+y(46)*y(47))-y(23)*T(4)*T(5))/T(33)));
g1(33,24)=(-(y(23)/T(33)));
g1(33,25)=(-((-(y(23)*(-y(20))))/T(33)));
g1(33,30)=(-((-y(23))/T(33)));
g1(33,46)=(-((-(y(23)*(-y(47))))/T(33)));
g1(33,47)=(-((-(y(23)*(-y(46))))/T(33)));
g1(34,21)=1;
g1(34,22)=(-y(30));
g1(34,30)=(-y(22));
g1(35,20)=1;
g1(35,23)=(-((-(params(5)*y(25)))/(params(5)*y(23)*params(5)*y(23))+((-(params(5)*y(25)))/(params(5)*y(23)*params(5)*y(23))*2*y(25)/(params(5)*y(23))+y(47)*(-(params(5)*2*y(46)))/(params(5)*y(23)*params(5)*y(23))+(-(params(5)*2*y(24)))/(params(5)*y(23)*params(5)*y(23)))/(T(28)+T(28))));
g1(35,24)=(-(2/(params(5)*y(23))/(T(28)+T(28))));
g1(35,25)=(-(1/(params(5)*y(23))+2*y(25)/(params(5)*y(23))*1/(params(5)*y(23))/(T(28)+T(28))));
g1(35,46)=(-(y(47)*2/(params(5)*y(23))/(T(28)+T(28))));
g1(35,47)=(-(2*y(46)/(params(5)*y(23))/(T(28)+T(28))));
g1(36,2)=(-(y(8)*params(17)/2*2*(y(2)-1)));
g1(36,8)=1-T(29);
g1(36,11)=(-1);
g1(36,12)=(-(1+y(29)));
g1(36,14)=(-1);
g1(36,29)=(-y(12));
g1(36,31)=(-1);
g1(36,32)=(-1);
g1(37,6)=(-y(14))/(y(6)*y(6));
g1(37,9)=(-1);
g1(37,14)=1/y(6);
g1(37,19)=1-y(27);
g1(37,27)=(-y(19));
g1(38,2)=(-(params(3)*((-((-(y(5)*y(18)))/(y(2)*y(2))))-(-(y(40)*y(37)))/(y(2)*y(2)))));
g1(38,3)=(-(params(3)*y(16)+y(13)*params(4)));
g1(38,5)=(-(params(3)*(-(y(18)/y(2)))));
g1(38,6)=(-(params(3)*(-(y(27)*y(19)))));
g1(38,7)=(-(params(3)*y(16)*params(12)+y(13)*params(12)*params(4)));
g1(38,13)=(-((y(3)+y(7)*params(12))*params(4)));
g1(38,15)=1;
g1(38,16)=(-(params(3)*(y(3)+y(7)*params(12))));
g1(38,18)=(-(params(3)*(-T(26))));
g1(38,19)=(-(params(3)*(-(y(27)*y(6)))));
g1(38,27)=(-(params(3)*(-(y(6)*y(19)))));
g1(38,37)=(-(params(3)*(-(y(40)/y(2)))));
g1(38,40)=(-(params(3)*(-(y(37)/y(2)))));
g1(39,7)=y(16)*(1+T(4)*T(5));
g1(39,15)=(-(y(22)*(1+T(4)*T(5))));
g1(39,16)=y(7)*(1+T(4)*T(5));
g1(39,20)=y(7)*y(16)*T(4)*2*y(20)-y(15)*y(22)*T(4)*2*y(20);
g1(39,22)=(-(y(15)*(1+T(4)*T(5))));
g1(40,6)=(-y(19));
g1(40,7)=y(16)*(1+T(4)*T(5));
g1(40,15)=(-1);
g1(40,16)=y(7)*(1+T(4)*T(5));
g1(40,18)=(-1);
g1(40,19)=(-y(6));
g1(40,20)=y(7)*y(16)*T(4)*2*y(20);
g1(40,37)=(-1);
g1(41,6)=(-(y(19)/(y(7)*y(16))));
g1(41,7)=(-((-(y(16)*y(6)*y(19)))/(y(7)*y(16)*y(7)*y(16))));
g1(41,16)=(-((-(y(7)*y(6)*y(19)))/(y(7)*y(16)*y(7)*y(16))));
g1(41,19)=(-(y(6)/(y(7)*y(16))));
g1(41,20)=1;
g1(42,7)=(-((-(y(16)*y(37)))/(y(7)*y(16)*y(7)*y(16))));
g1(42,16)=(-((-(y(7)*y(37)))/(y(7)*y(16)*y(7)*y(16))));
g1(42,37)=(-(1/(y(7)*y(16))));
g1(42,47)=1;
g1(43,13)=1;
g1(43,16)=(-1);
g1(43,17)=(-1);
g1(44,2)=T(31);
g1(44,48)=1/y(48);
g1(45,2)=(-((1-params(19))*params(20)*1/y(2)));
g1(45,5)=params(6)/(params(6)*y(5))-params(19)*params(6)/(params(6)*y(5));
g1(45,8)=(-((1-params(19))*0.*((y(8))-y(8))/((y(8))*(y(8)))/(y(8)/(y(8)))));
g1(45,48)=(-((1-params(19))*0.3*1/y(48)));
g1(46,26)=T(6)-T(6)*params(21);
g1(49,2)=y(8)*params(17)/2*2*(y(2)-1);
g1(49,6)=y(9);
g1(49,8)=(-(1-T(29)));
g1(49,9)=y(6);
g1(49,31)=1;
g1(49,32)=1;
g1(49,33)=1;
g1(50,8)=(-(1/y(8)));
g1(50,49)=1;
g1(51,2)=T(31);
g1(51,50)=1;
g1(52,5)=(-(1/y(5)));
g1(52,51)=1;
g1(53,12)=(-(1/y(12)));
g1(53,52)=1;
g1(54,10)=(-(1/y(10)));
g1(54,53)=1;
g1(55,11)=(-(1/y(11)));
g1(55,54)=1;
g1(56,14)=(-(1/y(14)));
g1(56,55)=1;
g1(57,9)=(-(1/y(9)));
g1(57,56)=1;
g1(58,18)=(-(1/y(18)));
g1(58,57)=1;
g1(59,19)=(-(1/y(19)));
g1(59,58)=1;
g1(60,15)=(-(1/y(15)));
g1(60,59)=1;
g1(61,2)=(-((-((-y(5))/(y(2)*y(2))))/T(27)));
g1(61,3)=(-(1/y(7)/T(27)));
g1(61,5)=(-(T(31)/T(27)));
g1(61,7)=(-((y(7)*params(12)-(y(3)+y(7)*params(12)))/(y(7)*y(7))/T(27)));
g1(61,60)=1;
g1(62,38)=(-(1/y(38)));
g1(62,61)=1;
g1(63,39)=(-(1/y(39)));
g1(63,62)=1;
g1(64,22)=(-(1/y(22)));
g1(64,63)=1;
g1(65,9)=(-((-1)/(y(14)-y(9))));
g1(65,14)=(-(1/(y(14)-y(9))));
g1(65,64)=1;
g1(66,37)=(-(1/y(37)));
g1(66,65)=1;
g1(67,66)=1;
g1(68,2)=(-(y(68)*(-((-y(5))/(y(2)*y(2))))/(y(68)*T(27))));
g1(68,3)=(-(y(68)*1/y(7)/(y(68)*T(27))));
g1(68,5)=(-(y(68)*T(31)/(y(68)*T(27))));
g1(68,7)=(-(y(68)*(y(7)*params(12)-(y(3)+y(7)*params(12)))/(y(7)*y(7))/(y(68)*T(27))));
g1(68,67)=1;
g1(68,68)=(-(T(27)/(y(68)*T(27))));
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
