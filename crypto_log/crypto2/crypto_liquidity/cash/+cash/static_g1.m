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
    T = cash.static_g1_tt(T, y, x, params);
end
g1 = zeros(63, 63);
g1(1,10)=(-(params(8)*getPowerDeriv(y(10),1+params(7),1)/(1+params(7))/(T(2)*T(2))));
g1(1,11)=(-((-1)/(T(2)*T(2))));
g1(1,42)=1;
g1(1,44)=1;
g1(2,41)=1;
g1(3,12)=(-(params(15)/2*((y(12))-y(12))/((y(12))*(y(12)))*2*T(3)));
g1(3,29)=1;
g1(4,13)=(-((-T(4))/(y(13)*y(13))));
g1(4,17)=(-(params(9)/2*2*y(17)/y(13)));
g1(4,31)=1;
g1(5,7)=(-(T(6)*T(5)*y(16)));
g1(5,16)=(-(T(5)*y(7)*T(6)));
g1(5,20)=(-(T(5)*y(7)*y(16)*2*y(20)));
g1(5,32)=1;
g1(6,30)=1;
g1(7,1)=1;
g1(7,3)=(-(T(12)*T(10)*T(7)*getPowerDeriv(y(3),params(10),1)));
g1(7,4)=(-(T(11)*getPowerDeriv(y(4),1-params(10)-params(11),1)));
g1(7,6)=(-(T(12)*T(9)*getPowerDeriv(y(6),params(11),1)));
g1(7,26)=(-(T(12)*T(10)*T(8)*(-1)/(y(26)*y(26))));
g1(8,1)=(-(1/params(17)*params(13)));
g1(8,2)=y(2)+y(2)-1-(y(41)*y(2)+y(41)*(y(2)-1));
g1(8,41)=(-(y(2)*(y(2)-1)));
g1(9,8)=1;
g1(9,9)=(-(T(17)*T(14)*1/params(11)*getPowerDeriv(y(9)/params(11),params(11),1)));
g1(9,10)=(-(T(16)*1/(1-params(10)-params(11))*getPowerDeriv(y(10)/(1-params(10)-params(11)),1-params(10)-params(11),1)));
g1(9,13)=(-(T(17)*T(15)*y(26)*1/params(10)*getPowerDeriv(y(13)/params(10),params(10),1)));
g1(9,26)=(-(T(17)*T(13)*T(15)));
g1(10,3)=(-(y(13)*y(6)*y(9)))/(y(13)*y(3)*y(13)*y(3));
g1(10,6)=y(9)/(y(13)*y(3));
g1(10,9)=y(6)/(y(13)*y(3));
g1(10,13)=(-(y(3)*y(6)*y(9)))/(y(13)*y(3)*y(13)*y(3));
g1(11,3)=(-(y(13)*y(10)*y(4)))/(y(13)*y(3)*y(13)*y(3));
g1(11,4)=y(10)/(y(13)*y(3));
g1(11,10)=y(4)/(y(13)*y(3));
g1(11,13)=(-(y(3)*y(10)*y(4)))/(y(13)*y(3)*y(13)*y(3));
g1(12,12)=(-1);
g1(12,13)=1-params(12);
g1(13,6)=(-(y(28)*getPowerDeriv(y(6),params(16),1)));
g1(13,14)=1;
g1(13,28)=(-T(18));
g1(14,34)=1-params(36);
g1(14,36)=(-(T(19)*log(params(35))));
g1(15,36)=1/y(36)-0.95*1/y(36);
g1(16,35)=1;
g1(17,40)=1;
g1(18,45)=0.05000000000000004;
g1(19,11)=1;
g1(19,39)=(-1);
g1(20,43)=1;
g1(21,38)=1;
g1(22,2)=(-(params(6)*y(44)*params(37)))/(y(2)*y(2));
g1(22,11)=T(22)*y(42)*params(38)*getPowerDeriv(y(11),params(29),1);
g1(22,39)=T(21)*getPowerDeriv(y(39),(-params(29)),1);
g1(22,42)=T(20)*T(22);
g1(22,44)=(-(1-params(6)*params(37)/y(2)));
g1(23,37)=1;
g1(24,4)=1;
g1(24,10)=(-(params(8)*getPowerDeriv(y(10),params(7),1)));
g1(25,3)=(-(y(41)/T(23)));
g1(25,7)=(-((T(23)*y(41)*params(12)-y(41)*(y(3)+y(7)*params(12)))/(T(23)*T(23))));
g1(25,13)=(-((-(y(41)*(y(3)+y(7)*params(12))*(-(params(9)*y(17)))/(y(13)*y(13))))/(T(23)*T(23))));
g1(25,17)=(-((-(y(41)*(y(3)+y(7)*params(12))*params(9)/y(13)))/(T(23)*T(23))));
g1(25,41)=(-((y(3)+y(7)*params(12))/T(23)));
g1(26,2)=(-((-(y(41)*y(5)))/(y(2)*y(2))));
g1(26,5)=(-(y(41)/y(2)));
g1(26,41)=(-T(24));
g1(27,7)=1;
g1(27,12)=(-(params(15)*y(12)/(y(12))*((y(12))-y(12))/((y(12))*(y(12)))+T(3)*params(15)*((y(12))-y(12))/((y(12))*(y(12)))));
g1(27,29)=(-1);
g1(28,2)=(-(T(1)*(-T(29))));
g1(28,3)=(-(T(1)*1/y(7)));
g1(28,5)=(-(T(1)*(-T(30))));
g1(28,7)=(-(T(1)*(y(7)*params(12)-(y(3)+y(7)*params(12)))/(y(7)*y(7))));
g1(28,21)=(-(T(25)*y(41)*params(3)));
g1(28,24)=1;
g1(28,41)=(-((1-params(3)+params(3)*y(21))*T(25)));
g1(29,2)=(-(T(1)*(T(29)-(-y(40))/(y(2)*y(2)))));
g1(29,5)=(-(T(1)*T(30)));
g1(29,21)=(-((T(24)-y(40)/y(2))*y(41)*params(3)));
g1(29,40)=(-(T(1)*(-T(30))));
g1(29,41)=(-((1-params(3)+params(3)*y(21))*(T(24)-y(40)/y(2))));
g1(29,46)=1;
g1(30,2)=(-(T(1)*T(29)));
g1(30,5)=(-(T(1)*T(30)));
g1(30,21)=(-((T(24)-y(27))*y(41)*params(3)));
g1(30,25)=1;
g1(30,27)=T(1);
g1(30,41)=(-((1-params(3)+params(3)*y(21))*(T(24)-y(27))));
g1(31,2)=(-((-(T(1)*y(5)))/(y(2)*y(2))));
g1(31,5)=(-(T(1)/y(2)));
g1(31,21)=(-(y(5)*y(41)*params(3)/y(2)));
g1(31,23)=1;
g1(31,41)=(-((1-params(3)+params(3)*y(21))*y(5)/y(2)));
g1(32,20)=(-((-(y(23)*(y(23)*T(5)*2*y(20)-y(25))))/T(31)));
g1(32,22)=1;
g1(32,23)=(-((y(30)+y(23)*T(5)*T(6)-(y(24)+y(20)*y(25))-y(23)*T(5)*T(6))/T(31)));
g1(32,24)=(-(y(23)/T(31)));
g1(32,25)=(-((-(y(23)*(-y(20))))/T(31)));
g1(32,30)=(-((-y(23))/T(31)));
g1(33,21)=1;
g1(33,22)=(-y(30));
g1(33,30)=(-y(22));
g1(34,20)=1;
g1(34,23)=(-((-(params(5)*y(25)))/(params(5)*y(23)*params(5)*y(23))+((-(params(5)*y(25)))/(params(5)*y(23)*params(5)*y(23))*2*y(25)/(params(5)*y(23))+(-(params(5)*2*y(24)))/(params(5)*y(23)*params(5)*y(23)))/(T(26)+T(26))));
g1(34,24)=(-(2/(params(5)*y(23))/(T(26)+T(26))));
g1(34,25)=(-(1/(params(5)*y(23))+2*y(25)/(params(5)*y(23))*1/(params(5)*y(23))/(T(26)+T(26))));
g1(35,2)=(-(y(8)*params(17)/2*2*(y(2)-1)));
g1(35,8)=1-T(27);
g1(35,11)=(-1);
g1(35,12)=(-(1+y(29)));
g1(35,14)=(-1);
g1(35,29)=(-y(12));
g1(35,31)=(-1);
g1(35,32)=(-1);
g1(36,6)=(-y(14))/(y(6)*y(6));
g1(36,9)=(-1);
g1(36,14)=1/y(6);
g1(36,19)=1-y(27);
g1(36,27)=(-y(19));
g1(37,2)=(-(params(3)*(-((-(y(5)*y(18)))/(y(2)*y(2))))));
g1(37,3)=(-(y(13)*params(4)+params(3)*y(16)));
g1(37,5)=(-(params(3)*(-(y(18)/y(2)))));
g1(37,6)=(-(params(3)*(-(y(27)*y(19)))));
g1(37,7)=(-(y(13)*params(12)*params(4)+params(3)*y(16)*params(12)));
g1(37,13)=(-((y(3)+y(7)*params(12))*params(4)));
g1(37,15)=1;
g1(37,16)=(-(params(3)*(y(3)+y(7)*params(12))));
g1(37,18)=(-(params(3)*(-T(24))));
g1(37,19)=(-(params(3)*(-(y(27)*y(6)))));
g1(37,27)=(-(params(3)*(-(y(6)*y(19)))));
g1(38,7)=y(16)*(1+T(5)*T(6));
g1(38,15)=(-(y(22)*(1+T(5)*T(6))));
g1(38,16)=y(7)*(1+T(5)*T(6));
g1(38,20)=y(7)*y(16)*T(5)*2*y(20)-y(15)*y(22)*T(5)*2*y(20);
g1(38,22)=(-(y(15)*(1+T(5)*T(6))));
g1(39,6)=(-y(19));
g1(39,7)=y(16)*(1+T(5)*T(6));
g1(39,15)=(-1);
g1(39,16)=y(7)*(1+T(5)*T(6));
g1(39,18)=(-1);
g1(39,19)=(-y(6));
g1(39,20)=y(7)*y(16)*T(5)*2*y(20);
g1(40,6)=(-(y(19)/(y(7)*y(16))));
g1(40,7)=(-((-(y(16)*y(6)*y(19)))/(y(7)*y(16)*y(7)*y(16))));
g1(40,16)=(-((-(y(7)*y(6)*y(19)))/(y(7)*y(16)*y(7)*y(16))));
g1(40,19)=(-(y(6)/(y(7)*y(16))));
g1(40,20)=1;
g1(41,47)=1;
g1(42,13)=1;
g1(42,16)=(-1);
g1(42,17)=(-1);
g1(43,2)=(-T(30));
g1(43,48)=1/y(48);
g1(44,2)=(-((1-params(19))*params(20)*T(30)));
g1(44,5)=params(6)/(params(6)*y(5))-params(19)*params(6)/(params(6)*y(5));
g1(44,8)=(-((1-params(19))*0.*((y(8))-y(8))/((y(8))*(y(8)))/(y(8)/(y(8)))));
g1(44,48)=(-((1-params(19))*0.3*1/y(48)));
g1(45,26)=T(7)-T(7)*params(21);
g1(48,2)=y(8)*params(17)/2*2*(y(2)-1);
g1(48,6)=y(9);
g1(48,8)=(-(1-T(27)));
g1(48,9)=y(6);
g1(48,31)=1;
g1(48,32)=1;
g1(48,33)=1;
g1(49,8)=(-(1/y(8)));
g1(49,49)=1;
g1(50,2)=(-T(30));
g1(50,50)=1;
g1(51,5)=(-(1/y(5)));
g1(51,51)=1;
g1(52,12)=(-(1/y(12)));
g1(52,52)=1;
g1(53,10)=(-(1/y(10)));
g1(53,53)=1;
g1(54,11)=(-(1/y(11)));
g1(54,54)=1;
g1(55,14)=(-(1/y(14)));
g1(55,55)=1;
g1(56,9)=(-(1/y(9)));
g1(56,56)=1;
g1(57,18)=(-(1/y(18)));
g1(57,57)=1;
g1(58,19)=(-(1/y(19)));
g1(58,58)=1;
g1(59,15)=(-(1/y(15)));
g1(59,59)=1;
g1(60,2)=T(29);
g1(60,3)=(-(1/y(7)));
g1(60,5)=T(30);
g1(60,7)=(-((y(7)*params(12)-(y(3)+y(7)*params(12)))/(y(7)*y(7))));
g1(60,60)=1;
g1(61,39)=(-(1/y(39)));
g1(61,61)=1;
g1(62,22)=(-(1/y(22)));
g1(62,62)=1;
g1(63,9)=1;
g1(63,14)=(-1);
g1(63,63)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
