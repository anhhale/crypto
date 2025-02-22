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
    T = cdbc_fix.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(65, 92);
g1(1,24)=(-(params(8)*getPowerDeriv(y(24),1+params(7),1)/(1+params(7))/(T(1)*T(1))));
g1(1,25)=(-((-1)/(T(1)*T(1))));
g1(1,56)=1;
g1(1,58)=1;
g1(2,55)=1;
g1(2,58)=(-(params(6)*(-y(86))/(y(58)*y(58))));
g1(2,86)=(-(params(6)*1/y(58)));
g1(3,26)=(-(params(15)/2*1/(steady_state(12))*2*T(30)));
g1(3,43)=1;
g1(4,27)=(-((-T(3))/(y(27)*y(27))));
g1(4,31)=(-(params(9)/2*2*y(31)/y(27)));
g1(4,45)=1;
g1(5,21)=(-(T(5)*T(4)*y(30)));
g1(5,30)=(-(T(4)*y(21)*T(5)));
g1(5,34)=(-(T(4)*y(21)*y(30)*2*y(34)));
g1(5,46)=1;
g1(6,44)=1;
g1(7,15)=1;
g1(7,17)=(-(T(10)*T(8)*1/y(40)*getPowerDeriv(y(17),params(10),1)));
g1(7,18)=(-(T(9)*getPowerDeriv(y(18),1-params(10)-params(11),1)));
g1(7,20)=(-(T(10)*T(7)*getPowerDeriv(y(20),params(11),1)));
g1(7,40)=(-(T(10)*T(8)*T(6)*(-1)/(y(40)*y(40))));
g1(8,15)=(-(1/params(17)*params(13)));
g1(8,16)=y(16)+y(16)-1;
g1(8,80)=(-(y(55)*y(84)/y(22)*y(80)+y(55)*y(84)/y(22)*(y(80)-1)));
g1(8,22)=(-((y(80)-1)*y(80)*(-(y(55)*y(84)))/(y(22)*y(22))));
g1(8,84)=(-((y(80)-1)*y(80)*y(55)/y(22)));
g1(8,55)=(-((y(80)-1)*y(80)*y(84)/y(22)));
g1(9,22)=1;
g1(9,23)=(-(T(15)*T(12)*1/params(11)*getPowerDeriv(y(23)/params(11),params(11),1)));
g1(9,24)=(-(T(14)*1/(1-params(10)-params(11))*getPowerDeriv(y(24)/(1-params(10)-params(11)),1-params(10)-params(11),1)));
g1(9,3)=(-(T(15)*T(13)*y(40)*1/params(10)*getPowerDeriv(y(3)/params(10),params(10),1)));
g1(9,40)=(-(T(15)*T(11)*T(13)));
g1(10,17)=(-(y(3)*y(20)*y(23)))/(y(17)*y(3)*y(17)*y(3));
g1(10,20)=y(23)/(y(17)*y(3));
g1(10,23)=y(20)/(y(17)*y(3));
g1(10,3)=(-(y(17)*y(20)*y(23)))/(y(17)*y(3)*y(17)*y(3));
g1(11,17)=(-(y(3)*y(24)*y(18)))/(y(17)*y(3)*y(17)*y(3));
g1(11,18)=y(24)/(y(17)*y(3));
g1(11,24)=y(18)/(y(17)*y(3));
g1(11,3)=(-(y(17)*y(24)*y(18)))/(y(17)*y(3)*y(17)*y(3));
g1(12,26)=(-1);
g1(12,3)=(-params(12));
g1(12,27)=1;
g1(13,20)=(-(y(42)*getPowerDeriv(y(20),params(16),1)));
g1(13,28)=1;
g1(13,42)=(-T(16));
g1(14,48)=1-params(36);
g1(14,50)=(-(T(17)*log(params(35))));
g1(15,11)=(-(0.95*1/y(11)));
g1(15,50)=1/y(50);
g1(15,92)=(-1);
g1(16,49)=1;
g1(17,10)=(-((-y(48))/(y(10)*y(10))));
g1(17,48)=(-(1/y(10)));
g1(17,54)=1;
g1(18,14)=(-0.95);
g1(18,59)=1;
g1(18,91)=(-0.03);
g1(19,25)=1;
g1(19,52)=(-(params(39)*getPowerDeriv(y(52),1-params(29),1)*T(33)));
g1(19,53)=(-(T(33)*params(38)*getPowerDeriv(y(53),1-params(29),1)));
g1(20,52)=(-((-y(53))/((y(53)+y(52))*(y(53)+y(52)))));
g1(20,53)=(-(y(52)/((y(53)+y(52))*(y(53)+y(52)))));
g1(20,57)=1;
g1(21,80)=(-(params(6)*y(86)))/(y(80)*y(80));
g1(21,25)=T(20)*y(56)*params(39)*T(31);
g1(21,52)=y(56)*params(39)*T(19)*getPowerDeriv(y(52),(-params(29)),1)-params(41)*(-(2*y(53)*(params(40)-y(57))*2*(y(53)+y(52))))/(T(21)*T(21));
g1(21,53)=(-(params(41)*(T(21)*2*(params(40)-y(57))-2*y(53)*(params(40)-y(57))*2*(y(53)+y(52)))/(T(21)*T(21))));
g1(21,56)=params(39)*T(19)*T(20);
g1(21,57)=(-(params(41)*(-(2*y(53)))/T(21)));
g1(21,58)=(-1);
g1(21,86)=params(6)/y(80);
g1(22,80)=(-(params(6)*y(86)*params(37)))/(y(80)*y(80));
g1(22,25)=T(22)*y(56)*params(38)*T(31);
g1(22,52)=(-T(34));
g1(22,53)=y(56)*params(38)*T(19)*getPowerDeriv(y(53),(-params(29)),1)-T(34);
g1(22,56)=params(38)*T(19)*T(22);
g1(22,57)=(-(params(41)*(T(23)*(-2)+2*(params(40)-y(57))*1/(y(53)+y(52)))));
g1(22,58)=(-1);
g1(22,86)=params(6)*params(37)/y(80);
g1(23,80)=(-(y(54)*params(6)*y(86)))/(y(80)*y(80));
g1(23,51)=params(34)*getPowerDeriv(y(51),(-params(31)),1);
g1(23,54)=params(6)*y(86)/y(80);
g1(23,58)=(-1);
g1(23,86)=params(6)*y(54)/y(80);
g1(24,18)=1;
g1(24,24)=(-(params(8)*getPowerDeriv(y(24),params(7),1)));
g1(25,81)=(-(y(55)/T(24)));
g1(25,21)=(-((-(y(55)*(y(81)+params(12)*y(83))))/(T(24)*T(24))));
g1(25,83)=(-(y(55)*params(12)/T(24)));
g1(25,27)=(-((-(y(55)*(y(81)+params(12)*y(83))*(-(params(9)*y(31)))/(y(27)*y(27))))/(T(24)*T(24))));
g1(25,31)=(-((-(y(55)*(y(81)+params(12)*y(83))*params(9)/y(27)))/(T(24)*T(24))));
g1(25,55)=(-((y(81)+params(12)*y(83))/T(24)));
g1(26,80)=(-((-(y(55)*y(19)))/(y(80)*y(80))));
g1(26,19)=(-(y(55)/y(80)));
g1(26,55)=(-T(25));
g1(27,21)=1;
g1(27,26)=(-(params(15)*y(26)/(steady_state(12))*1/(steady_state(12))+T(30)*params(15)*1/(steady_state(12))));
g1(27,43)=(-1);
g1(28,80)=(-(T(2)*(-((-y(19))/(y(80)*y(80))))));
g1(28,81)=(-(T(2)*1/y(21)));
g1(28,19)=(-(T(2)*(-(1/y(80)))));
g1(28,21)=(-(T(2)*(-(y(81)+params(12)*y(83)))/(y(21)*y(21))));
g1(28,83)=(-(T(2)*params(12)/y(21)));
g1(28,85)=(-(T(26)*y(55)*params(3)));
g1(28,38)=1;
g1(28,55)=(-((1-params(3)+params(3)*y(85))*T(26)));
g1(29,80)=(-(T(2)*((-y(19))/(y(80)*y(80))-(-y(54))/(y(80)*y(80)))));
g1(29,19)=(-(T(2)*1/y(80)));
g1(29,85)=(-((T(25)-y(54)/y(80))*y(55)*params(3)));
g1(29,54)=(-(T(2)*(-(1/y(80)))));
g1(29,55)=(-((1-params(3)+params(3)*y(85))*(T(25)-y(54)/y(80))));
g1(29,60)=1;
g1(30,80)=(-(T(2)*(-y(19))/(y(80)*y(80))));
g1(30,19)=(-(T(2)*1/y(80)));
g1(30,20)=(-(T(2)*(-(y(41)*(-y(82))/(y(20)*y(20))))));
g1(30,82)=(-(T(2)*(-(y(41)*1/y(20)))));
g1(30,85)=(-((T(25)-y(41)*y(82)/y(20))*y(55)*params(3)));
g1(30,39)=1;
g1(30,41)=(-(T(2)*(-(y(82)/y(20)))));
g1(30,55)=(-((1-params(3)+params(3)*y(85))*(T(25)-y(41)*y(82)/y(20))));
g1(31,80)=(-((-(T(2)*y(19)))/(y(80)*y(80))));
g1(31,19)=(-(T(2)/y(80)));
g1(31,85)=(-(y(19)*y(55)*params(3)/y(80)));
g1(31,37)=1;
g1(31,55)=(-((1-params(3)+params(3)*y(85))*y(19)/y(80)));
g1(32,34)=(-((-(y(37)*(y(37)*T(4)*2*y(34)-y(39))))/T(32)));
g1(32,36)=1;
g1(32,37)=(-((y(44)+y(37)*T(4)*T(5)-(y(38)+y(34)*y(39)+y(60)*y(61))-y(37)*T(4)*T(5))/T(32)));
g1(32,38)=(-(y(37)/T(32)));
g1(32,39)=(-((-(y(37)*(-y(34))))/T(32)));
g1(32,44)=(-((-y(37))/T(32)));
g1(32,60)=(-((-(y(37)*(-y(61))))/T(32)));
g1(32,61)=(-((-(y(37)*(-y(60))))/T(32)));
g1(33,35)=1;
g1(33,36)=(-y(44));
g1(33,44)=(-y(36));
g1(34,34)=1;
g1(34,37)=(-((-(params(5)*y(39)))/(params(5)*y(37)*params(5)*y(37))+((-(params(5)*y(39)))/(params(5)*y(37)*params(5)*y(37))*2*y(39)/(params(5)*y(37))+y(61)*(-(params(5)*2*y(60)))/(params(5)*y(37)*params(5)*y(37))+(-(params(5)*2*y(38)))/(params(5)*y(37)*params(5)*y(37)))/(T(27)+T(27))));
g1(34,38)=(-(2/(params(5)*y(37))/(T(27)+T(27))));
g1(34,39)=(-(1/(params(5)*y(37))+2*y(39)/(params(5)*y(37))*1/(params(5)*y(37))/(T(27)+T(27))));
g1(34,60)=(-(y(61)*2/(params(5)*y(37))/(T(27)+T(27))));
g1(34,61)=(-(2*y(60)/(params(5)*y(37))/(T(27)+T(27))));
g1(35,16)=(-(y(22)*params(17)/2*2*(y(16)-1)));
g1(35,22)=1-T(28);
g1(35,25)=(-1);
g1(35,26)=(-(1+y(43)));
g1(35,28)=(-1);
g1(35,43)=(-y(26));
g1(35,45)=(-1);
g1(35,46)=(-1);
g1(36,20)=(-y(28))/(y(20)*y(20));
g1(36,23)=(-1);
g1(36,28)=1/y(20);
g1(36,6)=(-y(8));
g1(36,33)=1;
g1(36,8)=(-y(6));
g1(37,16)=(-(params(3)*((-((-(y(5)*y(1)))/(y(16)*y(16))))-(-(y(12)*y(13)))/(y(16)*y(16)))));
g1(37,17)=(-(params(3)*y(4)+y(3)*params(4)));
g1(37,1)=(-(params(3)*(-(y(5)/y(16)))));
g1(37,20)=(-(params(3)*(-(y(8)*y(6)))));
g1(37,21)=(-(params(3)*params(12)*y(4)+y(3)*params(12)*params(4)));
g1(37,3)=(-((y(17)+y(21)*params(12))*params(4)));
g1(37,29)=1;
g1(37,4)=(-(params(3)*(y(17)+y(21)*params(12))));
g1(37,5)=(-(params(3)*(-(y(1)/y(16)))));
g1(37,6)=(-(params(3)*(-(y(20)*y(8)))));
g1(37,8)=(-(params(3)*(-(y(20)*y(6)))));
g1(37,12)=(-(params(3)*(-(y(13)/y(16)))));
g1(37,13)=(-(params(3)*(-(y(12)/y(16)))));
g1(38,21)=y(30)*(1+T(4)*T(5));
g1(38,29)=(-(y(36)*(1+T(4)*T(5))));
g1(38,30)=y(21)*(1+T(4)*T(5));
g1(38,34)=y(21)*y(30)*T(4)*2*y(34)-y(29)*y(36)*T(4)*2*y(34);
g1(38,36)=(-(y(29)*(1+T(4)*T(5))));
g1(39,20)=(-y(33));
g1(39,21)=y(30)*(1+T(4)*T(5));
g1(39,29)=(-1);
g1(39,30)=y(21)*(1+T(4)*T(5));
g1(39,32)=(-1);
g1(39,33)=(-y(20));
g1(39,34)=y(21)*y(30)*T(4)*2*y(34);
g1(39,51)=(-1);
g1(40,20)=(-(y(33)/(y(21)*y(30))));
g1(40,21)=(-((-(y(30)*y(20)*y(33)))/(y(21)*y(30)*y(21)*y(30))));
g1(40,30)=(-((-(y(21)*y(20)*y(33)))/(y(21)*y(30)*y(21)*y(30))));
g1(40,33)=(-(y(20)/(y(21)*y(30))));
g1(40,34)=1;
g1(41,21)=(-((-(y(30)*y(51)))/(y(21)*y(30)*y(21)*y(30))));
g1(41,30)=(-((-(y(21)*y(51)))/(y(21)*y(30)*y(21)*y(30))));
g1(41,51)=(-(1/(y(21)*y(30))));
g1(41,61)=1;
g1(42,27)=1;
g1(42,30)=(-1);
g1(42,31)=(-1);
g1(43,16)=(-(1/y(16)));
g1(43,2)=(-((-y(20))/(y(2)*y(2))/(y(20)/y(2))));
g1(43,20)=(-(1/y(2)/(y(20)/y(2))));
g1(43,62)=1/y(62);
g1(44,16)=(-((1-params(19))*params(20)*1/y(16)));
g1(44,1)=(-(params(19)*params(6)/(params(6)*y(1))));
g1(44,19)=params(6)/(params(6)*y(19));
g1(44,22)=(-((1-params(19))*0.*1/(steady_state(8))/(y(22)/(steady_state(8)))));
g1(44,62)=(-((1-params(19))*0.3*1/y(62)));
g1(44,87)=(-1);
g1(45,7)=(-(params(21)*1/y(7)));
g1(45,40)=1/y(40);
g1(45,88)=(-1);
g1(46,9)=(-params(23));
g1(46,42)=1;
g1(46,90)=(-1);
g1(47,8)=(-params(22));
g1(47,41)=1;
g1(47,89)=(-1);
g1(48,16)=y(22)*params(17)/2*2*(y(16)-1);
g1(48,20)=y(23);
g1(48,22)=(-(1-T(28)));
g1(48,23)=y(20);
g1(48,45)=1;
g1(48,46)=1;
g1(48,47)=1;
g1(49,22)=(-(1/y(22)));
g1(49,63)=1;
g1(50,16)=(-(1/y(16)));
g1(50,64)=1;
g1(51,19)=(-(1/y(19)));
g1(51,65)=1;
g1(52,26)=(-(1/y(26)));
g1(52,66)=1;
g1(53,24)=(-(1/y(24)));
g1(53,67)=1;
g1(54,25)=(-(1/y(25)));
g1(54,68)=1;
g1(55,28)=(-(1/y(28)));
g1(55,69)=1;
g1(56,23)=(-(1/y(23)));
g1(56,70)=1;
g1(57,32)=(-(1/y(32)));
g1(57,71)=1;
g1(58,33)=(-(1/y(33)));
g1(58,72)=1;
g1(59,29)=(-(1/y(29)));
g1(59,73)=1;
g1(60,80)=(-((-((-y(19))/(y(80)*y(80))))/T(26)));
g1(60,81)=(-(1/y(21)/T(26)));
g1(60,19)=(-((-(1/y(80)))/T(26)));
g1(60,21)=(-((-(y(81)+params(12)*y(83)))/(y(21)*y(21))/T(26)));
g1(60,83)=(-(params(12)/y(21)/T(26)));
g1(60,74)=1;
g1(61,52)=(-(1/y(52)));
g1(61,75)=1;
g1(62,53)=(-(1/y(53)));
g1(62,76)=1;
g1(63,36)=(-(1/y(36)));
g1(63,77)=1;
g1(64,23)=1;
g1(64,28)=(-1);
g1(64,78)=1;
g1(65,51)=(-(1/y(51)));
g1(65,79)=1;

end
