function [residual, g1, g2] = cdbc_flex_static(y, x, params)
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
%                                          in order of declaration of the equations
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                    columns: equations in order of declaration
%                                                    rows: variables in declaration order
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: equations in order of declaration
%                                                       rows: variables in declaration order
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 66, 1);

%
% Model equations
%

R_ss__ = 1/params(6);
R_star_ss__ = (y(28));
Y_star_ss__ = (y(29));
I_ss__ = (y(13));
Omega__ = y(42)*(1-params(3)+params(3)*y(22));
T34 = y(12)-params(8)*y(11)^(1+params(7))/(1+params(7));
T43 = y(13)/I_ss__-1;
T52 = params(9)/2*y(18)^2;
T58 = params(5)/2;
T64 = y(21)^2;
T72 = 1/y(27);
T76 = T72*y(4)^params(10);
T80 = T76*y(7)^params(11);
T84 = y(5)^(1-params(10)-params(11));
T105 = (y(14)/params(10))^params(10);
T106 = y(27)*T105;
T109 = (y(10)/params(11))^params(11);
T110 = T106*T109;
T112 = (y(11)/(1-params(10)-params(11)))^(1-params(10)-params(11));
T183 = params(38)*y(40)^(1-params(29))+params(39)*y(39)^(1-params(29));
T195 = y(39)^(-params(29));
T202 = (y(40)+y(39))^2;
T213 = y(40)^(-params(29));
T218 = y(44)/(y(40)+y(39))-1/(y(40)+y(39));
T245 = y(8)+params(9)*y(18)/y(14);
T260 = y(6)/y(3);
T261 = (y(4)+y(8)*params(12))/y(8)-T260;
T278 = T58*T64;
T306 = sqrt((y(26)/(params(5)*y(24)))^2+(1/params(1))^2+y(48)*2*y(47)/(params(5)*y(24))+2*y(25)/(params(5)*y(24)));
T314 = params(17)/2*(y(3)-1)^2;
T315 = y(9)*T314;
T462 = y(12)-y(11)^(1+params(7))*params(8)/(1+params(7));
T474 = 1/y(3);
T492 = (-y(6))/(y(3)*y(3));
T561 = 1/R_ss__/(y(6)/R_ss__);
T763 = (y(31)+y(24)*T278-(y(25)+y(21)*y(26)+y(47)*y(48)))*(y(31)+y(24)*T278-(y(25)+y(21)*y(26)+y(47)*y(48)));
T869 = getPowerDeriv(T183,1/(1-params(29)),1);
T890 = params(41)*2*(params(40)-y(44))*((-y(44))/((y(40)+y(39))*(y(40)+y(39)))-(-1)/((y(40)+y(39))*(y(40)+y(39))));
lhs =y(45)+y(43);
rhs =1/T34;
residual(1)= lhs-rhs;
lhs =y(42);
rhs =params(6);
residual(2)= lhs-rhs;
lhs =y(30);
rhs =params(15)/2*T43^2;
residual(3)= lhs-rhs;
lhs =y(32);
rhs =T52/y(14);
residual(4)= lhs-rhs;
lhs =y(33);
rhs =T58*y(8)*y(17)*T64;
residual(5)= lhs-rhs;
lhs =y(31);
rhs =params(2);
residual(6)= lhs-rhs;
lhs =y(2);
rhs =T80*T84;
residual(7)= lhs-rhs;
lhs =y(3)*(y(3)-1);
rhs =1/params(17)*(1+y(2)*params(13)-params(13))+(y(3)-1)*y(3)*y(42)*y(9)/y(9);
residual(8)= lhs-rhs;
lhs =y(9);
rhs =T110*T112;
residual(9)= lhs-rhs;
lhs =y(7)*y(10)/(y(14)*y(4));
rhs =params(11)/params(10);
residual(10)= lhs-rhs;
lhs =y(11)*y(5)/(y(14)*y(4));
rhs =(1-params(10)-params(11))/params(10);
residual(11)= lhs-rhs;
lhs =y(14);
rhs =y(13)+y(14)*params(12);
residual(12)= lhs-rhs;
lhs =y(15);
rhs =y(29)*y(7)^params(16);
residual(13)= lhs-rhs;
lhs =(1-params(36))*y(35);
rhs =params(35)^y(37);
residual(14)= lhs-rhs;
lhs =log(y(37));
rhs =log(y(37))*0.95+x(6);
residual(15)= lhs-rhs;
lhs =log(y(36));
rhs =log(y(36))*0.07999999999999996+0.92*(params(42)*log(y(3))+params(43)*log(y(9)/(y(9))));
residual(16)= lhs-rhs;
lhs =y(41);
rhs =1;
residual(17)= lhs-rhs;
lhs =y(46);
rhs =0.95*y(46)+0.03*x(5);
residual(18)= lhs-rhs;
lhs =y(12);
rhs =T183^(1/(1-params(29)));
residual(19)= lhs-rhs;
lhs =y(44);
rhs =y(40)/(y(40)+y(39));
residual(20)= lhs-rhs;
lhs =y(43)*params(39)*y(12)^params(29)*T195-params(41)*2*y(40)*(params(40)-y(44))/T202;
rhs =y(45)-y(36)*params(6)*y(45)/y(3);
residual(21)= lhs-rhs;
lhs =y(43)*params(38)*y(12)^params(29)*T213-params(41)*2*(params(40)-y(44))*T218;
rhs =y(45)-params(6)*y(45)*params(37)/y(3);
residual(22)= lhs-rhs;
lhs =params(34)*y(38)^(-params(31));
rhs =y(45)-y(41)*params(6)*y(45)/y(3);
residual(23)= lhs-rhs;
lhs =y(5);
rhs =params(8)*y(11)^params(7);
residual(24)= lhs-rhs;
lhs =1;
rhs =y(42)*(y(4)+y(8)*params(12))/T245;
residual(25)= lhs-rhs;
lhs =1;
rhs =y(42)*y(6)/y(3);
residual(26)= lhs-rhs;
lhs =y(8);
rhs =1+y(30)+T43*params(15)*y(13)/I_ss__;
residual(27)= lhs-rhs;
lhs =y(25);
rhs =Omega__*T261;
residual(28)= lhs-rhs;
lhs =y(47);
rhs =Omega__*(T260-y(41)/y(3));
residual(29)= lhs-rhs;
lhs =y(26);
rhs =Omega__*(T260-y(28));
residual(30)= lhs-rhs;
lhs =y(24);
rhs =y(6)*Omega__/y(3);
residual(31)= lhs-rhs;
lhs =y(23);
rhs =y(24)/(y(31)+y(24)*T278-(y(25)+y(21)*y(26)+y(47)*y(48)));
residual(32)= lhs-rhs;
lhs =y(22);
rhs =y(31)*y(23);
residual(33)= lhs-rhs;
lhs =y(21);
rhs =y(26)/(params(5)*y(24))-1/params(1)+T306;
residual(34)= lhs-rhs;
lhs =y(9);
rhs =y(33)+y(32)+y(15)+y(12)+y(13)*(1+y(30))+T315;
residual(35)= lhs-rhs;
lhs =y(20);
rhs =y(10)+y(28)*y(20)-y(15)/y(7);
residual(36)= lhs-rhs;
lhs =y(16);
rhs =params(3)*(y(17)*(y(4)+y(8)*params(12))-y(6)*y(19)/y(3)-y(41)*y(38)/y(3)-y(20)*y(28)*y(7))+y(14)*(y(4)+y(8)*params(12))*params(4);
residual(37)= lhs-rhs;
lhs =y(8)*y(17)*(1+T278);
rhs =y(16)*y(23)*(1+T278);
residual(38)= lhs-rhs;
lhs =y(8)*y(17)*(1+T278);
rhs =y(38)+y(16)+y(19)+y(7)*y(20);
residual(39)= lhs-rhs;
lhs =y(21);
rhs =y(7)*y(20)/(y(8)*y(17));
residual(40)= lhs-rhs;
lhs =y(48);
rhs =y(38)/(y(8)*y(17));
residual(41)= lhs-rhs;
lhs =y(14);
rhs =y(18)+y(17);
residual(42)= lhs-rhs;
lhs =log(y(49));
rhs =log(y(3));
residual(43)= lhs-rhs;
lhs =log(y(6)/R_ss__);
rhs =(1-params(19))*(log(y(3))*params(20)+log(y(49))*params(44))+log(y(6)/R_ss__)*params(19)+x(1);
residual(44)= lhs-rhs;
lhs =log(y(27));
rhs =log(y(27))*params(21)+x(2);
residual(45)= lhs-rhs;
lhs =y(29);
rhs =(1-params(23))*Y_star_ss__+y(29)*params(23)+x(4);
residual(46)= lhs-rhs;
lhs =y(28);
rhs =(1-params(22))*R_star_ss__+y(28)*params(22)+x(3);
residual(47)= lhs-rhs;
lhs =y(34);
rhs =y(9)-y(7)*y(10)-T315-y(32)-y(33);
residual(48)= lhs-rhs;
lhs =y(50);
rhs =log(y(9));
residual(49)= lhs-rhs;
lhs =y(51);
rhs =log(y(3));
residual(50)= lhs-rhs;
lhs =y(52);
rhs =log(y(6));
residual(51)= lhs-rhs;
lhs =y(53);
rhs =log(y(13));
residual(52)= lhs-rhs;
lhs =y(54);
rhs =log(y(11));
residual(53)= lhs-rhs;
lhs =y(55);
rhs =log(y(12));
residual(54)= lhs-rhs;
lhs =y(56);
rhs =log(y(15));
residual(55)= lhs-rhs;
lhs =y(57);
rhs =log(y(10));
residual(56)= lhs-rhs;
lhs =y(58);
rhs =log(y(19));
residual(57)= lhs-rhs;
lhs =y(59);
rhs =log(y(20));
residual(58)= lhs-rhs;
lhs =y(60);
rhs =log(y(16));
residual(59)= lhs-rhs;
lhs =y(61);
rhs =T261;
residual(60)= lhs-rhs;
lhs =y(62);
rhs =log(y(39));
residual(61)= lhs-rhs;
lhs =y(63);
rhs =log(y(40));
residual(62)= lhs-rhs;
lhs =y(64);
rhs =log(y(23));
residual(63)= lhs-rhs;
lhs =y(65);
rhs =y(15)-y(10);
residual(64)= lhs-rhs;
lhs =y(66);
rhs =log(y(38));
residual(65)= lhs-rhs;
lhs =y(1);
rhs =log(T462)+params(6)*y(1);
residual(66)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(66, 66);

  %
  % Jacobian matrix
  %

  g1(1,11)=(-(params(8)*getPowerDeriv(y(11),1+params(7),1)/(1+params(7))/(T34*T34)));
  g1(1,12)=(-((-1)/(T34*T34)));
  g1(1,43)=1;
  g1(1,45)=1;
  g1(2,42)=1;
  g1(3,13)=(-(params(15)/2*(I_ss__-y(13))/(I_ss__*I_ss__)*2*T43));
  g1(3,30)=1;
  g1(4,14)=(-((-T52)/(y(14)*y(14))));
  g1(4,18)=(-(params(9)/2*2*y(18)/y(14)));
  g1(4,32)=1;
  g1(5,8)=(-(T64*T58*y(17)));
  g1(5,17)=(-(T58*y(8)*T64));
  g1(5,21)=(-(T58*y(8)*y(17)*2*y(21)));
  g1(5,33)=1;
  g1(6,31)=1;
  g1(7,2)=1;
  g1(7,4)=(-(T84*y(7)^params(11)*T72*getPowerDeriv(y(4),params(10),1)));
  g1(7,5)=(-(T80*getPowerDeriv(y(5),1-params(10)-params(11),1)));
  g1(7,7)=(-(T84*T76*getPowerDeriv(y(7),params(11),1)));
  g1(7,27)=(-(T84*y(7)^params(11)*y(4)^params(10)*(-1)/(y(27)*y(27))));
  g1(8,2)=(-(1/params(17)*params(13)));
  g1(8,3)=y(3)+y(3)-1-(y(3)*y(42)*y(9)/y(9)+(y(3)-1)*y(42)*y(9)/y(9));
  g1(8,42)=(-(y(3)*(y(3)-1)));
  g1(9,9)=1;
  g1(9,10)=(-(T112*T106*1/params(11)*getPowerDeriv(y(10)/params(11),params(11),1)));
  g1(9,11)=(-(T110*1/(1-params(10)-params(11))*getPowerDeriv(y(11)/(1-params(10)-params(11)),1-params(10)-params(11),1)));
  g1(9,14)=(-(T112*T109*y(27)*1/params(10)*getPowerDeriv(y(14)/params(10),params(10),1)));
  g1(9,27)=(-(T112*T105*T109));
  g1(10,4)=(-(y(14)*y(7)*y(10)))/(y(14)*y(4)*y(14)*y(4));
  g1(10,7)=y(10)/(y(14)*y(4));
  g1(10,10)=y(7)/(y(14)*y(4));
  g1(10,14)=(-(y(4)*y(7)*y(10)))/(y(14)*y(4)*y(14)*y(4));
  g1(11,4)=(-(y(14)*y(11)*y(5)))/(y(14)*y(4)*y(14)*y(4));
  g1(11,5)=y(11)/(y(14)*y(4));
  g1(11,11)=y(5)/(y(14)*y(4));
  g1(11,14)=(-(y(4)*y(11)*y(5)))/(y(14)*y(4)*y(14)*y(4));
  g1(12,13)=(-1);
  g1(12,14)=1-params(12);
  g1(13,7)=(-(y(29)*getPowerDeriv(y(7),params(16),1)));
  g1(13,15)=1;
  g1(13,29)=(-(y(7)^params(16)));
  g1(14,35)=1-params(36);
  g1(14,37)=(-(params(35)^y(37)*log(params(35))));
  g1(15,37)=1/y(37)-0.95*1/y(37);
  g1(16,3)=(-(0.92*params(42)*T474));
  g1(16,9)=(-(0.92*params(43)*((y(9))-y(9))/((y(9))*(y(9)))/(y(9)/(y(9)))));
  g1(16,36)=1/y(36)-0.07999999999999996*1/y(36);
  g1(17,41)=1;
  g1(18,46)=0.05000000000000004;
  g1(19,12)=1;
  g1(19,39)=(-(params(39)*getPowerDeriv(y(39),1-params(29),1)*T869));
  g1(19,40)=(-(T869*params(38)*getPowerDeriv(y(40),1-params(29),1)));
  g1(20,39)=(-((-y(40))/((y(40)+y(39))*(y(40)+y(39)))));
  g1(20,40)=(-((y(40)+y(39)-y(40))/((y(40)+y(39))*(y(40)+y(39)))));
  g1(20,44)=1;
  g1(21,3)=(-(y(36)*params(6)*y(45)))/(y(3)*y(3));
  g1(21,12)=T195*y(43)*params(39)*getPowerDeriv(y(12),params(29),1);
  g1(21,36)=params(6)*y(45)/y(3);
  g1(21,39)=y(43)*params(39)*y(12)^params(29)*getPowerDeriv(y(39),(-params(29)),1)-params(41)*(-(2*y(40)*(params(40)-y(44))*2*(y(40)+y(39))))/(T202*T202);
  g1(21,40)=(-(params(41)*(T202*2*(params(40)-y(44))-2*y(40)*(params(40)-y(44))*2*(y(40)+y(39)))/(T202*T202)));
  g1(21,43)=params(39)*y(12)^params(29)*T195;
  g1(21,44)=(-(params(41)*(-(2*y(40)))/T202));
  g1(21,45)=(-(1-params(6)*y(36)/y(3)));
  g1(22,3)=(-(params(6)*y(45)*params(37)))/(y(3)*y(3));
  g1(22,12)=T213*y(43)*params(38)*getPowerDeriv(y(12),params(29),1);
  g1(22,39)=(-T890);
  g1(22,40)=y(43)*params(38)*y(12)^params(29)*getPowerDeriv(y(40),(-params(29)),1)-T890;
  g1(22,43)=params(38)*y(12)^params(29)*T213;
  g1(22,44)=(-(params(41)*(T218*(-2)+2*(params(40)-y(44))*1/(y(40)+y(39)))));
  g1(22,45)=(-(1-params(6)*params(37)/y(3)));
  g1(23,3)=(-(y(41)*params(6)*y(45)))/(y(3)*y(3));
  g1(23,38)=params(34)*getPowerDeriv(y(38),(-params(31)),1);
  g1(23,41)=params(6)*y(45)/y(3);
  g1(23,45)=(-(1-params(6)*y(41)/y(3)));
  g1(24,5)=1;
  g1(24,11)=(-(params(8)*getPowerDeriv(y(11),params(7),1)));
  g1(25,4)=(-(y(42)/T245));
  g1(25,8)=(-((T245*y(42)*params(12)-y(42)*(y(4)+y(8)*params(12)))/(T245*T245)));
  g1(25,14)=(-((-(y(42)*(y(4)+y(8)*params(12))*(-(params(9)*y(18)))/(y(14)*y(14))))/(T245*T245)));
  g1(25,18)=(-((-(y(42)*(y(4)+y(8)*params(12))*params(9)/y(14)))/(T245*T245)));
  g1(25,42)=(-((y(4)+y(8)*params(12))/T245));
  g1(26,3)=(-((-(y(42)*y(6)))/(y(3)*y(3))));
  g1(26,6)=(-(y(42)/y(3)));
  g1(26,42)=(-T260);
  g1(27,8)=1;
  g1(27,13)=(-(params(15)*y(13)/I_ss__*(I_ss__-y(13))/(I_ss__*I_ss__)+T43*params(15)*(I_ss__-y(13))/(I_ss__*I_ss__)));
  g1(27,30)=(-1);
  g1(28,3)=(-(Omega__*(-T492)));
  g1(28,4)=(-(Omega__*1/y(8)));
  g1(28,6)=(-(Omega__*(-T474)));
  g1(28,8)=(-(Omega__*(y(8)*params(12)-(y(4)+y(8)*params(12)))/(y(8)*y(8))));
  g1(28,22)=(-(T261*y(42)*params(3)));
  g1(28,25)=1;
  g1(28,42)=(-((1-params(3)+params(3)*y(22))*T261));
  g1(29,3)=(-(Omega__*(T492-(-y(41))/(y(3)*y(3)))));
  g1(29,6)=(-(Omega__*T474));
  g1(29,22)=(-((T260-y(41)/y(3))*y(42)*params(3)));
  g1(29,41)=(-(Omega__*(-T474)));
  g1(29,42)=(-((1-params(3)+params(3)*y(22))*(T260-y(41)/y(3))));
  g1(29,47)=1;
  g1(30,3)=(-(Omega__*T492));
  g1(30,6)=(-(Omega__*T474));
  g1(30,22)=(-((T260-y(28))*y(42)*params(3)));
  g1(30,26)=1;
  g1(30,28)=Omega__;
  g1(30,42)=(-((1-params(3)+params(3)*y(22))*(T260-y(28))));
  g1(31,3)=(-((-(y(6)*Omega__))/(y(3)*y(3))));
  g1(31,6)=(-(Omega__/y(3)));
  g1(31,22)=(-(y(6)*y(42)*params(3)/y(3)));
  g1(31,24)=1;
  g1(31,42)=(-((1-params(3)+params(3)*y(22))*y(6)/y(3)));
  g1(32,21)=(-((-(y(24)*(y(24)*T58*2*y(21)-y(26))))/T763));
  g1(32,23)=1;
  g1(32,24)=(-((y(31)+y(24)*T278-(y(25)+y(21)*y(26)+y(47)*y(48))-y(24)*T278)/T763));
  g1(32,25)=(-(y(24)/T763));
  g1(32,26)=(-((-(y(24)*(-y(21))))/T763));
  g1(32,31)=(-((-y(24))/T763));
  g1(32,47)=(-((-(y(24)*(-y(48))))/T763));
  g1(32,48)=(-((-(y(24)*(-y(47))))/T763));
  g1(33,22)=1;
  g1(33,23)=(-y(31));
  g1(33,31)=(-y(23));
  g1(34,21)=1;
  g1(34,24)=(-((-(params(5)*y(26)))/(params(5)*y(24)*params(5)*y(24))+((-(params(5)*y(26)))/(params(5)*y(24)*params(5)*y(24))*2*y(26)/(params(5)*y(24))+y(48)*(-(params(5)*2*y(47)))/(params(5)*y(24)*params(5)*y(24))+(-(params(5)*2*y(25)))/(params(5)*y(24)*params(5)*y(24)))/(T306+T306)));
  g1(34,25)=(-(2/(params(5)*y(24))/(T306+T306)));
  g1(34,26)=(-(1/(params(5)*y(24))+2*y(26)/(params(5)*y(24))*1/(params(5)*y(24))/(T306+T306)));
  g1(34,47)=(-(y(48)*2/(params(5)*y(24))/(T306+T306)));
  g1(34,48)=(-(2*y(47)/(params(5)*y(24))/(T306+T306)));
  g1(35,3)=(-(y(9)*params(17)/2*2*(y(3)-1)));
  g1(35,9)=1-T314;
  g1(35,12)=(-1);
  g1(35,13)=(-(1+y(30)));
  g1(35,15)=(-1);
  g1(35,30)=(-y(13));
  g1(35,32)=(-1);
  g1(35,33)=(-1);
  g1(36,7)=(-y(15))/(y(7)*y(7));
  g1(36,10)=(-1);
  g1(36,15)=1/y(7);
  g1(36,20)=1-y(28);
  g1(36,28)=(-y(20));
  g1(37,3)=(-(params(3)*((-((-(y(6)*y(19)))/(y(3)*y(3))))-(-(y(41)*y(38)))/(y(3)*y(3)))));
  g1(37,4)=(-(params(3)*y(17)+y(14)*params(4)));
  g1(37,6)=(-(params(3)*(-(y(19)/y(3)))));
  g1(37,7)=(-(params(3)*(-(y(28)*y(20)))));
  g1(37,8)=(-(params(3)*y(17)*params(12)+y(14)*params(12)*params(4)));
  g1(37,14)=(-((y(4)+y(8)*params(12))*params(4)));
  g1(37,16)=1;
  g1(37,17)=(-(params(3)*(y(4)+y(8)*params(12))));
  g1(37,19)=(-(params(3)*(-T260)));
  g1(37,20)=(-(params(3)*(-(y(28)*y(7)))));
  g1(37,28)=(-(params(3)*(-(y(7)*y(20)))));
  g1(37,38)=(-(params(3)*(-(y(41)/y(3)))));
  g1(37,41)=(-(params(3)*(-(y(38)/y(3)))));
  g1(38,8)=y(17)*(1+T278);
  g1(38,16)=(-(y(23)*(1+T278)));
  g1(38,17)=y(8)*(1+T278);
  g1(38,21)=y(8)*y(17)*T58*2*y(21)-y(16)*y(23)*T58*2*y(21);
  g1(38,23)=(-(y(16)*(1+T278)));
  g1(39,7)=(-y(20));
  g1(39,8)=y(17)*(1+T278);
  g1(39,16)=(-1);
  g1(39,17)=y(8)*(1+T278);
  g1(39,19)=(-1);
  g1(39,20)=(-y(7));
  g1(39,21)=y(8)*y(17)*T58*2*y(21);
  g1(39,38)=(-1);
  g1(40,7)=(-(y(20)/(y(8)*y(17))));
  g1(40,8)=(-((-(y(17)*y(7)*y(20)))/(y(8)*y(17)*y(8)*y(17))));
  g1(40,17)=(-((-(y(8)*y(7)*y(20)))/(y(8)*y(17)*y(8)*y(17))));
  g1(40,20)=(-(y(7)/(y(8)*y(17))));
  g1(40,21)=1;
  g1(41,8)=(-((-(y(17)*y(38)))/(y(8)*y(17)*y(8)*y(17))));
  g1(41,17)=(-((-(y(8)*y(38)))/(y(8)*y(17)*y(8)*y(17))));
  g1(41,38)=(-(1/(y(8)*y(17))));
  g1(41,48)=1;
  g1(42,14)=1;
  g1(42,17)=(-1);
  g1(42,18)=(-1);
  g1(43,3)=(-T474);
  g1(43,49)=1/y(49);
  g1(44,3)=(-((1-params(19))*params(20)*T474));
  g1(44,6)=T561-params(19)*T561;
  g1(44,49)=(-((1-params(19))*params(44)*1/y(49)));
  g1(45,27)=T72-T72*params(21);
  g1(46,29)=1-(params(23)+1-params(23));
  g1(47,28)=1-(params(22)+1-params(22));
  g1(48,3)=y(9)*params(17)/2*2*(y(3)-1);
  g1(48,7)=y(10);
  g1(48,9)=(-(1-T314));
  g1(48,10)=y(7);
  g1(48,32)=1;
  g1(48,33)=1;
  g1(48,34)=1;
  g1(49,9)=(-(1/y(9)));
  g1(49,50)=1;
  g1(50,3)=(-T474);
  g1(50,51)=1;
  g1(51,6)=(-(1/y(6)));
  g1(51,52)=1;
  g1(52,13)=(-(1/y(13)));
  g1(52,53)=1;
  g1(53,11)=(-(1/y(11)));
  g1(53,54)=1;
  g1(54,12)=(-(1/y(12)));
  g1(54,55)=1;
  g1(55,15)=(-(1/y(15)));
  g1(55,56)=1;
  g1(56,10)=(-(1/y(10)));
  g1(56,57)=1;
  g1(57,19)=(-(1/y(19)));
  g1(57,58)=1;
  g1(58,20)=(-(1/y(20)));
  g1(58,59)=1;
  g1(59,16)=(-(1/y(16)));
  g1(59,60)=1;
  g1(60,3)=T492;
  g1(60,4)=(-(1/y(8)));
  g1(60,6)=T474;
  g1(60,8)=(-((y(8)*params(12)-(y(4)+y(8)*params(12)))/(y(8)*y(8))));
  g1(60,61)=1;
  g1(61,39)=(-(1/y(39)));
  g1(61,62)=1;
  g1(62,40)=(-(1/y(40)));
  g1(62,63)=1;
  g1(63,23)=(-(1/y(23)));
  g1(63,64)=1;
  g1(64,10)=1;
  g1(64,15)=(-1);
  g1(64,65)=1;
  g1(65,38)=(-(1/y(38)));
  g1(65,66)=1;
  g1(66,1)=1-params(6);
  g1(66,11)=(-((-(params(8)/(1+params(7))*getPowerDeriv(y(11),1+params(7),1)))/T462));
  g1(66,12)=(-(1/T462));
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],66,4356);
end
end
