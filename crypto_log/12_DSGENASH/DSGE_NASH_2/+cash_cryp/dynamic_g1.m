function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = cash_cryp.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(66, 94);
g1(1,16)=(-((-1)/(T(2)*T(2))));
g1(1,31)=(-(params(8)*T(58)/(1+params(7))/(T(2)*T(2))));
g1(1,57)=1;
g1(1,59)=1;
g1(2,56)=1;
g1(2,59)=(-(params(6)*(-y(88))/(y(59)*y(59))));
g1(2,88)=(-(params(6)*1/y(59)));
g1(3,32)=(-(params(15)/2*T(62)*2*T(35)));
g1(3,47)=1;
g1(4,33)=(-((-T(5))/(y(33)*y(33))));
g1(4,36)=(-(params(9)/2*2*y(36)/y(33)));
g1(4,49)=1;
g1(5,29)=(-(T(7)*T(6)*y(35)));
g1(5,35)=(-(T(6)*y(29)*T(7)));
g1(5,38)=(-(T(6)*y(29)*y(35)*2*y(38)));
g1(5,50)=1;
g1(6,48)=1;
g1(7,24)=1;
g1(7,25)=(-(T(13)*T(42)));
g1(7,26)=(-(T(12)*T(45)));
g1(7,28)=(-(T(13)*T(10)*T(49)));
g1(7,44)=(-(T(13)*T(11)*T(9)*(-1)/(y(44)*y(44))));
g1(8,15)=(-((y(82)-1)*y(82)*(-(y(56)*y(81)))/(y(15)*y(15))));
g1(8,81)=(-((y(82)-1)*y(82)*y(56)/y(15)));
g1(8,17)=y(17)+y(17)-1;
g1(8,82)=(-(T(14)*y(82)+T(14)*(y(82)-1)));
g1(8,24)=(-(1/params(17)*params(13)));
g1(8,56)=(-((y(82)-1)*y(82)*y(81)/y(15)));
g1(9,15)=1;
g1(9,30)=(-(T(19)*T(57)));
g1(9,31)=(-(T(18)*T(59)));
g1(9,5)=(-(T(19)*T(17)*T(64)));
g1(9,44)=(-(T(19)*T(15)*T(17)));
g1(10,25)=(-(y(5)*y(28)*y(30)))/T(43);
g1(10,28)=y(30)/(y(25)*y(5));
g1(10,30)=y(28)/(y(25)*y(5));
g1(10,5)=(-(y(25)*y(28)*y(30)))/T(43);
g1(11,25)=(-(y(5)*y(31)*y(26)))/T(43);
g1(11,26)=y(31)/(y(25)*y(5));
g1(11,31)=y(26)/(y(25)*y(5));
g1(11,5)=(-(y(25)*y(31)*y(26)))/T(43);
g1(12,32)=(-1);
g1(12,5)=(-params(12));
g1(12,33)=1;
g1(13,28)=(-(y(46)*T(50)));
g1(13,34)=1;
g1(13,46)=(-T(20));
g1(14,52)=1-params(36);
g1(14,54)=(-(T(21)*log(params(35))));
g1(15,12)=(-(0.95*1/y(12)));
g1(15,54)=1/y(54);
g1(15,94)=(-1);
g1(16,53)=1;
g1(17,11)=(-((-y(52))/(y(11)*y(11))));
g1(17,52)=(-(1/y(11)));
g1(17,55)=1;
g1(18,14)=(-0.95);
g1(18,60)=1;
g1(18,93)=(-0.03);
g1(19,16)=1;
g1(19,21)=(-1);
g1(20,58)=1;
g1(21,19)=1;
g1(22,82)=(-(params(6)*y(88)*params(37)))/(y(82)*y(82));
g1(22,57)=1;
g1(22,59)=(-1);
g1(22,88)=params(6)*params(37)/y(82);
g1(23,82)=(-(y(55)*params(6)*y(88)))/(y(82)*y(82));
g1(23,20)=params(34)*getPowerDeriv(y(20),(-params(31)),1);
g1(23,55)=params(6)*y(88)/y(82);
g1(23,59)=(-1);
g1(23,88)=params(6)*y(55)/y(82);
g1(24,26)=1;
g1(24,31)=(-(params(8)*getPowerDeriv(y(31),params(7),1)));
g1(25,84)=(-(y(56)/T(22)));
g1(25,29)=(-((-(y(56)*(y(84)+params(12)*y(86))))/(T(22)*T(22))));
g1(25,86)=(-(y(56)*params(12)/T(22)));
g1(25,33)=(-((-(y(56)*(y(84)+params(12)*y(86))*T(65)))/(T(22)*T(22))));
g1(25,36)=(-((-(y(56)*(y(84)+params(12)*y(86))*T(66)))/(T(22)*T(22))));
g1(25,56)=(-((y(84)+params(12)*y(86))/T(22)));
g1(26,82)=(-((-(y(56)*y(27)))/(y(82)*y(82))));
g1(26,27)=(-(y(56)/y(82)));
g1(26,56)=(-T(23));
g1(27,29)=1;
g1(27,32)=(-(params(15)*y(32)/(steady_state(18))*T(62)+T(35)*params(15)*T(62)));
g1(27,47)=(-1);
g1(28,82)=(-(T(4)*(-T(37))));
g1(28,84)=(-(T(4)*T(44)));
g1(28,27)=(-(T(4)*T(47)));
g1(28,29)=(-(T(4)*T(53)));
g1(28,86)=(-(T(4)*T(55)));
g1(28,87)=(-(T(24)*y(56)*params(3)));
g1(28,42)=1;
g1(28,56)=(-(T(3)*T(24)));
g1(29,82)=(-(T(4)*T(38)));
g1(29,27)=(-(T(4)*T(46)));
g1(29,87)=(-(T(25)*y(56)*params(3)));
g1(29,55)=(-(T(4)*T(47)));
g1(29,56)=(-(T(3)*T(25)));
g1(29,61)=1;
g1(30,82)=(-(T(4)*T(37)));
g1(30,27)=(-(T(4)*T(46)));
g1(30,28)=(-(T(4)*T(51)));
g1(30,85)=(-(T(4)*(-(y(45)*1/y(28)))));
g1(30,87)=(-(T(26)*y(56)*params(3)));
g1(30,43)=1;
g1(30,45)=(-(T(4)*(-(y(85)/y(28)))));
g1(30,56)=(-(T(3)*T(26)));
g1(31,82)=(-((-(T(4)*y(27)))/(y(82)*y(82))));
g1(31,27)=(-(T(4)/y(82)));
g1(31,87)=(-(y(27)*y(56)*params(3)/y(82)));
g1(31,41)=1;
g1(31,56)=(-(T(3)*y(27)/y(82)));
g1(32,38)=(-(T(67)/T(68)));
g1(32,40)=1;
g1(32,41)=(-((T(27)-y(41)*T(6)*T(7))/T(68)));
g1(32,42)=(-(y(41)/T(68)));
g1(32,43)=(-((-(y(41)*(-y(38))))/T(68)));
g1(32,48)=(-((-y(41))/T(68)));
g1(32,61)=(-((-(y(41)*(-y(62))))/T(68)));
g1(32,62)=(-((-(y(41)*(-y(61))))/T(68)));
g1(33,39)=1;
g1(33,40)=(-y(48));
g1(33,48)=(-y(40));
g1(34,38)=1;
g1(34,41)=(-(T(69)+T(71)/(T(28)+T(28))));
g1(34,42)=(-T(73));
g1(34,43)=(-(T(74)+T(75)));
g1(34,61)=(-T(76));
g1(34,62)=(-T(77));
g1(35,15)=1-T(29);
g1(35,16)=(-1);
g1(35,17)=(-(y(15)*T(36)));
g1(35,32)=(-(1+y(47)));
g1(35,34)=(-1);
g1(35,47)=(-y(32));
g1(35,49)=(-1);
g1(35,50)=(-1);
g1(36,2)=(-y(9));
g1(36,22)=1;
g1(36,28)=(-y(34))/(y(28)*y(28));
g1(36,30)=(-1);
g1(36,34)=1/y(28);
g1(36,9)=(-y(2));
g1(37,17)=(-(params(3)*((-((-(y(7)*y(3)))/(y(17)*y(17))))-(-(y(1)*y(13)))/(y(17)*y(17)))));
g1(37,18)=1;
g1(37,1)=(-(params(3)*(-(y(13)/y(17)))));
g1(37,2)=(-(params(3)*(-(y(28)*y(9)))));
g1(37,25)=(-(params(3)*y(6)+y(5)*params(4)));
g1(37,3)=(-(params(3)*(-(y(7)/y(17)))));
g1(37,28)=(-(params(3)*(-(y(9)*y(2)))));
g1(37,29)=(-(params(3)*params(12)*y(6)+y(5)*params(12)*params(4)));
g1(37,5)=(-((y(25)+y(29)*params(12))*params(4)));
g1(37,6)=(-(params(3)*(y(25)+y(29)*params(12))));
g1(37,7)=(-(params(3)*(-(y(3)/y(17)))));
g1(37,9)=(-(params(3)*(-(y(28)*y(2)))));
g1(37,13)=(-(params(3)*(-(y(1)/y(17)))));
g1(38,18)=(-(y(40)*(1+T(6)*T(7))));
g1(38,29)=y(35)*(1+T(6)*T(7));
g1(38,35)=y(29)*(1+T(6)*T(7));
g1(38,38)=y(29)*y(35)*T(6)*2*y(38)-y(18)*y(40)*T(6)*2*y(38);
g1(38,40)=(-(y(18)*(1+T(6)*T(7))));
g1(39,18)=(-1);
g1(39,20)=(-1);
g1(39,22)=(-y(28));
g1(39,28)=(-y(22));
g1(39,29)=y(35)*(1+T(6)*T(7));
g1(39,35)=y(29)*(1+T(6)*T(7));
g1(39,37)=(-1);
g1(39,38)=y(29)*y(35)*T(6)*2*y(38);
g1(40,22)=(-(y(28)/(y(29)*y(35))));
g1(40,28)=(-(y(22)/(y(29)*y(35))));
g1(40,29)=(-((-(y(35)*y(28)*y(22)))/T(54)));
g1(40,35)=(-((-(y(29)*y(28)*y(22)))/T(54)));
g1(40,38)=1;
g1(41,20)=(-(1/(y(29)*y(35))));
g1(41,29)=(-((-(y(35)*y(20)))/T(54)));
g1(41,35)=(-((-(y(29)*y(20)))/T(54)));
g1(41,62)=1;
g1(42,33)=1;
g1(42,35)=(-1);
g1(42,36)=(-1);
g1(43,17)=(-(1/y(17)));
g1(43,4)=(-(T(48)/T(31)));
g1(43,28)=(-(T(52)/T(31)));
g1(43,63)=1/y(63);
g1(44,15)=(-((1-params(19))*0.*1/(steady_state(1))/T(32)));
g1(44,17)=(-((1-params(19))*params(20)*1/y(17)));
g1(44,3)=(-(params(19)*params(6)/(params(6)*y(3))));
g1(44,27)=params(6)/(params(6)*y(27));
g1(44,63)=(-((1-params(19))*params(49)*1/y(63)));
g1(44,89)=(-1);
g1(45,8)=(-(params(21)*1/y(8)));
g1(45,44)=T(8);
g1(45,90)=(-1);
g1(46,10)=(-params(23));
g1(46,46)=1;
g1(46,92)=(-1);
g1(47,9)=(-params(22));
g1(47,45)=1;
g1(47,91)=(-1);
g1(48,15)=(-(1-T(29)));
g1(48,17)=y(15)*T(36);
g1(48,28)=y(30);
g1(48,30)=y(28);
g1(48,49)=1;
g1(48,50)=1;
g1(48,51)=1;
g1(49,15)=(-(1/y(15)));
g1(49,65)=1;
g1(50,17)=(-(1/y(17)));
g1(50,66)=1;
g1(51,27)=(-(1/y(27)));
g1(51,67)=1;
g1(52,32)=(-(1/y(32)));
g1(52,68)=1;
g1(53,31)=(-(1/y(31)));
g1(53,69)=1;
g1(54,16)=(-(1/y(16)));
g1(54,70)=1;
g1(55,34)=(-(1/y(34)));
g1(55,71)=1;
g1(56,30)=(-(1/y(30)));
g1(56,72)=1;
g1(57,37)=(-(1/y(37)));
g1(57,73)=1;
g1(58,22)=(-(1/y(22)));
g1(58,74)=1;
g1(59,18)=(-(1/y(18)));
g1(59,75)=1;
g1(60,82)=T(37);
g1(60,84)=(-T(44));
g1(60,27)=T(46);
g1(60,29)=(-T(53));
g1(60,86)=(-T(55));
g1(60,76)=1;
g1(61,21)=(-(1/y(21)));
g1(61,77)=1;
g1(62,40)=(-(1/y(40)));
g1(62,78)=1;
g1(63,30)=1;
g1(63,34)=(-1);
g1(63,79)=1;
g1(64,20)=(-(1/y(20)));
g1(64,80)=1;
g1(65,16)=(-(1/T(33)));
g1(65,20)=T(39);
g1(65,31)=T(61);
g1(65,64)=1;
g1(66,16)=(-(1/T(33)));
g1(66,20)=T(39);
g1(66,23)=1;
g1(66,83)=(-params(6));
g1(66,31)=T(61);

end
