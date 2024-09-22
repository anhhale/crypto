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
    T = flm_base.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(32, 53);
g1(1,9)=y(10);
g1(1,10)=y(9);
g1(1,11)=(-1);
g1(1,12)=(-y(13));
g1(1,13)=(-y(12));
g1(2,11)=(-(T(1)*T(41)*T(42)/y(43)));
g1(2,41)=(-(T(1)*T(38)*T(42)/y(43)));
g1(2,14)=(-(T(2)*T(53)/y(43)));
g1(2,15)=(-(T(2)*T(54)/y(43)));
g1(2,42)=(-(T(1)*T(2)/y(43)));
g1(2,43)=(-((-(T(1)*T(2)))/(y(43)*y(43))));
g1(3,11)=1;
g1(3,16)=(-(T(4)*T(55)));
g1(3,17)=(-(T(3)*T(56)));
g1(4,9)=(-(T(6)*T(35)));
g1(4,12)=(-(T(5)*T(49)));
g1(5,2)=(-(T(7)*T(45)*T(46)));
g1(5,12)=(-(T(7)*T(46)*T(51)));
g1(5,18)=1-T(7)*T(8)*T(46);
g1(5,19)=(-(T(9)*T(60)));
g1(6,10)=(-T(38));
g1(6,11)=(-((-y(10))/(y(11)*y(11))));
g1(6,44)=(-(params(18)*params(17)*y(45)*T(65)));
g1(6,20)=1;
g1(6,45)=(-(params(18)*params(17)*T(10)));
g1(7,10)=(-(y(22)*T(39)));
g1(7,11)=(-(y(22)*T(43)));
g1(7,44)=(-(params(18)*params(17)*y(46)*T(66)));
g1(7,21)=1;
g1(7,46)=(-(params(18)*params(17)*T(11)));
g1(7,22)=(-T(31));
g1(8,19)=params(18)*getPowerDeriv(y(19),params(16)-1,1);
g1(8,20)=(1-params(18))*T(67)*T(68);
g1(8,21)=(1-params(18))*T(68)*T(70);
g1(9,19)=(-(params(18)*y(4)*T(61)));
g1(9,20)=(-((1-params(18))*T(67)*T(69)));
g1(9,21)=(-((1-params(18))*T(69)*T(70)));
g1(9,4)=(-(params(18)*T(13)));
g1(9,23)=1;
g1(10,12)=(-(T(14)*T(52)/T(18)));
g1(10,22)=1;
g1(10,24)=(-(T(15)*T(71)/T(18)));
g1(10,25)=(-((-(T(14)*T(15)*T(16)*T(17)))/(T(18)*T(18))));
g1(11,11)=(-T(19));
g1(11,24)=1;
g1(11,26)=(-(y(11)*T(72)));
g1(12,10)=(-(y(23)*y(22)*(1-params(2))/y(24)));
g1(12,22)=(-(y(23)*y(10)*(1-params(2))/y(24)));
g1(12,23)=(-(y(10)*y(22)*(1-params(2))/y(24)));
g1(12,24)=(-(y(23)*y(10)*(-(y(22)*(1-params(2))))/(y(24)*y(24))));
g1(12,26)=1;
g1(13,10)=(-(exp(y(34))*T(24)*T(40)));
g1(13,2)=(-(exp(y(34))*T(25)*T(22)*T(44)*T(47)));
g1(13,12)=(-(exp(y(34))*T(25)*T(22)*T(47)*T(50)));
g1(13,14)=1;
g1(13,18)=(-(exp(y(34))*T(25)*T(59)));
g1(13,19)=(-(exp(y(34))*T(25)*T(64)));
g1(13,34)=(-(T(24)*T(25)*exp(y(34))));
g1(14,13)=(-1);
g1(14,17)=(-1);
g1(14,27)=1;
g1(14,28)=1;
g1(15,11)=(-(params(1)/y(12)));
g1(15,12)=(-((-(params(1)*y(11)))/(y(12)*y(12))));
g1(15,17)=1;
g1(16,10)=(-(y(23)*y(22)*params(2)/y(12)));
g1(16,12)=(-(y(23)*y(10)*(-(y(22)*params(2)))/(y(12)*y(12))));
g1(16,13)=1;
g1(16,22)=(-(y(23)*y(10)*params(2)/y(12)));
g1(16,23)=(-(y(10)*y(22)*params(2)/y(12)));
g1(17,12)=(-(y(29)*T(32)));
g1(17,28)=1;
g1(17,29)=(-(y(12)*T(32)));
g1(17,32)=(-(y(29)*y(12)*T(32)));
g1(18,12)=1/y(40);
g1(18,29)=(-(T(75)*T(76)));
g1(18,30)=(-(T(76)*T(26)*T(77)));
g1(18,40)=(-y(12))/(y(40)*y(40));
g1(19,27)=(-(2*y(28)/((y(27)+2*y(28))*(y(27)+2*y(28)))));
g1(19,28)=(-((-(2*y(27)))/((y(27)+2*y(28))*(y(27)+2*y(28)))));
g1(19,30)=1;
g1(20,5)=(-params(7));
g1(20,31)=1;
g1(20,49)=1;
g1(21,6)=(-params(8));
g1(21,32)=1;
g1(21,50)=(-1);
g1(22,7)=(-params(9));
g1(22,33)=1;
g1(22,51)=(-1);
g1(23,8)=(-params(10));
g1(23,34)=1;
g1(23,53)=(-1);
g1(24,3)=(-params(21));
g1(24,15)=1;
g1(24,52)=(-1);
g1(25,25)=(-(1/y(25)));
g1(25,33)=1;
g1(26,29)=(-T(26));
g1(26,31)=1;
g1(27,11)=(-(exp(y(15))*T(38)));
g1(27,15)=(-T(27));
g1(27,26)=T(73);
g1(27,35)=1;
g1(27,47)=(-params(17));
g1(28,12)=(-y(27));
g1(28,27)=(-(y(12)-T(26)));
g1(28,29)=y(27)*T(74);
g1(28,36)=1;
g1(29,11)=(-(1/y(36)));
g1(29,36)=(-((-y(11))/(y(36)*y(36))));
g1(29,37)=1;
g1(30,36)=(-(1/y(37)));
g1(30,37)=(-(y(36)*(-1)/(y(37)*y(37))));
g1(30,38)=1;
g1(30,48)=(-params(17));
g1(31,12)=2*(y(12)-(steady_state(4)));
g1(31,39)=1;
g1(32,1)=(-(T(30)*T(28)*T(36)*T(37)));
g1(32,10)=(-(T(30)*T(28)*T(37)*1/y(1)));
g1(32,2)=(-(T(30)*T(29)*params(29)*T(44)*T(48)));
g1(32,12)=(-(T(30)*T(29)*params(29)*T(48)*T(50)));
g1(32,37)=(-(T(28)*T(29)*T(78)));
g1(32,40)=1;

end
