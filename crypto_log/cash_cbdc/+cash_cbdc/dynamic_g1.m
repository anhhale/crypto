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
    T = cash_cbdc.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(64, 89);
g1(1,23)=(-((-1)/(y(23)*y(23))));
g1(1,54)=1;
g1(1,56)=1;
g1(2,53)=1;
g1(2,56)=(-(params(6)*(-y(83))/(y(56)*y(56))));
g1(2,83)=(-(params(6)*1/y(56)));
g1(3,24)=(-(params(15)/2*1/(steady_state(12))*2*T(29)));
g1(3,41)=1;
g1(4,25)=(-((-T(2))/(y(25)*y(25))));
g1(4,29)=(-(params(9)/2*2*y(29)/y(25)));
g1(4,43)=1;
g1(5,19)=(-(T(4)*T(3)*y(28)));
g1(5,28)=(-(T(3)*y(19)*T(4)));
g1(5,32)=(-(T(3)*y(19)*y(28)*2*y(32)));
g1(5,44)=1;
g1(6,42)=1;
g1(7,13)=1;
g1(7,15)=(-(T(9)*T(7)*1/y(38)*getPowerDeriv(y(15),params(10),1)));
g1(7,16)=(-(T(8)*getPowerDeriv(y(16),1-params(10)-params(11),1)));
g1(7,18)=(-(T(9)*T(6)*getPowerDeriv(y(18),params(11),1)));
g1(7,38)=(-(T(9)*T(7)*T(5)*(-1)/(y(38)*y(38))));
g1(8,13)=(-(1/params(17)*params(13)));
g1(8,14)=y(14)+y(14)-1;
g1(8,77)=(-(y(53)*y(81)/y(20)*y(77)+y(53)*y(81)/y(20)*(y(77)-1)));
g1(8,20)=(-((y(77)-1)*y(77)*(-(y(53)*y(81)))/(y(20)*y(20))));
g1(8,81)=(-((y(77)-1)*y(77)*y(53)/y(20)));
g1(8,53)=(-((y(77)-1)*y(77)*y(81)/y(20)));
g1(9,20)=1;
g1(9,21)=(-(T(14)*T(11)*1/params(11)*getPowerDeriv(y(21)/params(11),params(11),1)));
g1(9,22)=(-(T(13)*1/(1-params(10)-params(11))*getPowerDeriv(y(22)/(1-params(10)-params(11)),1-params(10)-params(11),1)));
g1(9,3)=(-(T(14)*T(12)*y(38)*1/params(10)*getPowerDeriv(y(3)/params(10),params(10),1)));
g1(9,38)=(-(T(14)*T(10)*T(12)));
g1(10,15)=(-(y(3)*y(18)*y(21)))/(y(15)*y(3)*y(15)*y(3));
g1(10,18)=y(21)/(y(15)*y(3));
g1(10,21)=y(18)/(y(15)*y(3));
g1(10,3)=(-(y(15)*y(18)*y(21)))/(y(15)*y(3)*y(15)*y(3));
g1(11,15)=(-(y(3)*y(16)*y(22)))/(y(15)*y(3)*y(15)*y(3));
g1(11,16)=y(22)/(y(15)*y(3));
g1(11,22)=y(16)/(y(15)*y(3));
g1(11,3)=(-(y(15)*y(16)*y(22)))/(y(15)*y(3)*y(15)*y(3));
g1(12,24)=(-1);
g1(12,3)=(-params(12));
g1(12,25)=1;
g1(13,18)=(-(y(40)*getPowerDeriv(y(18),params(16),1)));
g1(13,26)=1;
g1(13,40)=(-T(15));
g1(14,46)=1-params(36);
g1(14,48)=(-(T(16)*log(params(35))));
g1(15,11)=(-(0.95*1/y(11)));
g1(15,48)=1/y(48);
g1(15,89)=(-1);
g1(16,47)=1;
g1(17,10)=(-((-y(46))/(y(10)*y(10))));
g1(17,46)=(-(1/y(10)));
g1(17,52)=1;
g1(18,12)=(-0.95);
g1(18,57)=1;
g1(18,88)=(-0.03);
g1(19,23)=1;
g1(19,50)=(-(params(39)*getPowerDeriv(y(50),1-params(29),1)*T(32)));
g1(19,51)=(-(T(32)*params(38)*getPowerDeriv(y(51),1-params(29),1)));
g1(20,50)=(-((-y(51))/((y(51)+y(50))*(y(51)+y(50)))));
g1(20,51)=(-(y(50)/((y(51)+y(50))*(y(51)+y(50)))));
g1(20,55)=1;
g1(21,77)=(-(params(6)*y(83)))/(y(77)*y(77));
g1(21,23)=T(19)*y(54)*params(39)*T(30);
g1(21,50)=y(54)*params(39)*T(18)*getPowerDeriv(y(50),(-params(29)),1)-params(41)*(-(2*y(51)*(params(40)-y(55))*2*(y(51)+y(50))))/(T(20)*T(20));
g1(21,51)=(-(params(41)*(T(20)*2*(params(40)-y(55))-2*y(51)*(params(40)-y(55))*2*(y(51)+y(50)))/(T(20)*T(20))));
g1(21,54)=params(39)*T(18)*T(19);
g1(21,55)=(-(params(41)*(-(2*y(51)))/T(20)));
g1(21,56)=(-1);
g1(21,83)=params(6)/y(77);
g1(22,77)=(-(params(6)*y(83)*params(37)))/(y(77)*y(77));
g1(22,23)=T(21)*y(54)*params(38)*T(30);
g1(22,50)=(-T(33));
g1(22,51)=y(54)*params(38)*T(18)*getPowerDeriv(y(51),(-params(29)),1)-T(33);
g1(22,54)=params(38)*T(18)*T(21);
g1(22,55)=(-(params(41)*(T(22)*(-2)+2*(params(40)-y(55))*1/(y(51)+y(50)))));
g1(22,56)=(-1);
g1(22,83)=params(6)*params(37)/y(77);
g1(23,49)=1;
g1(24,16)=y(56);
g1(24,22)=(-(params(8)*getPowerDeriv(y(22),params(7),1)));
g1(24,56)=y(16);
g1(25,78)=(-(y(53)/T(23)));
g1(25,19)=(-((-(y(53)*(y(78)+params(12)*y(80))))/(T(23)*T(23))));
g1(25,80)=(-(y(53)*params(12)/T(23)));
g1(25,25)=(-((-(y(53)*(y(78)+params(12)*y(80))*(-(params(9)*y(29)))/(y(25)*y(25))))/(T(23)*T(23))));
g1(25,29)=(-((-(y(53)*(y(78)+params(12)*y(80))*params(9)/y(25)))/(T(23)*T(23))));
g1(25,53)=(-((y(78)+params(12)*y(80))/T(23)));
g1(26,77)=(-((-(y(53)*y(17)))/(y(77)*y(77))));
g1(26,17)=(-(y(53)/y(77)));
g1(26,53)=(-T(24));
g1(27,19)=1;
g1(27,24)=(-(params(15)*y(24)/(steady_state(12))*1/(steady_state(12))+T(29)*params(15)*1/(steady_state(12))));
g1(27,41)=(-1);
g1(28,77)=(-(T(1)*(-((-y(17))/(y(77)*y(77))))));
g1(28,78)=(-(T(1)*1/y(19)));
g1(28,17)=(-(T(1)*(-(1/y(77)))));
g1(28,19)=(-(T(1)*(-(y(78)+params(12)*y(80)))/(y(19)*y(19))));
g1(28,80)=(-(T(1)*params(12)/y(19)));
g1(28,82)=(-(T(25)*y(53)*params(3)));
g1(28,36)=1;
g1(28,53)=(-((1-params(3)+params(3)*y(82))*T(25)));
g1(29,77)=(-(T(1)*((-y(17))/(y(77)*y(77))-(-y(52))/(y(77)*y(77)))));
g1(29,17)=(-(T(1)*1/y(77)));
g1(29,82)=(-((T(24)-y(52)/y(77))*y(53)*params(3)));
g1(29,52)=(-(T(1)*(-(1/y(77)))));
g1(29,53)=(-((1-params(3)+params(3)*y(82))*(T(24)-y(52)/y(77))));
g1(29,58)=1;
g1(30,77)=(-(T(1)*(-y(17))/(y(77)*y(77))));
g1(30,17)=(-(T(1)*1/y(77)));
g1(30,18)=(-(T(1)*(-(y(39)*(-y(79))/(y(18)*y(18))))));
g1(30,79)=(-(T(1)*(-(y(39)*1/y(18)))));
g1(30,82)=(-((T(24)-y(39)*y(79)/y(18))*y(53)*params(3)));
g1(30,37)=1;
g1(30,39)=(-(T(1)*(-(y(79)/y(18)))));
g1(30,53)=(-((1-params(3)+params(3)*y(82))*(T(24)-y(39)*y(79)/y(18))));
g1(31,77)=(-((-(T(1)*y(17)))/(y(77)*y(77))));
g1(31,17)=(-(T(1)/y(77)));
g1(31,82)=(-(y(17)*y(53)*params(3)/y(77)));
g1(31,35)=1;
g1(31,53)=(-((1-params(3)+params(3)*y(82))*y(17)/y(77)));
g1(32,32)=(-((-(y(35)*(y(35)*T(3)*2*y(32)-y(37))))/T(31)));
g1(32,34)=1;
g1(32,35)=(-((y(42)+y(35)*T(3)*T(4)-(y(36)+y(32)*y(37))-y(35)*T(3)*T(4))/T(31)));
g1(32,36)=(-(y(35)/T(31)));
g1(32,37)=(-((-(y(35)*(-y(32))))/T(31)));
g1(32,42)=(-((-y(35))/T(31)));
g1(33,33)=1;
g1(33,34)=(-y(42));
g1(33,42)=(-y(34));
g1(34,32)=1;
g1(34,35)=(-((-(params(5)*y(37)))/(params(5)*y(35)*params(5)*y(35))+((-(params(5)*y(37)))/(params(5)*y(35)*params(5)*y(35))*2*y(37)/(params(5)*y(35))+(-(params(5)*2*y(36)))/(params(5)*y(35)*params(5)*y(35)))/(T(28)+T(28))));
g1(34,36)=(-(2/(params(5)*y(35))/(T(28)+T(28))));
g1(34,37)=(-(1/(params(5)*y(35))+2*y(37)/(params(5)*y(35))*1/(params(5)*y(35))/(T(28)+T(28))));
g1(35,14)=(-(y(20)*params(17)/2*2*(y(14)-1)));
g1(35,20)=1-T(26);
g1(35,23)=(-1);
g1(35,24)=(-(1+y(41)));
g1(35,26)=(-1);
g1(35,41)=(-y(24));
g1(35,43)=(-1);
g1(35,44)=(-1);
g1(36,18)=(-y(26))/(y(18)*y(18));
g1(36,21)=(-1);
g1(36,26)=1/y(18);
g1(36,6)=(-y(8));
g1(36,31)=1;
g1(36,8)=(-y(6));
g1(37,14)=(-(params(3)*(-((-(y(5)*y(1)))/(y(14)*y(14))))));
g1(37,15)=(-(y(3)*params(4)+params(3)*y(4)));
g1(37,1)=(-(params(3)*(-(y(5)/y(14)))));
g1(37,18)=(-(params(3)*(-(y(8)*y(6)))));
g1(37,19)=(-(y(3)*params(12)*params(4)+params(3)*params(12)*y(4)));
g1(37,3)=(-((y(15)+y(19)*params(12))*params(4)));
g1(37,27)=1;
g1(37,4)=(-(params(3)*(y(15)+y(19)*params(12))));
g1(37,5)=(-(params(3)*(-(y(1)/y(14)))));
g1(37,6)=(-(params(3)*(-(y(18)*y(8)))));
g1(37,8)=(-(params(3)*(-(y(18)*y(6)))));
g1(38,19)=y(28)*(1+T(3)*T(4));
g1(38,27)=(-(y(34)*(1+T(3)*T(4))));
g1(38,28)=y(19)*(1+T(3)*T(4));
g1(38,32)=y(19)*y(28)*T(3)*2*y(32)-y(27)*y(34)*T(3)*2*y(32);
g1(38,34)=(-(y(27)*(1+T(3)*T(4))));
g1(39,18)=(-y(31));
g1(39,19)=y(28)*(1+T(3)*T(4));
g1(39,27)=(-1);
g1(39,28)=y(19)*(1+T(3)*T(4));
g1(39,30)=(-1);
g1(39,31)=(-y(18));
g1(39,32)=y(19)*y(28)*T(3)*2*y(32);
g1(40,18)=(-(y(31)/(y(19)*y(28))));
g1(40,19)=(-((-(y(28)*y(18)*y(31)))/(y(19)*y(28)*y(19)*y(28))));
g1(40,28)=(-((-(y(19)*y(18)*y(31)))/(y(19)*y(28)*y(19)*y(28))));
g1(40,31)=(-(y(18)/(y(19)*y(28))));
g1(40,32)=1;
g1(41,59)=1;
g1(42,25)=1;
g1(42,28)=(-1);
g1(42,29)=(-1);
g1(43,14)=(-(1/y(14)));
g1(43,2)=(-((-y(18))/(y(2)*y(2))/(y(18)/y(2))));
g1(43,18)=(-(1/y(2)/(y(18)/y(2))));
g1(43,60)=1/y(60);
g1(44,14)=(-((1-params(19))*params(20)*1/y(14)));
g1(44,1)=(-(params(19)*params(6)/(params(6)*y(1))));
g1(44,17)=params(6)/(params(6)*y(17));
g1(44,20)=(-((1-params(19))*0.*1/(steady_state(8))/(y(20)/(steady_state(8)))));
g1(44,60)=(-((1-params(19))*0.3*1/y(60)));
g1(44,84)=(-1);
g1(45,7)=(-(params(21)*1/y(7)));
g1(45,38)=1/y(38);
g1(45,85)=(-1);
g1(46,9)=(-params(23));
g1(46,40)=1;
g1(46,87)=(-1);
g1(47,8)=(-params(22));
g1(47,39)=1;
g1(47,86)=(-1);
g1(48,14)=y(20)*params(17)/2*2*(y(14)-1);
g1(48,18)=y(21);
g1(48,20)=(-(1-T(26)));
g1(48,21)=y(18);
g1(48,43)=1;
g1(48,44)=1;
g1(48,45)=1;
g1(49,20)=(-(1/y(20)));
g1(49,61)=1;
g1(50,14)=(-(1/y(14)));
g1(50,62)=1;
g1(51,17)=(-(1/y(17)));
g1(51,63)=1;
g1(52,24)=(-(1/y(24)));
g1(52,64)=1;
g1(53,22)=(-(1/y(22)));
g1(53,65)=1;
g1(54,23)=(-(1/y(23)));
g1(54,66)=1;
g1(55,26)=(-(1/y(26)));
g1(55,67)=1;
g1(56,21)=(-(1/y(21)));
g1(56,68)=1;
g1(57,30)=(-(1/y(30)));
g1(57,69)=1;
g1(58,31)=(-(1/y(31)));
g1(58,70)=1;
g1(59,27)=(-(1/y(27)));
g1(59,71)=1;
g1(60,77)=(-((-((-y(17))/(y(77)*y(77))))/T(25)));
g1(60,78)=(-(1/y(19)/T(25)));
g1(60,17)=(-((-(1/y(77)))/T(25)));
g1(60,19)=(-((-(y(78)+params(12)*y(80)))/(y(19)*y(19))/T(25)));
g1(60,80)=(-(params(12)/y(19)/T(25)));
g1(60,72)=1;
g1(61,50)=(-(1/y(50)));
g1(61,73)=1;
g1(62,51)=(-(1/y(51)));
g1(62,74)=1;
g1(63,34)=(-(1/y(34)));
g1(63,75)=1;
g1(64,21)=1;
g1(64,26)=(-1);
g1(64,76)=1;

end
