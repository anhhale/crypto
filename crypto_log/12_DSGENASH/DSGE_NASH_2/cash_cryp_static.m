function [residual, g1, g2, g3] = cash_cryp_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations.
%                                          Dynare may prepend or append auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g3        [M_.endo_nbr by (M_.endo_nbr)^3] double   Third derivatives matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 66, 1);

%
% Model equations
%

R_ss__ = 1/params(6);
R_star_ss__ = (y(31));
Y_star_ss__ = (y(32));
I_ss__ = (y(4));
Omega__ = y(42)*(1-params(3)+params(3)*y(25));
T31 = y(18)^(1+params(7));
T34 = y(3)-params(8)*T31/(1+params(7));
T43 = y(4)/I_ss__-1;
T52 = params(9)/2*y(22)^2;
T58 = params(5)/2;
T64 = y(24)^2;
T72 = 1/y(30);
T75 = y(12)^params(10);
T76 = T72*T75;
T79 = y(15)^params(11);
T80 = T76*T79;
T84 = y(13)^(1-params(10)-params(11));
T105 = (y(19)/params(10))^params(10);
T106 = y(30)*T105;
T109 = (y(17)/params(11))^params(11);
T110 = T106*T109;
T112 = (y(18)/(1-params(10)-params(11)))^(1-params(10)-params(11));
T130 = y(15)^params(16);
T139 = params(35)^y(40);
T171 = y(44)/(y(9)+y(7))-1/(y(9)+y(7));
T200 = y(16)+params(9)*y(22)/y(19);
T215 = y(14)/y(5);
T216 = (y(12)+y(16)*params(12))/y(16)-T215;
T261 = sqrt((y(29)/(params(5)*y(27)))^2+(1/params(1))^2+y(48)*2*y(47)/(params(5)*y(27))+2*y(28)/(params(5)*y(27)));
T269 = params(17)/2*(y(5)-1)^2;
T270 = y(2)*T269;
T421 = y(3)-T31*params(8)/(1+params(7));
T430 = log(T421)-params(41)*(params(40)-y(44))^2+params(34)*y(8)^(1-params(31))/(1-params(31));
lhs =y(45)+y(43);
rhs =1/T34;
residual(1)= lhs-rhs;
lhs =y(42);
rhs =params(6);
residual(2)= lhs-rhs;
lhs =y(33);
rhs =params(15)/2*T43^2;
residual(3)= lhs-rhs;
lhs =y(35);
rhs =T52/y(19);
residual(4)= lhs-rhs;
lhs =y(36);
rhs =T58*y(16)*y(21)*T64;
residual(5)= lhs-rhs;
lhs =y(34);
rhs =params(2);
residual(6)= lhs-rhs;
lhs =y(11);
rhs =T80*T84;
residual(7)= lhs-rhs;
lhs =y(5)*(y(5)-1);
rhs =1/params(17)*(1+y(11)*params(13)-params(13))+(y(5)-1)*y(5)*y(42)*y(2)/y(2);
residual(8)= lhs-rhs;
lhs =y(2);
rhs =T110*T112;
residual(9)= lhs-rhs;
lhs =y(15)*y(17)/(y(19)*y(12));
rhs =params(11)/params(10);
residual(10)= lhs-rhs;
lhs =y(18)*y(13)/(y(19)*y(12));
rhs =(1-params(10)-params(11))/params(10);
residual(11)= lhs-rhs;
lhs =y(19);
rhs =y(4)+y(19)*params(12);
residual(12)= lhs-rhs;
lhs =y(20);
rhs =y(32)*T130;
residual(13)= lhs-rhs;
lhs =(1-params(36))*y(38);
rhs =T139;
residual(14)= lhs-rhs;
lhs =log(y(40));
rhs =log(y(40))*0.95+x(6);
residual(15)= lhs-rhs;
lhs =y(39);
rhs =1;
residual(16)= lhs-rhs;
lhs =y(41);
rhs =1;
residual(17)= lhs-rhs;
lhs =y(46);
rhs =0.95*y(46)+0.03*x(5);
residual(18)= lhs-rhs;
lhs =y(3);
rhs =y(9);
residual(19)= lhs-rhs;
lhs =y(44);
rhs =1;
residual(20)= lhs-rhs;
residual(21) = y(7);
residual(22) = y(43)-params(41)*2*(params(40)-y(44))*T171-y(45)+params(6)*y(45)*params(37)/y(5);
lhs =params(34)*y(8)^(-params(31));
rhs =y(45)-y(41)*params(6)*y(45)/y(5);
residual(23)= lhs-rhs;
lhs =y(13);
rhs =params(8)*y(18)^params(7);
residual(24)= lhs-rhs;
lhs =1;
rhs =y(42)*(y(12)+y(16)*params(12))/T200;
residual(25)= lhs-rhs;
lhs =1;
rhs =y(42)*y(14)/y(5);
residual(26)= lhs-rhs;
lhs =y(16);
rhs =1+y(33)+T43*params(15)*y(4)/I_ss__;
residual(27)= lhs-rhs;
lhs =y(28);
rhs =Omega__*T216;
residual(28)= lhs-rhs;
lhs =y(47);
rhs =Omega__*(T215-y(41)/y(5));
residual(29)= lhs-rhs;
lhs =y(29);
rhs =Omega__*(T215-y(31));
residual(30)= lhs-rhs;
lhs =y(27);
rhs =y(14)*Omega__/y(5);
residual(31)= lhs-rhs;
lhs =y(26);
rhs =y(27)/(y(34)+y(27)*T58*T64-(y(28)+y(24)*y(29)+y(47)*y(48)));
residual(32)= lhs-rhs;
lhs =y(25);
rhs =y(34)*y(26);
residual(33)= lhs-rhs;
lhs =y(24);
rhs =y(29)/(params(5)*y(27))-1/params(1)+T261;
residual(34)= lhs-rhs;
lhs =y(2);
rhs =y(36)+y(35)+y(20)+y(3)+y(4)*(1+y(33))+T270;
residual(35)= lhs-rhs;
lhs =y(10);
rhs =y(17)+y(31)*y(10)-y(20)/y(15);
residual(36)= lhs-rhs;
lhs =y(6);
rhs =params(3)*(y(21)*(y(12)+y(16)*params(12))-y(14)*y(23)/y(5)-y(41)*y(8)/y(5)-y(10)*y(31)*y(15))+y(19)*(y(12)+y(16)*params(12))*params(4);
residual(37)= lhs-rhs;
lhs =y(16)*y(21)*(1+T58*T64);
rhs =y(6)*y(26)*(1+T58*T64);
residual(38)= lhs-rhs;
lhs =y(16)*y(21)*(1+T58*T64);
rhs =y(8)+y(6)+y(23)+y(15)*y(10);
residual(39)= lhs-rhs;
lhs =y(24);
rhs =y(15)*y(10)/(y(16)*y(21));
residual(40)= lhs-rhs;
lhs =y(48);
rhs =y(8)/(y(16)*y(21));
residual(41)= lhs-rhs;
lhs =y(19);
rhs =y(22)+y(21);
residual(42)= lhs-rhs;
lhs =log(y(49));
rhs =log(y(5));
residual(43)= lhs-rhs;
lhs =log(y(14)/R_ss__);
rhs =(1-params(19))*(log(y(5))*params(20)+0.*log(y(2)/(y(2)))+log(y(49))*params(49))+log(y(14)/R_ss__)*params(19)+x(1);
residual(44)= lhs-rhs;
lhs =log(y(30));
rhs =log(y(30))*params(21)-x(2);
residual(45)= lhs-rhs;
lhs =y(32);
rhs =(1-params(23))*Y_star_ss__+y(32)*params(23)+x(4);
residual(46)= lhs-rhs;
lhs =y(31);
rhs =(1-params(22))*R_star_ss__+y(31)*params(22)+x(3);
residual(47)= lhs-rhs;
lhs =y(37);
rhs =y(2)-y(15)*y(17)-T270-y(35)-y(36);
residual(48)= lhs-rhs;
lhs =y(51);
rhs =log(y(2));
residual(49)= lhs-rhs;
lhs =y(52);
rhs =log(y(5));
residual(50)= lhs-rhs;
lhs =y(53);
rhs =log(y(14));
residual(51)= lhs-rhs;
lhs =y(54);
rhs =log(y(4));
residual(52)= lhs-rhs;
lhs =y(55);
rhs =log(y(18));
residual(53)= lhs-rhs;
lhs =y(56);
rhs =log(y(3));
residual(54)= lhs-rhs;
lhs =y(57);
rhs =log(y(20));
residual(55)= lhs-rhs;
lhs =y(58);
rhs =log(y(17));
residual(56)= lhs-rhs;
lhs =y(59);
rhs =log(y(23));
residual(57)= lhs-rhs;
lhs =y(60);
rhs =log(y(10));
residual(58)= lhs-rhs;
lhs =y(61);
rhs =log(y(6));
residual(59)= lhs-rhs;
lhs =y(62);
rhs =T216;
residual(60)= lhs-rhs;
lhs =y(63);
rhs =log(y(9));
residual(61)= lhs-rhs;
lhs =y(64);
rhs =log(y(26));
residual(62)= lhs-rhs;
lhs =y(65);
rhs =y(20)-y(17);
residual(63)= lhs-rhs;
lhs =y(66);
rhs =log(y(8));
residual(64)= lhs-rhs;
lhs =y(50);
rhs =T430;
residual(65)= lhs-rhs;
lhs =y(1);
rhs =T430+params(6)*y(1);
residual(66)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(66, 66);

  %
  % Jacobian matrix
  %

T485 = (-y(14))/(y(5)*y(5));
T511 = 1/y(5);
T526 = (-(params(41)*2*(params(40)-y(44))*((-y(44))/((y(9)+y(7))*(y(9)+y(7)))-(-1)/((y(9)+y(7))*(y(9)+y(7))))));
T539 = (-(params(34)*getPowerDeriv(y(8),1-params(31),1)/(1-params(31))));
T592 = 1/R_ss__/(y(14)/R_ss__);
T656 = getPowerDeriv(y(18),1+params(7),1);
T676 = (-((-(params(8)/(1+params(7))*T656))/T421));
T741 = (y(34)+y(27)*T58*T64-(y(28)+y(24)*y(29)+y(47)*y(48)))*(y(34)+y(27)*T58*T64-(y(28)+y(24)*y(29)+y(47)*y(48)));
  g1(1,3)=(-((-1)/(T34*T34)));
  g1(1,18)=(-(params(8)*T656/(1+params(7))/(T34*T34)));
  g1(1,43)=1;
  g1(1,45)=1;
  g1(2,42)=1;
  g1(3,4)=(-(params(15)/2*(I_ss__-y(4))/(I_ss__*I_ss__)*2*T43));
  g1(3,33)=1;
  g1(4,19)=(-((-T52)/(y(19)*y(19))));
  g1(4,22)=(-(params(9)/2*2*y(22)/y(19)));
  g1(4,35)=1;
  g1(5,16)=(-(T64*T58*y(21)));
  g1(5,21)=(-(T58*y(16)*T64));
  g1(5,24)=(-(T58*y(16)*y(21)*2*y(24)));
  g1(5,36)=1;
  g1(6,34)=1;
  g1(7,11)=1;
  g1(7,12)=(-(T84*T79*T72*getPowerDeriv(y(12),params(10),1)));
  g1(7,13)=(-(T80*getPowerDeriv(y(13),1-params(10)-params(11),1)));
  g1(7,15)=(-(T84*T76*getPowerDeriv(y(15),params(11),1)));
  g1(7,30)=(-(T84*T79*T75*(-1)/(y(30)*y(30))));
  g1(8,5)=y(5)+y(5)-1-(y(5)*y(42)*y(2)/y(2)+(y(5)-1)*y(42)*y(2)/y(2));
  g1(8,11)=(-(1/params(17)*params(13)));
  g1(8,42)=(-(y(5)*(y(5)-1)));
  g1(9,2)=1;
  g1(9,17)=(-(T112*T106*1/params(11)*getPowerDeriv(y(17)/params(11),params(11),1)));
  g1(9,18)=(-(T110*1/(1-params(10)-params(11))*getPowerDeriv(y(18)/(1-params(10)-params(11)),1-params(10)-params(11),1)));
  g1(9,19)=(-(T112*T109*y(30)*1/params(10)*getPowerDeriv(y(19)/params(10),params(10),1)));
  g1(9,30)=(-(T112*T105*T109));
  g1(10,12)=(-(y(19)*y(15)*y(17)))/(y(19)*y(12)*y(19)*y(12));
  g1(10,15)=y(17)/(y(19)*y(12));
  g1(10,17)=y(15)/(y(19)*y(12));
  g1(10,19)=(-(y(12)*y(15)*y(17)))/(y(19)*y(12)*y(19)*y(12));
  g1(11,12)=(-(y(19)*y(18)*y(13)))/(y(19)*y(12)*y(19)*y(12));
  g1(11,13)=y(18)/(y(19)*y(12));
  g1(11,18)=y(13)/(y(19)*y(12));
  g1(11,19)=(-(y(12)*y(18)*y(13)))/(y(19)*y(12)*y(19)*y(12));
  g1(12,4)=(-1);
  g1(12,19)=1-params(12);
  g1(13,15)=(-(y(32)*getPowerDeriv(y(15),params(16),1)));
  g1(13,20)=1;
  g1(13,32)=(-T130);
  g1(14,38)=1-params(36);
  g1(14,40)=(-(T139*log(params(35))));
  g1(15,40)=1/y(40)-0.95*1/y(40);
  g1(16,39)=1;
  g1(17,41)=1;
  g1(18,46)=0.05000000000000004;
  g1(19,3)=1;
  g1(19,9)=(-1);
  g1(20,44)=1;
  g1(21,7)=1;
  g1(22,5)=(-(params(6)*y(45)*params(37)))/(y(5)*y(5));
  g1(22,7)=T526;
  g1(22,9)=T526;
  g1(22,43)=1;
  g1(22,44)=(-(params(41)*(T171*(-2)+2*(params(40)-y(44))*1/(y(9)+y(7)))));
  g1(22,45)=(-1)+params(6)*params(37)/y(5);
  g1(23,5)=(-(y(41)*params(6)*y(45)))/(y(5)*y(5));
  g1(23,8)=params(34)*getPowerDeriv(y(8),(-params(31)),1);
  g1(23,41)=params(6)*y(45)/y(5);
  g1(23,45)=(-(1-params(6)*y(41)/y(5)));
  g1(24,13)=1;
  g1(24,18)=(-(params(8)*getPowerDeriv(y(18),params(7),1)));
  g1(25,12)=(-(y(42)/T200));
  g1(25,16)=(-((T200*y(42)*params(12)-y(42)*(y(12)+y(16)*params(12)))/(T200*T200)));
  g1(25,19)=(-((-(y(42)*(y(12)+y(16)*params(12))*(-(params(9)*y(22)))/(y(19)*y(19))))/(T200*T200)));
  g1(25,22)=(-((-(y(42)*(y(12)+y(16)*params(12))*params(9)/y(19)))/(T200*T200)));
  g1(25,42)=(-((y(12)+y(16)*params(12))/T200));
  g1(26,5)=(-((-(y(42)*y(14)))/(y(5)*y(5))));
  g1(26,14)=(-(y(42)/y(5)));
  g1(26,42)=(-T215);
  g1(27,4)=(-(params(15)*y(4)/I_ss__*(I_ss__-y(4))/(I_ss__*I_ss__)+T43*params(15)*(I_ss__-y(4))/(I_ss__*I_ss__)));
  g1(27,16)=1;
  g1(27,33)=(-1);
  g1(28,5)=(-(Omega__*(-T485)));
  g1(28,12)=(-(Omega__*1/y(16)));
  g1(28,14)=(-(Omega__*(-T511)));
  g1(28,16)=(-(Omega__*(y(16)*params(12)-(y(12)+y(16)*params(12)))/(y(16)*y(16))));
  g1(28,25)=(-(T216*y(42)*params(3)));
  g1(28,28)=1;
  g1(28,42)=(-((1-params(3)+params(3)*y(25))*T216));
  g1(29,5)=(-(Omega__*(T485-(-y(41))/(y(5)*y(5)))));
  g1(29,14)=(-(Omega__*T511));
  g1(29,25)=(-((T215-y(41)/y(5))*y(42)*params(3)));
  g1(29,41)=(-(Omega__*(-T511)));
  g1(29,42)=(-((1-params(3)+params(3)*y(25))*(T215-y(41)/y(5))));
  g1(29,47)=1;
  g1(30,5)=(-(Omega__*T485));
  g1(30,14)=(-(Omega__*T511));
  g1(30,25)=(-((T215-y(31))*y(42)*params(3)));
  g1(30,29)=1;
  g1(30,31)=Omega__;
  g1(30,42)=(-((1-params(3)+params(3)*y(25))*(T215-y(31))));
  g1(31,5)=(-((-(y(14)*Omega__))/(y(5)*y(5))));
  g1(31,14)=(-(Omega__/y(5)));
  g1(31,25)=(-(y(14)*y(42)*params(3)/y(5)));
  g1(31,27)=1;
  g1(31,42)=(-((1-params(3)+params(3)*y(25))*y(14)/y(5)));
  g1(32,24)=(-((-(y(27)*(y(27)*T58*2*y(24)-y(29))))/T741));
  g1(32,26)=1;
  g1(32,27)=(-((y(34)+y(27)*T58*T64-(y(28)+y(24)*y(29)+y(47)*y(48))-y(27)*T58*T64)/T741));
  g1(32,28)=(-(y(27)/T741));
  g1(32,29)=(-((-(y(27)*(-y(24))))/T741));
  g1(32,34)=(-((-y(27))/T741));
  g1(32,47)=(-((-(y(27)*(-y(48))))/T741));
  g1(32,48)=(-((-(y(27)*(-y(47))))/T741));
  g1(33,25)=1;
  g1(33,26)=(-y(34));
  g1(33,34)=(-y(26));
  g1(34,24)=1;
  g1(34,27)=(-((-(params(5)*y(29)))/(params(5)*y(27)*params(5)*y(27))+((-(params(5)*y(29)))/(params(5)*y(27)*params(5)*y(27))*2*y(29)/(params(5)*y(27))+y(48)*(-(params(5)*2*y(47)))/(params(5)*y(27)*params(5)*y(27))+(-(params(5)*2*y(28)))/(params(5)*y(27)*params(5)*y(27)))/(T261+T261)));
  g1(34,28)=(-(2/(params(5)*y(27))/(T261+T261)));
  g1(34,29)=(-(1/(params(5)*y(27))+2*y(29)/(params(5)*y(27))*1/(params(5)*y(27))/(T261+T261)));
  g1(34,47)=(-(y(48)*2/(params(5)*y(27))/(T261+T261)));
  g1(34,48)=(-(2*y(47)/(params(5)*y(27))/(T261+T261)));
  g1(35,2)=1-T269;
  g1(35,3)=(-1);
  g1(35,4)=(-(1+y(33)));
  g1(35,5)=(-(y(2)*params(17)/2*2*(y(5)-1)));
  g1(35,20)=(-1);
  g1(35,33)=(-y(4));
  g1(35,35)=(-1);
  g1(35,36)=(-1);
  g1(36,10)=1-y(31);
  g1(36,15)=(-y(20))/(y(15)*y(15));
  g1(36,17)=(-1);
  g1(36,20)=1/y(15);
  g1(36,31)=(-y(10));
  g1(37,5)=(-(params(3)*((-((-(y(14)*y(23)))/(y(5)*y(5))))-(-(y(41)*y(8)))/(y(5)*y(5)))));
  g1(37,6)=1;
  g1(37,8)=(-(params(3)*(-(y(41)/y(5)))));
  g1(37,10)=(-(params(3)*(-(y(31)*y(15)))));
  g1(37,12)=(-(params(3)*y(21)+y(19)*params(4)));
  g1(37,14)=(-(params(3)*(-(y(23)/y(5)))));
  g1(37,15)=(-(params(3)*(-(y(31)*y(10)))));
  g1(37,16)=(-(params(3)*y(21)*params(12)+y(19)*params(12)*params(4)));
  g1(37,19)=(-((y(12)+y(16)*params(12))*params(4)));
  g1(37,21)=(-(params(3)*(y(12)+y(16)*params(12))));
  g1(37,23)=(-(params(3)*(-T215)));
  g1(37,31)=(-(params(3)*(-(y(15)*y(10)))));
  g1(37,41)=(-(params(3)*(-(y(8)/y(5)))));
  g1(38,6)=(-(y(26)*(1+T58*T64)));
  g1(38,16)=y(21)*(1+T58*T64);
  g1(38,21)=y(16)*(1+T58*T64);
  g1(38,24)=y(16)*y(21)*T58*2*y(24)-y(6)*y(26)*T58*2*y(24);
  g1(38,26)=(-(y(6)*(1+T58*T64)));
  g1(39,6)=(-1);
  g1(39,8)=(-1);
  g1(39,10)=(-y(15));
  g1(39,15)=(-y(10));
  g1(39,16)=y(21)*(1+T58*T64);
  g1(39,21)=y(16)*(1+T58*T64);
  g1(39,23)=(-1);
  g1(39,24)=y(16)*y(21)*T58*2*y(24);
  g1(40,10)=(-(y(15)/(y(16)*y(21))));
  g1(40,15)=(-(y(10)/(y(16)*y(21))));
  g1(40,16)=(-((-(y(21)*y(15)*y(10)))/(y(16)*y(21)*y(16)*y(21))));
  g1(40,21)=(-((-(y(16)*y(15)*y(10)))/(y(16)*y(21)*y(16)*y(21))));
  g1(40,24)=1;
  g1(41,8)=(-(1/(y(16)*y(21))));
  g1(41,16)=(-((-(y(21)*y(8)))/(y(16)*y(21)*y(16)*y(21))));
  g1(41,21)=(-((-(y(16)*y(8)))/(y(16)*y(21)*y(16)*y(21))));
  g1(41,48)=1;
  g1(42,19)=1;
  g1(42,21)=(-1);
  g1(42,22)=(-1);
  g1(43,5)=(-T511);
  g1(43,49)=1/y(49);
  g1(44,2)=(-((1-params(19))*0.*((y(2))-y(2))/((y(2))*(y(2)))/(y(2)/(y(2)))));
  g1(44,5)=(-((1-params(19))*params(20)*T511));
  g1(44,14)=T592-params(19)*T592;
  g1(44,49)=(-((1-params(19))*params(49)*1/y(49)));
  g1(45,30)=T72-T72*params(21);
  g1(46,32)=1-(params(23)+1-params(23));
  g1(47,31)=1-(params(22)+1-params(22));
  g1(48,2)=(-(1-T269));
  g1(48,5)=y(2)*params(17)/2*2*(y(5)-1);
  g1(48,15)=y(17);
  g1(48,17)=y(15);
  g1(48,35)=1;
  g1(48,36)=1;
  g1(48,37)=1;
  g1(49,2)=(-(1/y(2)));
  g1(49,51)=1;
  g1(50,5)=(-T511);
  g1(50,52)=1;
  g1(51,14)=(-(1/y(14)));
  g1(51,53)=1;
  g1(52,4)=(-(1/y(4)));
  g1(52,54)=1;
  g1(53,18)=(-(1/y(18)));
  g1(53,55)=1;
  g1(54,3)=(-(1/y(3)));
  g1(54,56)=1;
  g1(55,20)=(-(1/y(20)));
  g1(55,57)=1;
  g1(56,17)=(-(1/y(17)));
  g1(56,58)=1;
  g1(57,23)=(-(1/y(23)));
  g1(57,59)=1;
  g1(58,10)=(-(1/y(10)));
  g1(58,60)=1;
  g1(59,6)=(-(1/y(6)));
  g1(59,61)=1;
  g1(60,5)=T485;
  g1(60,12)=(-(1/y(16)));
  g1(60,14)=T511;
  g1(60,16)=(-((y(16)*params(12)-(y(12)+y(16)*params(12)))/(y(16)*y(16))));
  g1(60,62)=1;
  g1(61,9)=(-(1/y(9)));
  g1(61,63)=1;
  g1(62,26)=(-(1/y(26)));
  g1(62,64)=1;
  g1(63,17)=1;
  g1(63,20)=(-1);
  g1(63,65)=1;
  g1(64,8)=(-(1/y(8)));
  g1(64,66)=1;
  g1(65,3)=(-(1/T421));
  g1(65,8)=T539;
  g1(65,18)=T676;
  g1(65,44)=params(41)*(-(2*(params(40)-y(44))));
  g1(65,50)=1;
  g1(66,1)=1-params(6);
  g1(66,3)=(-(1/T421));
  g1(66,8)=T539;
  g1(66,18)=T676;
  g1(66,44)=params(41)*(-(2*(params(40)-y(44))));
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],66,4356);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],66,287496);
end
end
end
end
