function [residual, g1, g2, g3] = flm_base_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [nperiods by M_.exo_nbr] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   steady_state  [M_.endo_nbr by 1] double       vector of steady state values
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations.
%                                          Dynare may prepend auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(28, 1);
XI__ = 1-params(1);
MU__ = params(4)/(params(4)-1);
T38 = params(5)*y(14)*exp(y(43))/exp(y(33));
T41 = (y(37)/y(11))^(-1);
T47 = y(16)^(1-params(1));
T49 = y(17)^params(1);
T52 = y(9)^(1-params(1));
T53 = y(12)^params(1);
T58 = y(18)^(1-params(1));
T60 = y(12)/y(1);
T62 = (y(15)*T60)^params(1);
T68 = y(39)^(params(4)-1);
T80 = y(39)^params(4);
T88 = y(20)/y(19);
T100 = y(18)^params(4);
T107 = y(23)^(1-params(2));
T108 = y(12)^params(2);
T115 = exp(y(34))*(1-params(2))^(1-params(2))*params(2)^params(2);
T120 = y(24)^params(3);
T131 = 1/params(5)*y(15)^params(7);
T133 = y(18)^params(8);
T134 = T131*T133;
T136 = T60^params(9);
T137 = T134*T136;
T141 = (y(10)/(steady_state(2)))^params(10);
T170 = 1-y(28)/XI__;
T171 = 1/T170;
T172 = 1/exp(y(31))*T171;
T225 = exp(y(33))*(log(y(11))-y(24)^(1+params(3))/(1+params(3)));
lhs =y(9)*y(10);
rhs =y(11)+y(12)*y(13)+y(32);
residual(1)= lhs-rhs;
lhs =1;
rhs =T38*T41/y(38);
residual(2)= lhs-rhs;
lhs =y(11);
rhs =T47*T49;
residual(3)= lhs-rhs;
lhs =1;
rhs =T52*T53;
residual(4)= lhs-rhs;
lhs =y(15);
rhs =T58*T62;
residual(5)= lhs-rhs;
lhs =y(19);
rhs =y(10)/y(11)+params(6)*params(5)*T68*y(40);
residual(6)= lhs-rhs;
lhs =y(20);
rhs =y(10)*MU__/y(11)*y(22)+params(6)*params(5)*T80*y(41);
residual(7)= lhs-rhs;
lhs =params(6)*y(18)^(params(4)-1);
rhs =1-(1-params(6))*T88^(1-params(4));
residual(8)= lhs-rhs;
lhs =y(21);
rhs =(1-params(6))*T88^(-params(4))+params(6)*y(2)*T100;
residual(9)= lhs-rhs;
lhs =y(22);
rhs =T107*T108/T115;
residual(10)= lhs-rhs;
lhs =y(23);
rhs =y(11)*T120;
residual(11)= lhs-rhs;
lhs =y(24);
rhs =y(21)*y(10)*y(22)*(1-params(2))/y(23);
residual(12)= lhs-rhs;
lhs =y(14);
rhs =T137*T141*exp(y(35));
residual(13)= lhs-rhs;
lhs =y(25);
rhs =y(13)+y(17)-y(26);
residual(14)= lhs-rhs;
lhs =y(17);
rhs =params(1)*y(11)/y(12);
residual(15)= lhs-rhs;
lhs =y(13);
rhs =y(21)*y(10)*y(22)*params(2)/y(12);
residual(16)= lhs-rhs;
lhs =y(26);
rhs =y(12)*y(27)*exp(y(31));
residual(17)= lhs-rhs;
lhs =y(12);
rhs =T172^XI__;
residual(18)= lhs-rhs;
lhs =y(28);
rhs =y(25)/(y(25)+2*y(26));
residual(19)= lhs-rhs;
lhs =y(31);
rhs =params(14)*y(3)-x(it_, 1);
residual(20)= lhs-rhs;
lhs =y(36);
rhs =params(15)*y(8)+x(it_, 2);
residual(21)= lhs-rhs;
lhs =y(34);
rhs =params(16)*y(6)+x(it_, 3);
residual(22)= lhs-rhs;
lhs =y(33);
rhs =params(17)*y(5)+x(it_, 4);
residual(23)= lhs-rhs;
lhs =y(35);
rhs =params(19)*y(7)+x(it_, 5);
residual(24)= lhs-rhs;
lhs =y(32);
rhs =params(17)*y(4)+x(it_, 6);
residual(25)= lhs-rhs;
lhs =y(27);
rhs =params(29)*exp(y(36));
residual(26)= lhs-rhs;
lhs =y(29);
rhs =T225;
residual(27)= lhs-rhs;
lhs =y(30);
rhs =y(29)+params(5)*y(42);
residual(28)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(28, 49);

  %
  % Jacobian matrix
  %

T232 = getPowerDeriv(y(9),1-params(1),1);
T235 = 1/y(11);
T244 = 1/(steady_state(2))*getPowerDeriv(y(10)/(steady_state(2)),params(10),1);
T253 = getPowerDeriv(y(37)/y(11),(-1),1);
T254 = (-y(37))/(y(11)*y(11))*T253;
T276 = (-y(12))/(y(1)*y(1));
T277 = y(15)*T276;
T278 = getPowerDeriv(y(15)*T60,params(1),1);
T282 = getPowerDeriv(T60,params(9),1);
T289 = getPowerDeriv(y(12),params(1),1);
T292 = 1/y(1);
T293 = y(15)*T292;
T297 = getPowerDeriv(y(12),params(2),1);
T318 = params(5)*exp(y(43))/exp(y(33));
T326 = 1/params(5)*getPowerDeriv(y(15),params(7),1);
T327 = T133*T326;
T328 = T136*T327;
T336 = getPowerDeriv(y(16),1-params(1),1);
T339 = getPowerDeriv(y(17),params(1),1);
T342 = getPowerDeriv(y(18),1-params(1),1);
T347 = getPowerDeriv(y(18),params(4),1);
T350 = getPowerDeriv(y(18),params(8),1);
T351 = T131*T350;
T352 = T136*T351;
T356 = getPowerDeriv(y(39),params(4)-1,1);
T360 = getPowerDeriv(y(39),params(4),1);
T366 = (-y(20))/(y(19)*y(19));
T367 = getPowerDeriv(T88,1-params(4),1);
T371 = getPowerDeriv(T88,(-params(4)),1);
T377 = 1/y(19);
T399 = getPowerDeriv(y(23),1-params(2),1);
T409 = getPowerDeriv(y(24),params(3),1);
T416 = (-(exp(y(33))*(-(getPowerDeriv(y(24),1+params(3),1)/(1+params(3))))));
T430 = 1/XI__/(T170*T170);
T431 = 1/exp(y(31))*T430;
T432 = getPowerDeriv(T172,XI__,1);
T441 = T171*(-exp(y(31)))/(exp(y(31))*exp(y(31)));
T448 = (-(params(5)*y(14)*exp(y(43))*exp(y(33))))/(exp(y(33))*exp(y(33)));
  g1(1,9)=y(10);
  g1(1,10)=y(9);
  g1(1,11)=(-1);
  g1(1,12)=(-y(13));
  g1(1,13)=(-y(12));
  g1(1,32)=(-1);
  g1(2,11)=(-(T38*T254/y(38)));
  g1(2,37)=(-(T38*T235*T253/y(38)));
  g1(2,14)=(-(T41*T318/y(38)));
  g1(2,38)=(-((-(T38*T41))/(y(38)*y(38))));
  g1(2,33)=(-(T41*T448/y(38)));
  g1(2,43)=(-(T38*T41/y(38)));
  g1(3,11)=1;
  g1(3,16)=(-(T49*T336));
  g1(3,17)=(-(T47*T339));
  g1(4,9)=(-(T53*T232));
  g1(4,12)=(-(T52*T289));
  g1(5,1)=(-(T58*T277*T278));
  g1(5,12)=(-(T58*T278*T293));
  g1(5,15)=1-T58*T60*T278;
  g1(5,18)=(-(T62*T342));
  g1(6,10)=(-T235);
  g1(6,11)=(-((-y(10))/(y(11)*y(11))));
  g1(6,39)=(-(params(6)*params(5)*y(40)*T356));
  g1(6,19)=1;
  g1(6,40)=(-(params(6)*params(5)*T68));
  g1(7,10)=(-(y(22)*MU__/y(11)));
  g1(7,11)=(-(y(22)*(-(y(10)*MU__))/(y(11)*y(11))));
  g1(7,39)=(-(params(6)*params(5)*y(41)*T360));
  g1(7,20)=1;
  g1(7,41)=(-(params(6)*params(5)*T80));
  g1(7,22)=(-(y(10)*MU__/y(11)));
  g1(8,18)=params(6)*getPowerDeriv(y(18),params(4)-1,1);
  g1(8,19)=(1-params(6))*T366*T367;
  g1(8,20)=(1-params(6))*T367*T377;
  g1(9,18)=(-(params(6)*y(2)*T347));
  g1(9,19)=(-((1-params(6))*T366*T371));
  g1(9,20)=(-((1-params(6))*T371*T377));
  g1(9,2)=(-(params(6)*T100));
  g1(9,21)=1;
  g1(10,12)=(-(T107*T297/T115));
  g1(10,22)=1;
  g1(10,23)=(-(T108*T399/T115));
  g1(10,34)=(-((-(T107*T108*T115))/(T115*T115)));
  g1(11,11)=(-T120);
  g1(11,23)=1;
  g1(11,24)=(-(y(11)*T409));
  g1(12,10)=(-(y(21)*y(22)*(1-params(2))/y(23)));
  g1(12,21)=(-(y(10)*y(22)*(1-params(2))/y(23)));
  g1(12,22)=(-(y(21)*y(10)*(1-params(2))/y(23)));
  g1(12,23)=(-(y(21)*y(10)*(-(y(22)*(1-params(2))))/(y(23)*y(23))));
  g1(12,24)=1;
  g1(13,10)=(-(exp(y(35))*T137*T244));
  g1(13,1)=(-(exp(y(35))*T141*T134*T276*T282));
  g1(13,12)=(-(exp(y(35))*T141*T134*T282*T292));
  g1(13,14)=1;
  g1(13,15)=(-(exp(y(35))*T141*T328));
  g1(13,18)=(-(exp(y(35))*T141*T352));
  g1(13,35)=(-(T137*T141*exp(y(35))));
  g1(14,13)=(-1);
  g1(14,17)=(-1);
  g1(14,25)=1;
  g1(14,26)=1;
  g1(15,11)=(-(params(1)/y(12)));
  g1(15,12)=(-((-(params(1)*y(11)))/(y(12)*y(12))));
  g1(15,17)=1;
  g1(16,10)=(-(y(21)*y(22)*params(2)/y(12)));
  g1(16,12)=(-(y(21)*y(10)*(-(y(22)*params(2)))/(y(12)*y(12))));
  g1(16,13)=1;
  g1(16,21)=(-(y(10)*y(22)*params(2)/y(12)));
  g1(16,22)=(-(y(21)*y(10)*params(2)/y(12)));
  g1(17,12)=(-(y(27)*exp(y(31))));
  g1(17,26)=1;
  g1(17,27)=(-(y(12)*exp(y(31))));
  g1(17,31)=(-(y(12)*y(27)*exp(y(31))));
  g1(18,12)=1;
  g1(18,28)=(-(T431*T432));
  g1(18,31)=(-(T432*T441));
  g1(19,25)=(-((y(25)+2*y(26)-y(25))/((y(25)+2*y(26))*(y(25)+2*y(26)))));
  g1(19,26)=(-((-(2*y(25)))/((y(25)+2*y(26))*(y(25)+2*y(26)))));
  g1(19,28)=1;
  g1(20,3)=(-params(14));
  g1(20,31)=1;
  g1(20,44)=1;
  g1(21,8)=(-params(15));
  g1(21,36)=1;
  g1(21,45)=(-1);
  g1(22,6)=(-params(16));
  g1(22,34)=1;
  g1(22,46)=(-1);
  g1(23,5)=(-params(17));
  g1(23,33)=1;
  g1(23,47)=(-1);
  g1(24,7)=(-params(19));
  g1(24,35)=1;
  g1(24,48)=(-1);
  g1(25,4)=(-params(17));
  g1(25,32)=1;
  g1(25,49)=(-1);
  g1(26,27)=1;
  g1(26,36)=(-(params(29)*exp(y(36))));
  g1(27,11)=(-(exp(y(33))*T235));
  g1(27,24)=T416;
  g1(27,29)=1;
  g1(27,33)=(-T225);
  g1(28,29)=(-1);
  g1(28,30)=1;
  g1(28,42)=(-params(5));

if nargout >= 3,
  %
  % Hessian matrix
  %

  v2 = zeros(191,3);
T469 = getPowerDeriv(y(37)/y(11),(-1),2);
T470 = (-y(37))/(y(11)*y(11))*T469;
T556 = getPowerDeriv(y(15)*T60,params(1),2);
T557 = T277*T556;
T632 = getPowerDeriv(T88,1-params(4),2);
T633 = T366*T632;
T649 = getPowerDeriv(T88,(-params(4)),2);
T650 = T366*T649;
T726 = getPowerDeriv(T60,params(9),2);
T727 = T276*T726;
T825 = getPowerDeriv(T172,XI__,2);
T826 = T431*T825;
  v2(1,1)=1;
  v2(1,2)=450;
  v2(1,3)=1;
  v2(2,1)=1;
  v2(2,2)=402;
  v2(2,3)=  v2(1,3);
  v2(3,1)=1;
  v2(3,2)=600;
  v2(3,3)=(-1);
  v2(4,1)=1;
  v2(4,2)=552;
  v2(4,3)=  v2(3,3);
  v2(5,1)=2;
  v2(5,2)=501;
  v2(5,3)=(-(T38*(T253*(-((-y(37))*(y(11)+y(11))))/(y(11)*y(11)*y(11)*y(11))+(-y(37))/(y(11)*y(11))*T470)/y(38)));
  v2(6,1)=2;
  v2(6,2)=1775;
  v2(6,3)=(-(T38*(T253*(-1)/(y(11)*y(11))+T235*T470)/y(38)));
  v2(7,1)=2;
  v2(7,2)=527;
  v2(7,3)=  v2(6,3);
  v2(8,1)=2;
  v2(8,2)=1801;
  v2(8,3)=(-(T38*T235*T235*T469/y(38)));
  v2(9,1)=2;
  v2(9,2)=648;
  v2(9,3)=(-(T254*T318/y(38)));
  v2(10,1)=2;
  v2(10,2)=504;
  v2(10,3)=  v2(9,3);
  v2(11,1)=2;
  v2(11,2)=674;
  v2(11,3)=(-(T235*T253*T318/y(38)));
  v2(12,1)=2;
  v2(12,2)=1778;
  v2(12,3)=  v2(11,3);
  v2(13,1)=2;
  v2(13,2)=1824;
  v2(13,3)=(-((-(T38*T254))/(y(38)*y(38))));
  v2(14,1)=2;
  v2(14,2)=528;
  v2(14,3)=  v2(13,3);
  v2(15,1)=2;
  v2(15,2)=1850;
  v2(15,3)=(-((-(T38*T235*T253))/(y(38)*y(38))));
  v2(16,1)=2;
  v2(16,2)=1802;
  v2(16,3)=  v2(15,3);
  v2(17,1)=2;
  v2(17,2)=1827;
  v2(17,3)=(-((-(T41*T318))/(y(38)*y(38))));
  v2(18,1)=2;
  v2(18,2)=675;
  v2(18,3)=  v2(17,3);
  v2(19,1)=2;
  v2(19,2)=1851;
  v2(19,3)=(-((-((-(T38*T41))*(y(38)+y(38))))/(y(38)*y(38)*y(38)*y(38))));
  v2(20,1)=2;
  v2(20,2)=1579;
  v2(20,3)=(-(T254*T448/y(38)));
  v2(21,1)=2;
  v2(21,2)=523;
  v2(21,3)=  v2(20,3);
  v2(22,1)=2;
  v2(22,2)=1605;
  v2(22,3)=(-(T235*T253*T448/y(38)));
  v2(23,1)=2;
  v2(23,2)=1797;
  v2(23,3)=  v2(22,3);
  v2(24,1)=2;
  v2(24,2)=1582;
  v2(24,3)=(-(T41*(-(exp(y(33))*params(5)*exp(y(43))))/(exp(y(33))*exp(y(33)))/y(38)));
  v2(25,1)=2;
  v2(25,2)=670;
  v2(25,3)=  v2(24,3);
  v2(26,1)=2;
  v2(26,2)=1606;
  v2(26,3)=(-((-(T41*T448))/(y(38)*y(38))));
  v2(27,1)=2;
  v2(27,2)=1846;
  v2(27,3)=  v2(26,3);
  v2(28,1)=2;
  v2(28,2)=1601;
  v2(28,3)=(-(T41*((-(params(5)*y(14)*exp(y(43))*exp(y(33))))*exp(y(33))*exp(y(33))-(-(params(5)*y(14)*exp(y(43))*exp(y(33))))*(exp(y(33))*exp(y(33))+exp(y(33))*exp(y(33))))/(exp(y(33))*exp(y(33))*exp(y(33))*exp(y(33)))/y(38)));
  v2(29,1)=2;
  v2(29,2)=2069;
  v2(29,3)=(-(T38*T254/y(38)));
  v2(30,1)=2;
  v2(30,2)=533;
  v2(30,3)=  v2(29,3);
  v2(31,1)=2;
  v2(31,2)=2095;
  v2(31,3)=(-(T38*T235*T253/y(38)));
  v2(32,1)=2;
  v2(32,2)=1807;
  v2(32,3)=  v2(31,3);
  v2(33,1)=2;
  v2(33,2)=2072;
  v2(33,3)=(-(T41*T318/y(38)));
  v2(34,1)=2;
  v2(34,2)=680;
  v2(34,3)=  v2(33,3);
  v2(35,1)=2;
  v2(35,2)=2096;
  v2(35,3)=(-((-(T38*T41))/(y(38)*y(38))));
  v2(36,1)=2;
  v2(36,2)=1856;
  v2(36,3)=  v2(35,3);
  v2(37,1)=2;
  v2(37,2)=2091;
  v2(37,3)=(-(T41*T448/y(38)));
  v2(38,1)=2;
  v2(38,2)=1611;
  v2(38,3)=  v2(37,3);
  v2(39,1)=2;
  v2(39,2)=2101;
  v2(39,3)=(-(T38*T41/y(38)));
  v2(40,1)=3;
  v2(40,2)=751;
  v2(40,3)=(-(T49*getPowerDeriv(y(16),1-params(1),2)));
  v2(41,1)=3;
  v2(41,2)=800;
  v2(41,3)=(-(T336*T339));
  v2(42,1)=3;
  v2(42,2)=752;
  v2(42,3)=  v2(41,3);
  v2(43,1)=3;
  v2(43,2)=801;
  v2(43,3)=(-(T47*getPowerDeriv(y(17),params(1),2)));
  v2(44,1)=4;
  v2(44,2)=401;
  v2(44,3)=(-(T53*getPowerDeriv(y(9),1-params(1),2)));
  v2(45,1)=4;
  v2(45,2)=548;
  v2(45,3)=(-(T232*T289));
  v2(46,1)=4;
  v2(46,2)=404;
  v2(46,3)=  v2(45,3);
  v2(47,1)=4;
  v2(47,2)=551;
  v2(47,3)=(-(T52*getPowerDeriv(y(12),params(1),2)));
  v2(48,1)=5;
  v2(48,2)=1;
  v2(48,3)=(-(T58*(T278*y(15)*(-((-y(12))*(y(1)+y(1))))/(y(1)*y(1)*y(1)*y(1))+T277*T557)));
  v2(49,1)=5;
  v2(49,2)=540;
  v2(49,3)=(-(T58*(T293*T557+T278*y(15)*(-1)/(y(1)*y(1)))));
  v2(50,1)=5;
  v2(50,2)=12;
  v2(50,3)=  v2(49,3);
  v2(51,1)=5;
  v2(51,2)=551;
  v2(51,3)=(-(T58*T293*T293*T556));
  v2(52,1)=5;
  v2(52,2)=687;
  v2(52,3)=(-(T58*(T276*T278+T60*T557)));
  v2(53,1)=5;
  v2(53,2)=15;
  v2(53,3)=  v2(52,3);
  v2(54,1)=5;
  v2(54,2)=698;
  v2(54,3)=(-(T58*(T278*T292+T60*T293*T556)));
  v2(55,1)=5;
  v2(55,2)=554;
  v2(55,3)=  v2(54,3);
  v2(56,1)=5;
  v2(56,2)=701;
  v2(56,3)=(-(T58*T60*T60*T556));
  v2(57,1)=5;
  v2(57,2)=834;
  v2(57,3)=(-(T277*T278*T342));
  v2(58,1)=5;
  v2(58,2)=18;
  v2(58,3)=  v2(57,3);
  v2(59,1)=5;
  v2(59,2)=845;
  v2(59,3)=(-(T278*T293*T342));
  v2(60,1)=5;
  v2(60,2)=557;
  v2(60,3)=  v2(59,3);
  v2(61,1)=5;
  v2(61,2)=848;
  v2(61,3)=(-(T60*T278*T342));
  v2(62,1)=5;
  v2(62,2)=704;
  v2(62,3)=  v2(61,3);
  v2(63,1)=5;
  v2(63,2)=851;
  v2(63,3)=(-(T62*getPowerDeriv(y(18),1-params(1),2)));
  v2(64,1)=6;
  v2(64,2)=500;
  v2(64,3)=(-((-1)/(y(11)*y(11))));
  v2(65,1)=6;
  v2(65,2)=452;
  v2(65,3)=  v2(64,3);
  v2(66,1)=6;
  v2(66,2)=501;
  v2(66,3)=(-((-((-y(10))*(y(11)+y(11))))/(y(11)*y(11)*y(11)*y(11))));
  v2(67,1)=6;
  v2(67,2)=1901;
  v2(67,3)=(-(params(6)*params(5)*y(40)*getPowerDeriv(y(39),params(4)-1,2)));
  v2(68,1)=6;
  v2(68,2)=1950;
  v2(68,3)=(-(params(6)*params(5)*T356));
  v2(69,1)=6;
  v2(69,2)=1902;
  v2(69,3)=  v2(68,3);
  v2(70,1)=7;
  v2(70,2)=500;
  v2(70,3)=(-(y(22)*(-MU__)/(y(11)*y(11))));
  v2(71,1)=7;
  v2(71,2)=452;
  v2(71,3)=  v2(70,3);
  v2(72,1)=7;
  v2(72,2)=501;
  v2(72,3)=(-(y(22)*(-((-(y(10)*MU__))*(y(11)+y(11))))/(y(11)*y(11)*y(11)*y(11))));
  v2(73,1)=7;
  v2(73,2)=1901;
  v2(73,3)=(-(params(6)*params(5)*y(41)*getPowerDeriv(y(39),params(4),2)));
  v2(74,1)=7;
  v2(74,2)=1999;
  v2(74,3)=(-(params(6)*params(5)*T360));
  v2(75,1)=7;
  v2(75,2)=1903;
  v2(75,3)=  v2(74,3);
  v2(76,1)=7;
  v2(76,2)=1039;
  v2(76,3)=(-(MU__/y(11)));
  v2(77,1)=7;
  v2(77,2)=463;
  v2(77,3)=  v2(76,3);
  v2(78,1)=7;
  v2(78,2)=1040;
  v2(78,3)=(-((-(y(10)*MU__))/(y(11)*y(11))));
  v2(79,1)=7;
  v2(79,2)=512;
  v2(79,3)=  v2(78,3);
  v2(80,1)=8;
  v2(80,2)=851;
  v2(80,3)=params(6)*getPowerDeriv(y(18),params(4)-1,2);
  v2(81,1)=8;
  v2(81,2)=901;
  v2(81,3)=(1-params(6))*(T367*(-((-y(20))*(y(19)+y(19))))/(y(19)*y(19)*y(19)*y(19))+T366*T633);
  v2(82,1)=8;
  v2(82,2)=950;
  v2(82,3)=(1-params(6))*(T377*T633+T367*(-1)/(y(19)*y(19)));
  v2(83,1)=8;
  v2(83,2)=902;
  v2(83,3)=  v2(82,3);
  v2(84,1)=8;
  v2(84,2)=951;
  v2(84,3)=(1-params(6))*T377*T377*T632;
  v2(85,1)=9;
  v2(85,2)=851;
  v2(85,3)=(-(params(6)*y(2)*getPowerDeriv(y(18),params(4),2)));
  v2(86,1)=9;
  v2(86,2)=901;
  v2(86,3)=(-((1-params(6))*(T371*(-((-y(20))*(y(19)+y(19))))/(y(19)*y(19)*y(19)*y(19))+T366*T650)));
  v2(87,1)=9;
  v2(87,2)=950;
  v2(87,3)=(-((1-params(6))*(T377*T650+T371*(-1)/(y(19)*y(19)))));
  v2(88,1)=9;
  v2(88,2)=902;
  v2(88,3)=  v2(87,3);
  v2(89,1)=9;
  v2(89,2)=951;
  v2(89,3)=(-((1-params(6))*T377*T377*T649));
  v2(90,1)=9;
  v2(90,2)=67;
  v2(90,3)=(-(params(6)*T347));
  v2(91,1)=9;
  v2(91,2)=835;
  v2(91,3)=  v2(90,3);
  v2(92,1)=10;
  v2(92,2)=551;
  v2(92,3)=(-(T107*getPowerDeriv(y(12),params(2),2)/T115));
  v2(93,1)=10;
  v2(93,2)=1090;
  v2(93,3)=(-(T297*T399/T115));
  v2(94,1)=10;
  v2(94,2)=562;
  v2(94,3)=  v2(93,3);
  v2(95,1)=10;
  v2(95,2)=1101;
  v2(95,3)=(-(T108*getPowerDeriv(y(23),1-params(2),2)/T115));
  v2(96,1)=10;
  v2(96,2)=1629;
  v2(96,3)=(-((-(T115*T107*T297))/(T115*T115)));
  v2(97,1)=10;
  v2(97,2)=573;
  v2(97,3)=  v2(96,3);
  v2(98,1)=10;
  v2(98,2)=1640;
  v2(98,3)=(-((-(T115*T108*T399))/(T115*T115)));
  v2(99,1)=10;
  v2(99,2)=1112;
  v2(99,3)=  v2(98,3);
  v2(100,1)=10;
  v2(100,2)=1651;
  v2(100,3)=(-(((-(T107*T108*T115))*T115*T115-(-(T107*T108*T115))*(T115*T115+T115*T115))/(T115*T115*T115*T115)));
  v2(101,1)=11;
  v2(101,2)=1138;
  v2(101,3)=(-T409);
  v2(102,1)=11;
  v2(102,2)=514;
  v2(102,3)=  v2(101,3);
  v2(103,1)=11;
  v2(103,2)=1151;
  v2(103,3)=(-(y(11)*getPowerDeriv(y(24),params(3),2)));
  v2(104,1)=12;
  v2(104,2)=990;
  v2(104,3)=(-(y(22)*(1-params(2))/y(23)));
  v2(105,1)=12;
  v2(105,2)=462;
  v2(105,3)=  v2(104,3);
  v2(106,1)=12;
  v2(106,2)=1039;
  v2(106,3)=(-(y(21)*(1-params(2))/y(23)));
  v2(107,1)=12;
  v2(107,2)=463;
  v2(107,3)=  v2(106,3);
  v2(108,1)=12;
  v2(108,2)=1050;
  v2(108,3)=(-(y(10)*(1-params(2))/y(23)));
  v2(109,1)=12;
  v2(109,2)=1002;
  v2(109,3)=  v2(108,3);
  v2(110,1)=12;
  v2(110,2)=1088;
  v2(110,3)=(-(y(21)*(-(y(22)*(1-params(2))))/(y(23)*y(23))));
  v2(111,1)=12;
  v2(111,2)=464;
  v2(111,3)=  v2(110,3);
  v2(112,1)=12;
  v2(112,2)=1099;
  v2(112,3)=(-(y(10)*(-(y(22)*(1-params(2))))/(y(23)*y(23))));
  v2(113,1)=12;
  v2(113,2)=1003;
  v2(113,3)=  v2(112,3);
  v2(114,1)=12;
  v2(114,2)=1100;
  v2(114,3)=(-(y(21)*y(10)*(-(1-params(2)))/(y(23)*y(23))));
  v2(115,1)=12;
  v2(115,2)=1052;
  v2(115,3)=  v2(114,3);
  v2(116,1)=12;
  v2(116,2)=1101;
  v2(116,3)=(-(y(21)*y(10)*(-((-(y(22)*(1-params(2))))*(y(23)+y(23))))/(y(23)*y(23)*y(23)*y(23))));
  v2(117,1)=13;
  v2(117,2)=451;
  v2(117,3)=(-(exp(y(35))*T137*1/(steady_state(2))*1/(steady_state(2))*getPowerDeriv(y(10)/(steady_state(2)),params(10),2)));
  v2(118,1)=13;
  v2(118,2)=10;
  v2(118,3)=(-(exp(y(35))*T244*T134*T276*T282));
  v2(119,1)=13;
  v2(119,2)=442;
  v2(119,3)=  v2(118,3);
  v2(120,1)=13;
  v2(120,2)=1;
  v2(120,3)=(-(exp(y(35))*T141*T134*(T282*(-((-y(12))*(y(1)+y(1))))/(y(1)*y(1)*y(1)*y(1))+T276*T727)));
  v2(121,1)=13;
  v2(121,2)=549;
  v2(121,3)=(-(exp(y(35))*T244*T134*T282*T292));
  v2(122,1)=13;
  v2(122,2)=453;
  v2(122,3)=  v2(121,3);
  v2(123,1)=13;
  v2(123,2)=540;
  v2(123,3)=(-(exp(y(35))*T141*T134*(T292*T727+T282*(-1)/(y(1)*y(1)))));
  v2(124,1)=13;
  v2(124,2)=12;
  v2(124,3)=  v2(123,3);
  v2(125,1)=13;
  v2(125,2)=551;
  v2(125,3)=(-(exp(y(35))*T141*T134*T292*T292*T726));
  v2(126,1)=13;
  v2(126,2)=696;
  v2(126,3)=(-(exp(y(35))*T244*T328));
  v2(127,1)=13;
  v2(127,2)=456;
  v2(127,3)=  v2(126,3);
  v2(128,1)=13;
  v2(128,2)=687;
  v2(128,3)=(-(exp(y(35))*T141*T276*T282*T327));
  v2(129,1)=13;
  v2(129,2)=15;
  v2(129,3)=  v2(128,3);
  v2(130,1)=13;
  v2(130,2)=698;
  v2(130,3)=(-(exp(y(35))*T141*T282*T292*T327));
  v2(131,1)=13;
  v2(131,2)=554;
  v2(131,3)=  v2(130,3);
  v2(132,1)=13;
  v2(132,2)=701;
  v2(132,3)=(-(exp(y(35))*T141*T136*T133*1/params(5)*getPowerDeriv(y(15),params(7),2)));
  v2(133,1)=13;
  v2(133,2)=843;
  v2(133,3)=(-(exp(y(35))*T244*T352));
  v2(134,1)=13;
  v2(134,2)=459;
  v2(134,3)=  v2(133,3);
  v2(135,1)=13;
  v2(135,2)=834;
  v2(135,3)=(-(exp(y(35))*T141*T276*T282*T351));
  v2(136,1)=13;
  v2(136,2)=18;
  v2(136,3)=  v2(135,3);
  v2(137,1)=13;
  v2(137,2)=845;
  v2(137,3)=(-(exp(y(35))*T141*T282*T292*T351));
  v2(138,1)=13;
  v2(138,2)=557;
  v2(138,3)=  v2(137,3);
  v2(139,1)=13;
  v2(139,2)=848;
  v2(139,3)=(-(exp(y(35))*T141*T136*T326*T350));
  v2(140,1)=13;
  v2(140,2)=704;
  v2(140,3)=  v2(139,3);
  v2(141,1)=13;
  v2(141,2)=851;
  v2(141,3)=(-(exp(y(35))*T141*T136*T131*getPowerDeriv(y(18),params(8),2)));
  v2(142,1)=13;
  v2(142,2)=1676;
  v2(142,3)=(-(exp(y(35))*T137*T244));
  v2(143,1)=13;
  v2(143,2)=476;
  v2(143,3)=  v2(142,3);
  v2(144,1)=13;
  v2(144,2)=1667;
  v2(144,3)=(-(exp(y(35))*T141*T134*T276*T282));
  v2(145,1)=13;
  v2(145,2)=35;
  v2(145,3)=  v2(144,3);
  v2(146,1)=13;
  v2(146,2)=1678;
  v2(146,3)=(-(exp(y(35))*T141*T134*T282*T292));
  v2(147,1)=13;
  v2(147,2)=574;
  v2(147,3)=  v2(146,3);
  v2(148,1)=13;
  v2(148,2)=1681;
  v2(148,3)=(-(exp(y(35))*T141*T328));
  v2(149,1)=13;
  v2(149,2)=721;
  v2(149,3)=  v2(148,3);
  v2(150,1)=13;
  v2(150,2)=1684;
  v2(150,3)=(-(exp(y(35))*T141*T352));
  v2(151,1)=13;
  v2(151,2)=868;
  v2(151,3)=  v2(150,3);
  v2(152,1)=13;
  v2(152,2)=1701;
  v2(152,3)=(-(T137*T141*exp(y(35))));
  v2(153,1)=15;
  v2(153,2)=550;
  v2(153,3)=(-((-params(1))/(y(12)*y(12))));
  v2(154,1)=15;
  v2(154,2)=502;
  v2(154,3)=  v2(153,3);
  v2(155,1)=15;
  v2(155,2)=551;
  v2(155,3)=(-((-((-(params(1)*y(11)))*(y(12)+y(12))))/(y(12)*y(12)*y(12)*y(12))));
  v2(156,1)=16;
  v2(156,2)=549;
  v2(156,3)=(-(y(21)*(-(y(22)*params(2)))/(y(12)*y(12))));
  v2(157,1)=16;
  v2(157,2)=453;
  v2(157,3)=  v2(156,3);
  v2(158,1)=16;
  v2(158,2)=551;
  v2(158,3)=(-(y(21)*y(10)*(-((-(y(22)*params(2)))*(y(12)+y(12))))/(y(12)*y(12)*y(12)*y(12))));
  v2(159,1)=16;
  v2(159,2)=990;
  v2(159,3)=(-(y(22)*params(2)/y(12)));
  v2(160,1)=16;
  v2(160,2)=462;
  v2(160,3)=  v2(159,3);
  v2(161,1)=16;
  v2(161,2)=992;
  v2(161,3)=(-(y(10)*(-(y(22)*params(2)))/(y(12)*y(12))));
  v2(162,1)=16;
  v2(162,2)=560;
  v2(162,3)=  v2(161,3);
  v2(163,1)=16;
  v2(163,2)=1039;
  v2(163,3)=(-(y(21)*params(2)/y(12)));
  v2(164,1)=16;
  v2(164,2)=463;
  v2(164,3)=  v2(163,3);
  v2(165,1)=16;
  v2(165,2)=1041;
  v2(165,3)=(-(y(21)*y(10)*(-params(2))/(y(12)*y(12))));
  v2(166,1)=16;
  v2(166,2)=561;
  v2(166,3)=  v2(165,3);
  v2(167,1)=16;
  v2(167,2)=1050;
  v2(167,3)=(-(y(10)*params(2)/y(12)));
  v2(168,1)=16;
  v2(168,2)=1002;
  v2(168,3)=  v2(167,3);
  v2(169,1)=17;
  v2(169,2)=1286;
  v2(169,3)=(-exp(y(31)));
  v2(170,1)=17;
  v2(170,2)=566;
  v2(170,3)=  v2(169,3);
  v2(171,1)=17;
  v2(171,2)=1482;
  v2(171,3)=(-(y(27)*exp(y(31))));
  v2(172,1)=17;
  v2(172,2)=570;
  v2(172,3)=  v2(171,3);
  v2(173,1)=17;
  v2(173,2)=1497;
  v2(173,3)=(-(y(12)*exp(y(31))));
  v2(174,1)=17;
  v2(174,2)=1305;
  v2(174,3)=  v2(173,3);
  v2(175,1)=17;
  v2(175,2)=1501;
  v2(175,3)=(-(y(12)*y(27)*exp(y(31))));
  v2(176,1)=18;
  v2(176,2)=1351;
  v2(176,3)=(-(T432*1/exp(y(31))*(-(1/XI__*(T170*(-(1/XI__))+T170*(-(1/XI__)))))/(T170*T170*T170*T170)+T431*T826));
  v2(177,1)=18;
  v2(177,2)=1498;
  v2(177,3)=(-(T441*T826+T432*T430*(-exp(y(31)))/(exp(y(31))*exp(y(31)))));
  v2(178,1)=18;
  v2(178,2)=1354;
  v2(178,3)=  v2(177,3);
  v2(179,1)=18;
  v2(179,2)=1501;
  v2(179,3)=(-(T441*T441*T825+T432*T171*((-exp(y(31)))*exp(y(31))*exp(y(31))-(-exp(y(31)))*(exp(y(31))*exp(y(31))+exp(y(31))*exp(y(31))))/(exp(y(31))*exp(y(31))*exp(y(31))*exp(y(31)))));
  v2(180,1)=19;
  v2(180,2)=1201;
  v2(180,3)=(-((-((y(25)+2*y(26)-y(25))*(y(25)+2*y(26)+y(25)+2*y(26))))/((y(25)+2*y(26))*(y(25)+2*y(26))*(y(25)+2*y(26))*(y(25)+2*y(26)))));
  v2(181,1)=19;
  v2(181,2)=1250;
  v2(181,3)=(-(((y(25)+2*y(26))*(y(25)+2*y(26))*(-2)-(-(2*y(25)))*(y(25)+2*y(26)+y(25)+2*y(26)))/((y(25)+2*y(26))*(y(25)+2*y(26))*(y(25)+2*y(26))*(y(25)+2*y(26)))));
  v2(182,1)=19;
  v2(182,2)=1202;
  v2(182,3)=  v2(181,3);
  v2(183,1)=19;
  v2(183,2)=1251;
  v2(183,3)=(-((-((-(2*y(25)))*(2*(y(25)+2*y(26))+2*(y(25)+2*y(26)))))/((y(25)+2*y(26))*(y(25)+2*y(26))*(y(25)+2*y(26))*(y(25)+2*y(26)))));
  v2(184,1)=26;
  v2(184,2)=1751;
  v2(184,3)=(-(params(29)*exp(y(36))));
  v2(185,1)=27;
  v2(185,2)=501;
  v2(185,3)=(-(exp(y(33))*(-1)/(y(11)*y(11))));
  v2(186,1)=27;
  v2(186,2)=1151;
  v2(186,3)=(-(exp(y(33))*(-(getPowerDeriv(y(24),1+params(3),2)/(1+params(3))))));
  v2(187,1)=27;
  v2(187,2)=1579;
  v2(187,3)=(-(exp(y(33))*T235));
  v2(188,1)=27;
  v2(188,2)=523;
  v2(188,3)=  v2(187,3);
  v2(189,1)=27;
  v2(189,2)=1592;
  v2(189,3)=T416;
  v2(190,1)=27;
  v2(190,2)=1160;
  v2(190,3)=  v2(189,3);
  v2(191,1)=27;
  v2(191,2)=1601;
  v2(191,3)=(-T225);
  g2 = sparse(v2(:,1),v2(:,2),v2(:,3),28,2401);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],28,117649);
end
end
end
end
