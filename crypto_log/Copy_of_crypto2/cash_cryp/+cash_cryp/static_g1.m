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
    T = cash_cryp.static_g1_tt(T, y, x, params);
end
g1 = zeros(64, 64);
g1(1,10)=(-(params(8)*getPowerDeriv(y(10),1+params(7),1)/(1+params(7))/(T(1)*T(1))));
g1(1,11)=(-((-1)/(T(1)*T(1))));
g1(1,42)=1;
g1(2,41)=1;
g1(3,21)=(-(y(41)*params(3)));
g1(3,41)=(-(1-params(3)+params(3)*y(21)));
g1(3,64)=1;
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
g1(19,43)=0.05000000000000004;
g1(20,38)=1;
g1(21,2)=(-(params(6)*y(42)*params(37)))/(y(2)*y(2));
g1(21,39)=params(33)*getPowerDeriv(y(39),(-params(30)),1);
g1(21,42)=(-(1-params(6)*params(37)/y(2)));
g1(22,2)=(-(y(40)*params(6)*y(42)))/(y(2)*y(2));
g1(22,37)=params(34)*getPowerDeriv(y(37),(-params(31)),1);
g1(22,40)=params(6)*y(42)/y(2);
g1(22,42)=(-(1-params(6)*y(40)/y(2)));
g1(23,4)=1;
g1(23,10)=(-(params(8)*getPowerDeriv(y(10),params(7),1)));
g1(24,3)=(-(y(41)/T(19)));
g1(24,7)=(-((T(19)*y(41)*params(12)-y(41)*(y(3)+y(7)*params(12)))/(T(19)*T(19))));
g1(24,13)=(-((-(y(41)*(y(3)+y(7)*params(12))*(-(params(9)*y(17)))/(y(13)*y(13))))/(T(19)*T(19))));
g1(24,17)=(-((-(y(41)*(y(3)+y(7)*params(12))*params(9)/y(13)))/(T(19)*T(19))));
g1(24,41)=(-((y(3)+y(7)*params(12))/T(19)));
g1(25,2)=(-((-(y(41)*y(5)))/(y(2)*y(2))));
g1(25,5)=(-(y(41)/y(2)));
g1(25,41)=(-T(20));
g1(26,7)=1;
g1(26,12)=(-(params(15)*y(12)/(y(12))*((y(12))-y(12))/((y(12))*(y(12)))+T(2)*params(15)*((y(12))-y(12))/((y(12))*(y(12)))));
g1(26,29)=(-1);
g1(27,2)=(-(y(64)*(-((-y(5))/(y(2)*y(2))))));
g1(27,3)=(-(y(64)*1/y(7)));
g1(27,5)=(-(y(64)*T(25)));
g1(27,7)=(-(y(64)*(y(7)*params(12)-(y(3)+y(7)*params(12)))/(y(7)*y(7))));
g1(27,24)=1;
g1(27,64)=(-T(21));
g1(28,2)=(-(y(64)*((-y(5))/(y(2)*y(2))-(-y(40))/(y(2)*y(2)))));
g1(28,5)=(-(y(64)*1/y(2)));
g1(28,40)=(-(y(64)*T(25)));
g1(28,44)=1;
g1(28,64)=(-(T(20)-y(40)/y(2)));
g1(29,2)=(-(y(64)*(-y(5))/(y(2)*y(2))));
g1(29,5)=(-(y(64)*1/y(2)));
g1(29,25)=1;
g1(29,27)=y(64);
g1(29,64)=(-(T(20)-y(27)));
g1(30,2)=(-((-(y(64)*y(5)))/(y(2)*y(2))));
g1(30,5)=(-(y(64)/y(2)));
g1(30,23)=1;
g1(30,64)=(-T(20));
g1(31,20)=(-((-(y(23)*(y(23)*T(4)*2*y(20)-y(25))))/T(26)));
g1(31,22)=1;
g1(31,23)=(-((y(30)+y(23)*T(4)*T(5)-(y(24)+y(20)*y(25)+y(44)*y(45))-y(23)*T(4)*T(5))/T(26)));
g1(31,24)=(-(y(23)/T(26)));
g1(31,25)=(-((-(y(23)*(-y(20))))/T(26)));
g1(31,30)=(-((-y(23))/T(26)));
g1(31,44)=(-((-(y(23)*(-y(45))))/T(26)));
g1(31,45)=(-((-(y(23)*(-y(44))))/T(26)));
g1(32,21)=1;
g1(32,22)=(-y(30));
g1(32,30)=(-y(22));
g1(33,20)=1;
g1(33,23)=(-((-(params(5)*y(25)))/(params(5)*y(23)*params(5)*y(23))+((-(params(5)*y(25)))/(params(5)*y(23)*params(5)*y(23))*2*y(25)/(params(5)*y(23))+y(45)*(-(params(5)*2*y(44)))/(params(5)*y(23)*params(5)*y(23))+(-(params(5)*2*y(24)))/(params(5)*y(23)*params(5)*y(23)))/(T(22)+T(22))));
g1(33,24)=(-(2/(params(5)*y(23))/(T(22)+T(22))));
g1(33,25)=(-(1/(params(5)*y(23))+2*y(25)/(params(5)*y(23))*1/(params(5)*y(23))/(T(22)+T(22))));
g1(33,44)=(-(y(45)*2/(params(5)*y(23))/(T(22)+T(22))));
g1(33,45)=(-(2*y(44)/(params(5)*y(23))/(T(22)+T(22))));
g1(34,2)=(-(y(8)*params(17)/2*2*(y(2)-1)));
g1(34,8)=1-T(23);
g1(34,11)=(-1);
g1(34,12)=(-(1+y(29)));
g1(34,14)=(-1);
g1(34,29)=(-y(12));
g1(34,31)=(-1);
g1(34,32)=(-1);
g1(35,6)=(-y(14))/(y(6)*y(6));
g1(35,9)=(-1);
g1(35,14)=1/y(6);
g1(35,19)=1-y(27);
g1(35,27)=(-y(19));
g1(36,2)=(-(params(3)*((-((-(y(5)*y(18)))/(y(2)*y(2))))-(-(y(40)*y(37)))/(y(2)*y(2)))));
g1(36,3)=(-(params(3)*y(16)+y(13)*params(4)));
g1(36,5)=(-(params(3)*(-(y(18)/y(2)))));
g1(36,6)=(-(params(3)*(-(y(27)*y(19)))));
g1(36,7)=(-(params(3)*y(16)*params(12)+y(13)*params(12)*params(4)));
g1(36,13)=(-((y(3)+y(7)*params(12))*params(4)));
g1(36,15)=1;
g1(36,16)=(-(params(3)*(y(3)+y(7)*params(12))));
g1(36,18)=(-(params(3)*(-T(20))));
g1(36,19)=(-(params(3)*(-(y(27)*y(6)))));
g1(36,27)=(-(params(3)*(-(y(6)*y(19)))));
g1(36,37)=(-(params(3)*(-(y(40)/y(2)))));
g1(36,40)=(-(params(3)*(-(y(37)/y(2)))));
g1(37,7)=y(16)*(1+T(4)*T(5));
g1(37,15)=(-(y(22)*(1+T(4)*T(5))));
g1(37,16)=y(7)*(1+T(4)*T(5));
g1(37,20)=y(7)*y(16)*T(4)*2*y(20)-y(15)*y(22)*T(4)*2*y(20);
g1(37,22)=(-(y(15)*(1+T(4)*T(5))));
g1(38,6)=(-y(19));
g1(38,7)=y(16)*(1+T(4)*T(5));
g1(38,15)=(-1);
g1(38,16)=y(7)*(1+T(4)*T(5));
g1(38,18)=(-1);
g1(38,19)=(-y(6));
g1(38,20)=y(7)*y(16)*T(4)*2*y(20);
g1(38,37)=(-1);
g1(39,6)=(-(y(19)/(y(7)*y(16))));
g1(39,7)=(-((-(y(16)*y(6)*y(19)))/(y(7)*y(16)*y(7)*y(16))));
g1(39,16)=(-((-(y(7)*y(6)*y(19)))/(y(7)*y(16)*y(7)*y(16))));
g1(39,19)=(-(y(6)/(y(7)*y(16))));
g1(39,20)=1;
g1(40,7)=(-((-(y(16)*y(37)))/(y(7)*y(16)*y(7)*y(16))));
g1(40,16)=(-((-(y(7)*y(37)))/(y(7)*y(16)*y(7)*y(16))));
g1(40,37)=(-(1/(y(7)*y(16))));
g1(40,45)=1;
g1(41,13)=1;
g1(41,16)=(-1);
g1(41,17)=(-1);
g1(42,2)=T(25);
g1(42,46)=1/y(46);
g1(43,2)=(-((1-params(19))*params(20)*1/y(2)));
g1(43,5)=params(6)/(params(6)*y(5))-params(19)*params(6)/(params(6)*y(5));
g1(43,8)=(-((1-params(19))*0.*((y(8))-y(8))/((y(8))*(y(8)))/(y(8)/(y(8)))));
g1(43,46)=(-((1-params(19))*0.3*1/y(46)));
g1(44,26)=T(6)-T(6)*params(21);
g1(47,24)=(-(1/y(24)));
g1(47,63)=1;
g1(48,2)=y(8)*params(17)/2*2*(y(2)-1);
g1(48,6)=y(9);
g1(48,8)=(-(1-T(23)));
g1(48,9)=y(6);
g1(48,31)=1;
g1(48,32)=1;
g1(48,33)=1;
g1(49,8)=(-(1/y(8)));
g1(49,47)=1;
g1(50,2)=T(25);
g1(50,48)=1;
g1(51,5)=(-(1/y(5)));
g1(51,49)=1;
g1(52,12)=(-(1/y(12)));
g1(52,50)=1;
g1(53,10)=(-(1/y(10)));
g1(53,51)=1;
g1(54,11)=(-(1/y(11)));
g1(54,52)=1;
g1(55,14)=(-(1/y(14)));
g1(55,53)=1;
g1(56,9)=(-(1/y(9)));
g1(56,54)=1;
g1(57,18)=(-(1/y(18)));
g1(57,55)=1;
g1(58,19)=(-(1/y(19)));
g1(58,56)=1;
g1(59,15)=(-(1/y(15)));
g1(59,57)=1;
g1(60,2)=(-((-((-y(5))/(y(2)*y(2))))/T(21)));
g1(60,3)=(-(1/y(7)/T(21)));
g1(60,5)=(-(T(25)/T(21)));
g1(60,7)=(-((y(7)*params(12)-(y(3)+y(7)*params(12)))/(y(7)*y(7))/T(21)));
g1(60,58)=1;
g1(61,39)=(-(1/y(39)));
g1(61,59)=1;
g1(62,22)=(-(1/y(22)));
g1(62,60)=1;
g1(63,9)=(-((-1)/(y(14)-y(9))));
g1(63,14)=(-(1/(y(14)-y(9))));
g1(63,61)=1;
g1(64,37)=(-(1/y(37)));
g1(64,62)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end