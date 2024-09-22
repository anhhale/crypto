function [residual, g1, g2, g3] = bench_sb_sepa_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [M_.exo_nbr by nperiods] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(55, 1);
T33 = params(1)*y(70)/y(15);
T53 = params(6)/2;
T58 = y(59)*y(18)/y(2);
T62 = 1-T53*(T58-1)^2;
T63 = params(6)*(T58-1);
T74 = y(77)*y(72)/y(18)-1;
T76 = y(77)*params(6)*T33*y(73)*T74;
T78 = (y(72)/y(18))^2;
T104 = y(17)^(params(3)*(1-params(8)));
T174 = params(16)*(y(26)/y(9)-y(53))^2;
T198 = 1-normcdf(y(28),0,1);
T228 = y(32)-y(22)*y(30)+params(16)*(2*y(26)/y(9)-y(53));
T243 = 1-normcdf(y(38),0,1);
T383 = (-(params(1)*y(70)))/(y(15)*y(15));
T402 = params(1)/y(15);
T445 = (-(y(59)*y(18)))/(y(2)*y(2));
T600 = (-(exp((-(y(28)*y(28)))/2)/2.506628274631));
T605 = exp((-((y(28)-y(55))*(y(28)-y(55))))/2)/2.506628274631;
T606 = (-T605);
T678 = (-(exp((-(y(38)*y(38)))/2)/2.506628274631));
T683 = exp((-((y(38)-y(55))*(y(38)-y(55))))/2)/2.506628274631;
T684 = (-T683);
lhs =y(15);
rhs =1/(y(16)-params(30)*y(1))-params(30)*params(1)/(y(71)-y(16)*params(30));
residual(1)= lhs-rhs;
lhs =y(15)*y(47);
rhs =params(4)*y(17)^params(5);
residual(2)= lhs-rhs;
lhs =1;
rhs =T33*y(32)+params(9)/y(15)/y(44);
residual(3)= lhs-rhs;
lhs =1;
rhs =T33*y(75);
residual(4)= lhs-rhs;
lhs =1;
rhs =T33*y(48);
residual(5)= lhs-rhs;
lhs =y(51);
rhs =y(8);
residual(6)= lhs-rhs;
lhs =1;
rhs =y(49)*(T62-T58*T63)+T76*T78;
residual(7)= lhs-rhs;
lhs =y(49);
rhs =T33*(y(73)*(1-params(2))+y(74));
residual(8)= lhs-rhs;
lhs =y(20);
rhs =(1-params(2))*y(3)+y(18)*T62;
residual(9)= lhs-rhs;
lhs =y(19);
rhs =y(52)*y(3)^(1-params(3))*T104;
residual(10)= lhs-rhs;
lhs =y(47)*y(17);
rhs =params(3)*(1-params(8))*(y(4)+y(23));
residual(11)= lhs-rhs;
lhs =y(3)*y(50);
rhs =(1-params(3))*(y(4)+y(23));
residual(12)= lhs-rhs;
lhs =y(23);
rhs =y(26)+y(36);
residual(13)= lhs-rhs;
lhs =y(22);
rhs =y(19)/(y(4)+y(23));
residual(14)= lhs-rhs;
lhs =y(21);
rhs =y(24)+y(34);
residual(15)= lhs-rhs;
lhs =y(24);
rhs =y(22)*params(7)*y(25)*(y(26)+y(5))/y(58)+(y(26)+y(5))*params(3)*params(8)*params(31);
residual(16)= lhs-rhs;
lhs =y(34);
rhs =y(22)*params(7)*y(35)*(y(36)+y(7))/y(58)+(y(36)+y(7))*params(3)*params(8)*params(32);
residual(17)= lhs-rhs;
lhs =y(46);
rhs =y(32)+params(16)*(y(26)/y(9)-y(53));
residual(18)= lhs-rhs;
lhs =y(44)+y(9);
rhs =y(26);
residual(19)= lhs-rhs;
lhs =y(45);
rhs =params(11)*(y(26)*y(46)-y(32)*y(44)-y(9)*T174)+params(12)*y(6);
residual(20)= lhs-rhs;
lhs =y(28);
rhs =log(y(31))/y(55)+y(55)*0.5;
residual(21)= lhs-rhs;
lhs =y(27);
rhs =normcdf(y(28),0,1);
residual(22)= lhs-rhs;
lhs =y(25);
rhs =1-normcdf(y(28)-y(55),0,1)-y(31)*T198;
residual(23)= lhs-rhs;
lhs =y(30);
rhs =y(31)*T198+normcdf(y(28)-y(55),0,1)*(1-params(14));
residual(24)= lhs-rhs;
lhs =y(29);
rhs =(-T198);
residual(25)= lhs-rhs;
lhs =y(33);
rhs =T198-params(14)*normpdf(y(28),0,1)/y(55);
residual(26)= lhs-rhs;
lhs =(y(26)+y(5))*y(22)*y(30);
rhs =y(26)*y(46);
residual(27)= lhs-rhs;
lhs =(-y(29))/y(33);
rhs =y(22)*y(25)/T228;
residual(28)= lhs-rhs;
lhs =y(38);
rhs =y(55)*0.5+log(y(41))/y(55);
residual(29)= lhs-rhs;
lhs =y(37);
rhs =normcdf(y(38),0,1);
residual(30)= lhs-rhs;
lhs =y(35);
rhs =1-normcdf(y(38)-y(55),0,1)-y(41)*T243;
residual(31)= lhs-rhs;
lhs =y(40);
rhs =y(41)*T243+normcdf(y(38)-y(55),0,1)*(1-params(15));
residual(32)= lhs-rhs;
lhs =y(39);
rhs =(-T243);
residual(33)= lhs-rhs;
lhs =y(43);
rhs =T243-params(15)*normpdf(y(38),0,1)/y(55);
residual(34)= lhs-rhs;
lhs =(y(36)+y(7))*y(22)*y(40);
rhs =y(36)*y(42);
residual(35)= lhs-rhs;
lhs =(-y(39))/y(43);
rhs =y(22)*y(35)/(y(42)-y(22)*y(40));
residual(36)= lhs-rhs;
lhs =y(19);
rhs =y(16)+y(18);
residual(37)= lhs-rhs;
lhs =log(y(52));
rhs =params(18)*log(y(10))-x(it_, 1);
residual(38)= lhs-rhs;
lhs =log(y(59));
rhs =params(21)*log(y(14))+x(it_, 4);
residual(39)= lhs-rhs;
lhs =log(y(53)/params(13));
rhs =params(26)*log(y(11)/params(13))-x(it_, 5);
residual(40)= lhs-rhs;
lhs =y(54);
rhs =y(16)+y(18);
residual(41)= lhs-rhs;
lhs =log(y(55));
rhs =params(19)*log(y(12))+(1-params(19))*log(params(10))+x(it_, 2);
residual(42)= lhs-rhs;
lhs =log(y(58));
rhs =params(20)*log(y(13))+x(it_, 3);
residual(43)= lhs-rhs;
lhs =y(57);
rhs =y(56)+params(1)*y(76);
residual(44)= lhs-rhs;
lhs =y(56);
rhs =log(y(16))+params(9)*log(y(44))-params(4)*y(17)^(1+params(5))/(1+params(5));
residual(45)= lhs-rhs;
lhs =y(60);
rhs =y(36)/(y(26)+y(36));
residual(46)= lhs-rhs;
lhs =y(61);
rhs =(y(26)+y(36))/(y(5)+y(7));
residual(47)= lhs-rhs;
lhs =y(62);
rhs =y(36)/y(7);
residual(48)= lhs-rhs;
lhs =y(63);
rhs =y(26)/y(5);
residual(49)= lhs-rhs;
lhs =y(64);
rhs =1/y(53);
residual(50)= lhs-rhs;
lhs =y(65);
rhs =log(y(23));
residual(51)= lhs-rhs;
lhs =y(66);
rhs =y(22)*y(41)*(1+y(7)/y(36));
residual(52)= lhs-rhs;
lhs =y(67);
rhs =y(22)*y(31)*(1+y(5)/y(26));
residual(53)= lhs-rhs;
lhs =y(68);
rhs =log(y(54));
residual(54)= lhs-rhs;
lhs =y(69);
rhs =(y(26)*y(27)+y(36)*y(37))/(y(26)+y(36));
residual(55)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(55, 82);

  %
  % Jacobian matrix
  %

  g1(1,15)=1;
  g1(1,1)=(-(params(30)/((y(16)-params(30)*y(1))*(y(16)-params(30)*y(1)))));
  g1(1,16)=(-((-1)/((y(16)-params(30)*y(1))*(y(16)-params(30)*y(1)))-(-(params(30)*params(1)*(-params(30))))/((y(71)-y(16)*params(30))*(y(71)-y(16)*params(30)))));
  g1(1,71)=(-(params(30)*params(1)))/((y(71)-y(16)*params(30))*(y(71)-y(16)*params(30)));
  g1(2,15)=y(47);
  g1(2,17)=(-(params(4)*getPowerDeriv(y(17),params(5),1)));
  g1(2,47)=y(15);
  g1(3,15)=(-(y(32)*T383+(-params(9))/(y(15)*y(15))/y(44)));
  g1(3,70)=(-(y(32)*T402));
  g1(3,32)=(-T33);
  g1(3,44)=(-((-(params(9)/y(15)))/(y(44)*y(44))));
  g1(4,15)=(-(y(75)*T383));
  g1(4,70)=(-(y(75)*T402));
  g1(4,75)=(-T33);
  g1(5,15)=(-(y(48)*T383));
  g1(5,70)=(-(y(48)*T402));
  g1(5,48)=(-T33);
  g1(6,8)=(-1);
  g1(6,51)=1;
  g1(7,15)=(-(T78*y(77)*T74*params(6)*y(73)*T383));
  g1(7,70)=(-(T78*y(77)*T74*params(6)*y(73)*T402));
  g1(7,2)=(-(y(49)*((-(T53*T445*2*(T58-1)))-(T63*T445+T58*params(6)*T445))));
  g1(7,18)=(-(y(49)*((-(T53*2*(T58-1)*y(59)/y(2)))-(T63*y(59)/y(2)+T58*params(6)*y(59)/y(2)))+T78*y(77)*params(6)*T33*y(73)*(-(y(77)*y(72)))/(y(18)*y(18))+T76*(-y(72))/(y(18)*y(18))*2*y(72)/y(18)));
  g1(7,72)=(-(T78*y(77)*params(6)*T33*y(73)*y(77)/y(18)+T76*2*y(72)/y(18)*1/y(18)));
  g1(7,49)=(-(T62-T58*T63));
  g1(7,73)=(-(T78*y(77)*T74*T33*params(6)));
  g1(7,59)=(-(y(49)*((-(T53*2*(T58-1)*y(18)/y(2)))-(T63*y(18)/y(2)+T58*params(6)*y(18)/y(2)))));
  g1(7,77)=(-(T78*(params(6)*T33*y(73)*T74+y(77)*params(6)*T33*y(73)*y(72)/y(18))));
  g1(8,15)=(-((y(73)*(1-params(2))+y(74))*T383));
  g1(8,70)=(-((y(73)*(1-params(2))+y(74))*T402));
  g1(8,49)=1;
  g1(8,73)=(-(T33*(1-params(2))));
  g1(8,74)=(-T33);
  g1(9,2)=(-(y(18)*(-(T53*T445*2*(T58-1)))));
  g1(9,18)=(-(T62+y(18)*(-(T53*2*(T58-1)*y(59)/y(2)))));
  g1(9,3)=(-(1-params(2)));
  g1(9,20)=1;
  g1(9,59)=(-(y(18)*(-(T53*2*(T58-1)*y(18)/y(2)))));
  g1(10,17)=(-(y(52)*y(3)^(1-params(3))*getPowerDeriv(y(17),params(3)*(1-params(8)),1)));
  g1(10,19)=1;
  g1(10,3)=(-(T104*y(52)*getPowerDeriv(y(3),1-params(3),1)));
  g1(10,52)=(-(y(3)^(1-params(3))*T104));
  g1(11,17)=y(47);
  g1(11,4)=(-(params(3)*(1-params(8))));
  g1(11,23)=(-(params(3)*(1-params(8))));
  g1(11,47)=y(17);
  g1(12,3)=y(50);
  g1(12,4)=(-(1-params(3)));
  g1(12,23)=(-(1-params(3)));
  g1(12,50)=y(3);
  g1(13,23)=1;
  g1(13,26)=(-1);
  g1(13,36)=(-1);
  g1(14,19)=(-(1/(y(4)+y(23))));
  g1(14,4)=(-((-y(19))/((y(4)+y(23))*(y(4)+y(23)))));
  g1(14,22)=1;
  g1(14,23)=(-((-y(19))/((y(4)+y(23))*(y(4)+y(23)))));
  g1(15,21)=1;
  g1(15,24)=(-1);
  g1(15,34)=(-1);
  g1(16,22)=(-(params(7)*y(25)*(y(26)+y(5))/y(58)));
  g1(16,5)=(-(params(3)*params(8)*params(31)+y(22)*params(7)*y(25)/y(58)));
  g1(16,24)=1;
  g1(16,25)=(-(y(22)*params(7)*(y(26)+y(5))/y(58)));
  g1(16,26)=(-(params(3)*params(8)*params(31)+y(22)*params(7)*y(25)/y(58)));
  g1(16,58)=(-((-(y(22)*params(7)*y(25)*(y(26)+y(5))))/(y(58)*y(58))));
  g1(17,22)=(-(params(7)*y(35)*(y(36)+y(7))/y(58)));
  g1(17,7)=(-(params(3)*params(8)*params(32)+y(22)*params(7)*y(35)/y(58)));
  g1(17,34)=1;
  g1(17,35)=(-(y(22)*params(7)*(y(36)+y(7))/y(58)));
  g1(17,36)=(-(params(3)*params(8)*params(32)+y(22)*params(7)*y(35)/y(58)));
  g1(17,58)=(-((-(y(22)*params(7)*y(35)*(y(36)+y(7))))/(y(58)*y(58))));
  g1(18,26)=(-(params(16)*1/y(9)));
  g1(18,32)=(-1);
  g1(18,9)=(-(params(16)*(-y(26))/(y(9)*y(9))));
  g1(18,46)=1;
  g1(18,53)=params(16);
  g1(19,26)=(-1);
  g1(19,44)=1;
  g1(19,9)=1;
  g1(20,6)=(-params(12));
  g1(20,26)=(-(params(11)*(y(46)-y(9)*params(16)*1/y(9)*2*(y(26)/y(9)-y(53)))));
  g1(20,32)=(-(params(11)*(-y(44))));
  g1(20,44)=(-(params(11)*(-y(32))));
  g1(20,9)=(-(params(11)*(-(T174+y(9)*params(16)*2*(y(26)/y(9)-y(53))*(-y(26))/(y(9)*y(9))))));
  g1(20,45)=1;
  g1(20,46)=(-(y(26)*params(11)));
  g1(20,53)=(-(params(11)*(-(y(9)*params(16)*(-(2*(y(26)/y(9)-y(53))))))));
  g1(21,28)=1;
  g1(21,31)=(-(1/y(31)/y(55)));
  g1(21,55)=(-(0.5+(-log(y(31)))/(y(55)*y(55))));
  g1(22,27)=1;
  g1(22,28)=T600;
  g1(23,25)=1;
  g1(23,28)=(-(T606-y(31)*T600));
  g1(23,31)=T198;
  g1(23,55)=T606;
  g1(24,28)=(-(y(31)*T600+(1-params(14))*T605));
  g1(24,30)=1;
  g1(24,31)=(-T198);
  g1(24,55)=(-((1-params(14))*T606));
  g1(25,28)=T600;
  g1(25,29)=1;
  g1(26,28)=(-(T600-params(14)*normpdf(y(28),0,1)*(-y(28))/y(55)));
  g1(26,33)=1;
  g1(26,55)=(-(params(14)*normpdf(y(28),0,1)))/(y(55)*y(55));
  g1(27,22)=(y(26)+y(5))*y(30);
  g1(27,5)=y(22)*y(30);
  g1(27,26)=y(22)*y(30)-y(46);
  g1(27,30)=y(22)*(y(26)+y(5));
  g1(27,46)=(-y(26));
  g1(28,22)=(-((y(25)*T228-y(22)*y(25)*(-y(30)))/(T228*T228)));
  g1(28,25)=(-(y(22)/T228));
  g1(28,26)=(-((-(y(22)*y(25)*params(16)*2/y(9)))/(T228*T228)));
  g1(28,29)=(-1)/y(33);
  g1(28,30)=(-((-(y(22)*y(25)*(-y(22))))/(T228*T228)));
  g1(28,32)=(-((-(y(22)*y(25)))/(T228*T228)));
  g1(28,33)=y(29)/(y(33)*y(33));
  g1(28,9)=(-((-(y(22)*y(25)*params(16)*(-(2*y(26)))/(y(9)*y(9))))/(T228*T228)));
  g1(28,53)=(-((-(y(22)*y(25)*(-params(16))))/(T228*T228)));
  g1(29,38)=1;
  g1(29,41)=(-(1/y(41)/y(55)));
  g1(29,55)=(-(0.5+(-log(y(41)))/(y(55)*y(55))));
  g1(30,37)=1;
  g1(30,38)=T678;
  g1(31,35)=1;
  g1(31,38)=(-(T684-y(41)*T678));
  g1(31,41)=T243;
  g1(31,55)=T684;
  g1(32,38)=(-(y(41)*T678+(1-params(15))*T683));
  g1(32,40)=1;
  g1(32,41)=(-T243);
  g1(32,55)=(-((1-params(15))*T684));
  g1(33,38)=T678;
  g1(33,39)=1;
  g1(34,38)=(-(T678-params(15)*normpdf(y(38),0,1)*(-y(38))/y(55)));
  g1(34,43)=1;
  g1(34,55)=(-(params(15)*normpdf(y(38),0,1)))/(y(55)*y(55));
  g1(35,22)=(y(36)+y(7))*y(40);
  g1(35,7)=y(22)*y(40);
  g1(35,36)=y(22)*y(40)-y(42);
  g1(35,40)=y(22)*(y(36)+y(7));
  g1(35,42)=(-y(36));
  g1(36,22)=(-((y(35)*(y(42)-y(22)*y(40))-y(22)*y(35)*(-y(40)))/((y(42)-y(22)*y(40))*(y(42)-y(22)*y(40)))));
  g1(36,35)=(-(y(22)/(y(42)-y(22)*y(40))));
  g1(36,39)=(-1)/y(43);
  g1(36,40)=(-((-(y(22)*y(35)*(-y(22))))/((y(42)-y(22)*y(40))*(y(42)-y(22)*y(40)))));
  g1(36,42)=(-((-(y(22)*y(35)))/((y(42)-y(22)*y(40))*(y(42)-y(22)*y(40)))));
  g1(36,43)=y(39)/(y(43)*y(43));
  g1(37,16)=(-1);
  g1(37,18)=(-1);
  g1(37,19)=1;
  g1(38,10)=(-(params(18)*1/y(10)));
  g1(38,52)=1/y(52);
  g1(38,78)=1;
  g1(39,14)=(-(params(21)*1/y(14)));
  g1(39,59)=1/y(59);
  g1(39,81)=(-1);
  g1(40,11)=(-(params(26)*1/params(13)/(y(11)/params(13))));
  g1(40,53)=1/params(13)/(y(53)/params(13));
  g1(40,82)=1;
  g1(41,16)=(-1);
  g1(41,18)=(-1);
  g1(41,54)=1;
  g1(42,12)=(-(params(19)*1/y(12)));
  g1(42,55)=1/y(55);
  g1(42,79)=(-1);
  g1(43,13)=(-(params(20)*1/y(13)));
  g1(43,58)=1/y(58);
  g1(43,80)=(-1);
  g1(44,56)=(-1);
  g1(44,57)=1;
  g1(44,76)=(-params(1));
  g1(45,16)=(-(1/y(16)));
  g1(45,17)=params(4)*getPowerDeriv(y(17),1+params(5),1)/(1+params(5));
  g1(45,44)=(-(params(9)*1/y(44)));
  g1(45,56)=1;
  g1(46,26)=(-((-y(36))/((y(26)+y(36))*(y(26)+y(36)))));
  g1(46,36)=(-((y(26)+y(36)-y(36))/((y(26)+y(36))*(y(26)+y(36)))));
  g1(46,60)=1;
  g1(47,5)=(-((-(y(26)+y(36)))/((y(5)+y(7))*(y(5)+y(7)))));
  g1(47,26)=(-(1/(y(5)+y(7))));
  g1(47,7)=(-((-(y(26)+y(36)))/((y(5)+y(7))*(y(5)+y(7)))));
  g1(47,36)=(-(1/(y(5)+y(7))));
  g1(47,61)=1;
  g1(48,7)=(-((-y(36))/(y(7)*y(7))));
  g1(48,36)=(-(1/y(7)));
  g1(48,62)=1;
  g1(49,5)=(-((-y(26))/(y(5)*y(5))));
  g1(49,26)=(-(1/y(5)));
  g1(49,63)=1;
  g1(50,53)=(-((-1)/(y(53)*y(53))));
  g1(50,64)=1;
  g1(51,23)=(-(1/y(23)));
  g1(51,65)=1;
  g1(52,22)=(-(y(41)*(1+y(7)/y(36))));
  g1(52,7)=(-(y(22)*y(41)*1/y(36)));
  g1(52,36)=(-(y(22)*y(41)*(-y(7))/(y(36)*y(36))));
  g1(52,41)=(-(y(22)*(1+y(7)/y(36))));
  g1(52,66)=1;
  g1(53,22)=(-(y(31)*(1+y(5)/y(26))));
  g1(53,5)=(-(y(22)*y(31)*1/y(26)));
  g1(53,26)=(-(y(22)*y(31)*(-y(5))/(y(26)*y(26))));
  g1(53,31)=(-(y(22)*(1+y(5)/y(26))));
  g1(53,67)=1;
  g1(54,54)=(-(1/y(54)));
  g1(54,68)=1;
  g1(55,26)=(-(((y(26)+y(36))*y(27)-(y(26)*y(27)+y(36)*y(37)))/((y(26)+y(36))*(y(26)+y(36)))));
  g1(55,27)=(-(y(26)/(y(26)+y(36))));
  g1(55,36)=(-(((y(26)+y(36))*y(37)-(y(26)*y(27)+y(36)*y(37)))/((y(26)+y(36))*(y(26)+y(36)))));
  g1(55,37)=(-(y(36)/(y(26)+y(36))));
  g1(55,69)=1;
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],55,6724);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],55,551368);
end
end
