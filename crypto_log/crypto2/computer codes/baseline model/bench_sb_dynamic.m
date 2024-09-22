function [residual, g1, g2, g3] = bench_sb_dynamic(y, x, params, steady_state, it_)
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

residual = zeros(56, 1);
T33 = params(1)*y(69)/y(13);
T53 = params(6)/2;
T58 = y(57)*y(16)/y(2);
T62 = 1-T53*(T58-1)^2;
T63 = params(6)*(T58-1);
T74 = y(76)*y(71)/y(16)-1;
T76 = y(76)*params(6)*T33*y(72)*T74;
T78 = (y(71)/y(16))^2;
T104 = y(15)^(params(3)*(1-params(8)));
T165 = params(16)*(y(24)/y(7)-y(51))^2;
T167 = y(24)*y(44)-y(30)*y(42)-y(7)*T165;
T189 = 1-normcdf(y(26),0,1);
T219 = y(30)-y(20)*y(28)+params(16)*(2*y(24)/y(7)-y(51));
T234 = 1-normcdf(y(36),0,1);
T375 = (-(params(1)*y(69)))/(y(13)*y(13));
T394 = params(1)/y(13);
T438 = (-(y(57)*y(16)))/(y(2)*y(2));
T560 = y(44)-y(7)*params(16)*1/y(7)*2*(y(24)/y(7)-y(51));
T597 = (-(exp((-(y(26)*y(26)))/2)/2.506628274631));
T602 = exp((-((y(26)-y(53))*(y(26)-y(53))))/2)/2.506628274631;
T603 = (-T602);
T682 = (-(exp((-(y(36)*y(36)))/2)/2.506628274631));
T687 = exp((-((y(36)-y(53))*(y(36)-y(53))))/2)/2.506628274631;
T688 = (-T687);
T734 = T165+y(7)*params(16)*2*(y(24)/y(7)-y(51))*(-y(24))/(y(7)*y(7));
lhs =y(13);
rhs =1/(y(14)-params(30)*y(1))-params(30)*params(1)/(y(70)-y(14)*params(30));
residual(1)= lhs-rhs;
lhs =y(13)*y(45);
rhs =params(4)*y(15)^params(5);
residual(2)= lhs-rhs;
lhs =1;
rhs =T33*y(30)+params(9)/y(13)/y(42);
residual(3)= lhs-rhs;
lhs =1;
rhs =T33*y(74);
residual(4)= lhs-rhs;
lhs =1;
rhs =T33*y(46);
residual(5)= lhs-rhs;
lhs =y(49);
rhs =y(6);
residual(6)= lhs-rhs;
lhs =1;
rhs =y(47)*(T62-T58*T63)+T76*T78;
residual(7)= lhs-rhs;
lhs =y(47);
rhs =T33*(y(72)*(1-params(2))+y(73));
residual(8)= lhs-rhs;
lhs =y(18);
rhs =(1-params(2))*y(3)+y(16)*T62;
residual(9)= lhs-rhs;
lhs =y(17);
rhs =y(50)*y(3)^(1-params(3))*T104;
residual(10)= lhs-rhs;
lhs =y(45)*y(15);
rhs =params(3)*(1-params(8))*(y(4)+y(21));
residual(11)= lhs-rhs;
lhs =y(3)*y(48);
rhs =(1-params(3))*(y(4)+y(21));
residual(12)= lhs-rhs;
lhs =y(4);
rhs =y(22)+y(32);
residual(13)= lhs-rhs;
lhs =y(21);
rhs =y(24)+y(34);
residual(14)= lhs-rhs;
lhs =y(20);
rhs =y(17)/(y(4)+y(21));
residual(15)= lhs-rhs;
lhs =y(19);
rhs =y(20)*params(7)*(y(23)*(y(22)+y(24))+y(33)*(y(32)+y(34)))/y(56)+(y(4)+y(21))*params(3)*params(8);
residual(16)= lhs-rhs;
lhs =y(23)*(y(22)+y(24))/y(22);
rhs =y(33)*(y(32)+y(34))/y(32);
residual(17)= lhs-rhs;
lhs =y(44);
rhs =y(30)+params(16)*(y(24)/y(7)-y(51));
residual(18)= lhs-rhs;
lhs =y(42)+y(7);
rhs =y(24);
residual(19)= lhs-rhs;
lhs =y(43);
rhs =params(11)*T167+params(12)*y(5);
residual(20)= lhs-rhs;
lhs =y(26);
rhs =log(y(29))/y(53)+y(53)*0.5;
residual(21)= lhs-rhs;
lhs =y(25);
rhs =normcdf(y(26),0,1);
residual(22)= lhs-rhs;
lhs =y(23);
rhs =1-normcdf(y(26)-y(53),0,1)-y(29)*T189;
residual(23)= lhs-rhs;
lhs =y(28);
rhs =y(29)*T189+normcdf(y(26)-y(53),0,1)*(1-params(14));
residual(24)= lhs-rhs;
lhs =y(27);
rhs =(-T189);
residual(25)= lhs-rhs;
lhs =y(31);
rhs =T189-params(14)*normpdf(y(26),0,1)/y(53);
residual(26)= lhs-rhs;
lhs =(y(22)+y(24))*y(20)*y(28);
rhs =y(24)*y(44);
residual(27)= lhs-rhs;
lhs =(-y(27))/y(31);
rhs =y(20)*y(23)/T219;
residual(28)= lhs-rhs;
lhs =y(36);
rhs =y(53)*0.5+log(y(39))/y(53);
residual(29)= lhs-rhs;
lhs =y(35);
rhs =normcdf(y(36),0,1);
residual(30)= lhs-rhs;
lhs =y(33);
rhs =1-normcdf(y(36)-y(53),0,1)-y(39)*T234;
residual(31)= lhs-rhs;
lhs =y(38);
rhs =y(39)*T234+normcdf(y(36)-y(53),0,1)*(1-params(15));
residual(32)= lhs-rhs;
lhs =y(37);
rhs =(-T234);
residual(33)= lhs-rhs;
lhs =y(41);
rhs =T234-params(15)*normpdf(y(36),0,1)/y(53);
residual(34)= lhs-rhs;
lhs =(y(32)+y(34))*y(20)*y(38);
rhs =y(34)*y(40);
residual(35)= lhs-rhs;
lhs =(-y(37))/y(41);
rhs =y(20)*y(33)/(y(40)-y(20)*y(38));
residual(36)= lhs-rhs;
lhs =y(17);
rhs =y(14)+y(16);
residual(37)= lhs-rhs;
lhs =log(y(50));
rhs =params(18)*log(y(8))-x(it_, 1);
residual(38)= lhs-rhs;
lhs =log(y(57));
rhs =params(21)*log(y(12))+x(it_, 4);
residual(39)= lhs-rhs;
lhs =log(y(51)/params(13));
rhs =params(26)*log(y(9)/params(13))-x(it_, 5);
residual(40)= lhs-rhs;
lhs =y(52);
rhs =y(14)+y(16);
residual(41)= lhs-rhs;
lhs =log(y(53));
rhs =params(19)*log(y(10))+(1-params(19))*log(params(10))+x(it_, 2);
residual(42)= lhs-rhs;
lhs =log(y(56));
rhs =params(20)*log(y(11))+x(it_, 3);
residual(43)= lhs-rhs;
lhs =y(55);
rhs =y(54)+params(1)*y(75);
residual(44)= lhs-rhs;
lhs =y(54);
rhs =log(y(14)-params(30)*y(1))+params(9)*log(y(42))-params(4)*y(15)^(1+params(5))/(1+params(5));
residual(45)= lhs-rhs;
lhs =y(58);
rhs =y(34)/(y(24)+y(34));
residual(46)= lhs-rhs;
lhs =y(59);
rhs =(y(24)+y(34))/(y(22)+y(32));
residual(47)= lhs-rhs;
lhs =y(60);
rhs =y(34)/y(32);
residual(48)= lhs-rhs;
lhs =y(61);
rhs =y(24)/y(22);
residual(49)= lhs-rhs;
lhs =y(62);
rhs =1/y(51);
residual(50)= lhs-rhs;
lhs =y(63);
rhs =log(y(21));
residual(51)= lhs-rhs;
lhs =y(64);
rhs =y(20)*y(39)*(1+y(32)/y(34));
residual(52)= lhs-rhs;
lhs =y(65);
rhs =y(20)*y(29)*(1+y(22)/y(24));
residual(53)= lhs-rhs;
lhs =y(66);
rhs =log(y(52));
residual(54)= lhs-rhs;
lhs =y(67);
rhs =(y(24)*y(25)+y(34)*y(35))/(y(24)+y(34));
residual(55)= lhs-rhs;
lhs =y(68);
rhs =T167;
residual(56)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(56, 81);

  %
  % Jacobian matrix
  %

  g1(1,13)=1;
  g1(1,1)=(-(params(30)/((y(14)-params(30)*y(1))*(y(14)-params(30)*y(1)))));
  g1(1,14)=(-((-1)/((y(14)-params(30)*y(1))*(y(14)-params(30)*y(1)))-(-(params(30)*params(1)*(-params(30))))/((y(70)-y(14)*params(30))*(y(70)-y(14)*params(30)))));
  g1(1,70)=(-(params(30)*params(1)))/((y(70)-y(14)*params(30))*(y(70)-y(14)*params(30)));
  g1(2,13)=y(45);
  g1(2,15)=(-(params(4)*getPowerDeriv(y(15),params(5),1)));
  g1(2,45)=y(13);
  g1(3,13)=(-(y(30)*T375+(-params(9))/(y(13)*y(13))/y(42)));
  g1(3,69)=(-(y(30)*T394));
  g1(3,30)=(-T33);
  g1(3,42)=(-((-(params(9)/y(13)))/(y(42)*y(42))));
  g1(4,13)=(-(y(74)*T375));
  g1(4,69)=(-(y(74)*T394));
  g1(4,74)=(-T33);
  g1(5,13)=(-(y(46)*T375));
  g1(5,69)=(-(y(46)*T394));
  g1(5,46)=(-T33);
  g1(6,6)=(-1);
  g1(6,49)=1;
  g1(7,13)=(-(T78*y(76)*T74*params(6)*y(72)*T375));
  g1(7,69)=(-(T78*y(76)*T74*params(6)*y(72)*T394));
  g1(7,2)=(-(y(47)*((-(T53*T438*2*(T58-1)))-(T63*T438+T58*params(6)*T438))));
  g1(7,16)=(-(y(47)*((-(T53*2*(T58-1)*y(57)/y(2)))-(T63*y(57)/y(2)+T58*params(6)*y(57)/y(2)))+T78*y(76)*params(6)*T33*y(72)*(-(y(76)*y(71)))/(y(16)*y(16))+T76*(-y(71))/(y(16)*y(16))*2*y(71)/y(16)));
  g1(7,71)=(-(T78*y(76)*params(6)*T33*y(72)*y(76)/y(16)+T76*2*y(71)/y(16)*1/y(16)));
  g1(7,47)=(-(T62-T58*T63));
  g1(7,72)=(-(T78*y(76)*T74*T33*params(6)));
  g1(7,57)=(-(y(47)*((-(T53*2*(T58-1)*y(16)/y(2)))-(T63*y(16)/y(2)+T58*params(6)*y(16)/y(2)))));
  g1(7,76)=(-(T78*(params(6)*T33*y(72)*T74+y(76)*params(6)*T33*y(72)*y(71)/y(16))));
  g1(8,13)=(-((y(72)*(1-params(2))+y(73))*T375));
  g1(8,69)=(-((y(72)*(1-params(2))+y(73))*T394));
  g1(8,47)=1;
  g1(8,72)=(-(T33*(1-params(2))));
  g1(8,73)=(-T33);
  g1(9,2)=(-(y(16)*(-(T53*T438*2*(T58-1)))));
  g1(9,16)=(-(T62+y(16)*(-(T53*2*(T58-1)*y(57)/y(2)))));
  g1(9,3)=(-(1-params(2)));
  g1(9,18)=1;
  g1(9,57)=(-(y(16)*(-(T53*2*(T58-1)*y(16)/y(2)))));
  g1(10,15)=(-(y(50)*y(3)^(1-params(3))*getPowerDeriv(y(15),params(3)*(1-params(8)),1)));
  g1(10,17)=1;
  g1(10,3)=(-(T104*y(50)*getPowerDeriv(y(3),1-params(3),1)));
  g1(10,50)=(-(y(3)^(1-params(3))*T104));
  g1(11,15)=y(45);
  g1(11,4)=(-(params(3)*(1-params(8))));
  g1(11,21)=(-(params(3)*(1-params(8))));
  g1(11,45)=y(15);
  g1(12,3)=y(48);
  g1(12,4)=(-(1-params(3)));
  g1(12,21)=(-(1-params(3)));
  g1(12,48)=y(3);
  g1(13,4)=1;
  g1(13,22)=(-1);
  g1(13,32)=(-1);
  g1(14,21)=1;
  g1(14,24)=(-1);
  g1(14,34)=(-1);
  g1(15,17)=(-(1/(y(4)+y(21))));
  g1(15,4)=(-((-y(17))/((y(4)+y(21))*(y(4)+y(21)))));
  g1(15,20)=1;
  g1(15,21)=(-((-y(17))/((y(4)+y(21))*(y(4)+y(21)))));
  g1(16,4)=(-(params(3)*params(8)));
  g1(16,19)=1;
  g1(16,20)=(-(params(7)*(y(23)*(y(22)+y(24))+y(33)*(y(32)+y(34)))/y(56)));
  g1(16,21)=(-(params(3)*params(8)));
  g1(16,22)=(-(y(20)*params(7)*y(23)/y(56)));
  g1(16,23)=(-(y(20)*params(7)*(y(22)+y(24))/y(56)));
  g1(16,24)=(-(y(20)*params(7)*y(23)/y(56)));
  g1(16,32)=(-(y(20)*params(7)*y(33)/y(56)));
  g1(16,33)=(-(y(20)*params(7)*(y(32)+y(34))/y(56)));
  g1(16,34)=(-(y(20)*params(7)*y(33)/y(56)));
  g1(16,56)=(-((-(y(20)*params(7)*(y(23)*(y(22)+y(24))+y(33)*(y(32)+y(34)))))/(y(56)*y(56))));
  g1(17,22)=(y(22)*y(23)-y(23)*(y(22)+y(24)))/(y(22)*y(22));
  g1(17,23)=(y(22)+y(24))/y(22);
  g1(17,24)=y(23)/y(22);
  g1(17,32)=(-((y(32)*y(33)-y(33)*(y(32)+y(34)))/(y(32)*y(32))));
  g1(17,33)=(-((y(32)+y(34))/y(32)));
  g1(17,34)=(-(y(33)/y(32)));
  g1(18,24)=(-(params(16)*1/y(7)));
  g1(18,30)=(-1);
  g1(18,7)=(-(params(16)*(-y(24))/(y(7)*y(7))));
  g1(18,44)=1;
  g1(18,51)=params(16);
  g1(19,24)=(-1);
  g1(19,42)=1;
  g1(19,7)=1;
  g1(20,5)=(-params(12));
  g1(20,24)=(-(params(11)*T560));
  g1(20,30)=(-(params(11)*(-y(42))));
  g1(20,42)=(-(params(11)*(-y(30))));
  g1(20,7)=(-(params(11)*(-T734)));
  g1(20,43)=1;
  g1(20,44)=(-(y(24)*params(11)));
  g1(20,51)=(-(params(11)*(-(y(7)*params(16)*(-(2*(y(24)/y(7)-y(51))))))));
  g1(21,26)=1;
  g1(21,29)=(-(1/y(29)/y(53)));
  g1(21,53)=(-(0.5+(-log(y(29)))/(y(53)*y(53))));
  g1(22,25)=1;
  g1(22,26)=T597;
  g1(23,23)=1;
  g1(23,26)=(-(T603-y(29)*T597));
  g1(23,29)=T189;
  g1(23,53)=T603;
  g1(24,26)=(-(y(29)*T597+(1-params(14))*T602));
  g1(24,28)=1;
  g1(24,29)=(-T189);
  g1(24,53)=(-((1-params(14))*T603));
  g1(25,26)=T597;
  g1(25,27)=1;
  g1(26,26)=(-(T597-params(14)*normpdf(y(26),0,1)*(-y(26))/y(53)));
  g1(26,31)=1;
  g1(26,53)=(-(params(14)*normpdf(y(26),0,1)))/(y(53)*y(53));
  g1(27,20)=(y(22)+y(24))*y(28);
  g1(27,22)=y(20)*y(28);
  g1(27,24)=y(20)*y(28)-y(44);
  g1(27,28)=y(20)*(y(22)+y(24));
  g1(27,44)=(-y(24));
  g1(28,20)=(-((y(23)*T219-y(20)*y(23)*(-y(28)))/(T219*T219)));
  g1(28,23)=(-(y(20)/T219));
  g1(28,24)=(-((-(y(20)*y(23)*params(16)*2/y(7)))/(T219*T219)));
  g1(28,27)=(-1)/y(31);
  g1(28,28)=(-((-(y(20)*y(23)*(-y(20))))/(T219*T219)));
  g1(28,30)=(-((-(y(20)*y(23)))/(T219*T219)));
  g1(28,31)=y(27)/(y(31)*y(31));
  g1(28,7)=(-((-(y(20)*y(23)*params(16)*(-(2*y(24)))/(y(7)*y(7))))/(T219*T219)));
  g1(28,51)=(-((-(y(20)*y(23)*(-params(16))))/(T219*T219)));
  g1(29,36)=1;
  g1(29,39)=(-(1/y(39)/y(53)));
  g1(29,53)=(-(0.5+(-log(y(39)))/(y(53)*y(53))));
  g1(30,35)=1;
  g1(30,36)=T682;
  g1(31,33)=1;
  g1(31,36)=(-(T688-y(39)*T682));
  g1(31,39)=T234;
  g1(31,53)=T688;
  g1(32,36)=(-(y(39)*T682+(1-params(15))*T687));
  g1(32,38)=1;
  g1(32,39)=(-T234);
  g1(32,53)=(-((1-params(15))*T688));
  g1(33,36)=T682;
  g1(33,37)=1;
  g1(34,36)=(-(T682-params(15)*normpdf(y(36),0,1)*(-y(36))/y(53)));
  g1(34,41)=1;
  g1(34,53)=(-(params(15)*normpdf(y(36),0,1)))/(y(53)*y(53));
  g1(35,20)=(y(32)+y(34))*y(38);
  g1(35,32)=y(20)*y(38);
  g1(35,34)=y(20)*y(38)-y(40);
  g1(35,38)=y(20)*(y(32)+y(34));
  g1(35,40)=(-y(34));
  g1(36,20)=(-((y(33)*(y(40)-y(20)*y(38))-y(20)*y(33)*(-y(38)))/((y(40)-y(20)*y(38))*(y(40)-y(20)*y(38)))));
  g1(36,33)=(-(y(20)/(y(40)-y(20)*y(38))));
  g1(36,37)=(-1)/y(41);
  g1(36,38)=(-((-(y(20)*y(33)*(-y(20))))/((y(40)-y(20)*y(38))*(y(40)-y(20)*y(38)))));
  g1(36,40)=(-((-(y(20)*y(33)))/((y(40)-y(20)*y(38))*(y(40)-y(20)*y(38)))));
  g1(36,41)=y(37)/(y(41)*y(41));
  g1(37,14)=(-1);
  g1(37,16)=(-1);
  g1(37,17)=1;
  g1(38,8)=(-(params(18)*1/y(8)));
  g1(38,50)=1/y(50);
  g1(38,77)=1;
  g1(39,12)=(-(params(21)*1/y(12)));
  g1(39,57)=1/y(57);
  g1(39,80)=(-1);
  g1(40,9)=(-(params(26)*1/params(13)/(y(9)/params(13))));
  g1(40,51)=1/params(13)/(y(51)/params(13));
  g1(40,81)=1;
  g1(41,14)=(-1);
  g1(41,16)=(-1);
  g1(41,52)=1;
  g1(42,10)=(-(params(19)*1/y(10)));
  g1(42,53)=1/y(53);
  g1(42,78)=(-1);
  g1(43,11)=(-(params(20)*1/y(11)));
  g1(43,56)=1/y(56);
  g1(43,79)=(-1);
  g1(44,54)=(-1);
  g1(44,55)=1;
  g1(44,75)=(-params(1));
  g1(45,1)=(-((-params(30))/(y(14)-params(30)*y(1))));
  g1(45,14)=(-(1/(y(14)-params(30)*y(1))));
  g1(45,15)=params(4)*getPowerDeriv(y(15),1+params(5),1)/(1+params(5));
  g1(45,42)=(-(params(9)*1/y(42)));
  g1(45,54)=1;
  g1(46,24)=(-((-y(34))/((y(24)+y(34))*(y(24)+y(34)))));
  g1(46,34)=(-((y(24)+y(34)-y(34))/((y(24)+y(34))*(y(24)+y(34)))));
  g1(46,58)=1;
  g1(47,22)=(-((-(y(24)+y(34)))/((y(22)+y(32))*(y(22)+y(32)))));
  g1(47,24)=(-(1/(y(22)+y(32))));
  g1(47,32)=(-((-(y(24)+y(34)))/((y(22)+y(32))*(y(22)+y(32)))));
  g1(47,34)=(-(1/(y(22)+y(32))));
  g1(47,59)=1;
  g1(48,32)=(-((-y(34))/(y(32)*y(32))));
  g1(48,34)=(-(1/y(32)));
  g1(48,60)=1;
  g1(49,22)=(-((-y(24))/(y(22)*y(22))));
  g1(49,24)=(-(1/y(22)));
  g1(49,61)=1;
  g1(50,51)=(-((-1)/(y(51)*y(51))));
  g1(50,62)=1;
  g1(51,21)=(-(1/y(21)));
  g1(51,63)=1;
  g1(52,20)=(-(y(39)*(1+y(32)/y(34))));
  g1(52,32)=(-(y(20)*y(39)*1/y(34)));
  g1(52,34)=(-(y(20)*y(39)*(-y(32))/(y(34)*y(34))));
  g1(52,39)=(-(y(20)*(1+y(32)/y(34))));
  g1(52,64)=1;
  g1(53,20)=(-(y(29)*(1+y(22)/y(24))));
  g1(53,22)=(-(y(20)*y(29)*1/y(24)));
  g1(53,24)=(-(y(20)*y(29)*(-y(22))/(y(24)*y(24))));
  g1(53,29)=(-(y(20)*(1+y(22)/y(24))));
  g1(53,65)=1;
  g1(54,52)=(-(1/y(52)));
  g1(54,66)=1;
  g1(55,24)=(-(((y(24)+y(34))*y(25)-(y(24)*y(25)+y(34)*y(35)))/((y(24)+y(34))*(y(24)+y(34)))));
  g1(55,25)=(-(y(24)/(y(24)+y(34))));
  g1(55,34)=(-(((y(24)+y(34))*y(35)-(y(24)*y(25)+y(34)*y(35)))/((y(24)+y(34))*(y(24)+y(34)))));
  g1(55,35)=(-(y(34)/(y(24)+y(34))));
  g1(55,67)=1;
  g1(56,24)=(-T560);
  g1(56,30)=y(42);
  g1(56,42)=y(30);
  g1(56,7)=T734;
  g1(56,44)=(-y(24));
  g1(56,51)=y(7)*params(16)*(-(2*(y(24)/y(7)-y(51))));
  g1(56,68)=1;
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],56,6561);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],56,531441);
end
end
