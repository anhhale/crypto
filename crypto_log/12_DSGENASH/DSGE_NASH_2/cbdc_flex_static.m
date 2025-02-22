function [residual, g1, g2, g3] = cbdc_flex_static(y, x, params)
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

residual = zeros( 67, 1);

%
% Model equations
%

R_ss__ = 1/params(6);
R_star_ss__ = (y(29));
Y_star_ss__ = (y(30));
I_ss__ = (y(4));
Omega__ = y(43)*(1-params(3)+params(3)*y(23));
T31 = y(14)^(1+params(7));
T34 = y(3)-params(8)*T31/(1+params(7));
T43 = y(4)/I_ss__-1;
T52 = params(9)/2*y(19)^2;
T58 = params(5)/2;
T64 = y(22)^2;
T72 = 1/y(28);
T75 = y(8)^params(10);
T76 = T72*T75;
T79 = y(11)^params(11);
T80 = T76*T79;
T84 = y(9)^(1-params(10)-params(11));
T105 = (y(15)/params(10))^params(10);
T106 = y(28)*T105;
T109 = (y(13)/params(11))^params(11);
T110 = T106*T109;
T112 = (y(14)/(1-params(10)-params(11)))^(1-params(10)-params(11));
T130 = y(11)^params(16);
T139 = params(35)^y(38);
T183 = params(38)*y(41)^(1-params(29))+params(39)*y(40)^(1-params(29));
T191 = y(3)^params(29);
T195 = y(40)^(-params(29));
T202 = (y(41)+y(40))^2;
T213 = y(41)^(-params(29));
T218 = y(45)/(y(41)+y(40))-1/(y(41)+y(40));
T245 = y(12)+params(9)*y(19)/y(15);
T260 = y(10)/y(5);
T261 = (y(8)+y(12)*params(12))/y(12)-T260;
T306 = sqrt((y(27)/(params(5)*y(25)))^2+(1/params(1))^2+y(49)*2*y(48)/(params(5)*y(25))+2*y(26)/(params(5)*y(25)));
T314 = params(17)/2*(y(5)-1)^2;
T315 = y(2)*T314;
T466 = y(3)-T31*params(8)/(1+params(7));
T475 = log(T466)-params(41)*(params(40)-y(45))^2+params(34)*y(39)^(1-params(31))/(1-params(31));
lhs =y(46)+y(44);
rhs =1/T34;
residual(1)= lhs-rhs;
lhs =y(43);
rhs =params(6);
residual(2)= lhs-rhs;
lhs =y(31);
rhs =params(15)/2*T43^2;
residual(3)= lhs-rhs;
lhs =y(33);
rhs =T52/y(15);
residual(4)= lhs-rhs;
lhs =y(34);
rhs =T58*y(12)*y(18)*T64;
residual(5)= lhs-rhs;
lhs =y(32);
rhs =params(2);
residual(6)= lhs-rhs;
lhs =y(7);
rhs =T80*T84;
residual(7)= lhs-rhs;
lhs =y(5)*(y(5)-1);
rhs =1/params(17)*(1+y(7)*params(13)-params(13))+(y(5)-1)*y(5)*y(43)*y(2)/y(2);
residual(8)= lhs-rhs;
lhs =y(2);
rhs =T110*T112;
residual(9)= lhs-rhs;
lhs =y(11)*y(13)/(y(15)*y(8));
rhs =params(11)/params(10);
residual(10)= lhs-rhs;
lhs =y(14)*y(9)/(y(15)*y(8));
rhs =(1-params(10)-params(11))/params(10);
residual(11)= lhs-rhs;
lhs =y(15);
rhs =y(4)+y(15)*params(12);
residual(12)= lhs-rhs;
lhs =y(16);
rhs =y(30)*T130;
residual(13)= lhs-rhs;
lhs =(1-params(36))*y(36);
rhs =T139;
residual(14)= lhs-rhs;
lhs =log(y(38));
rhs =log(y(38))*0.95+x(6);
residual(15)= lhs-rhs;
lhs =log(y(37));
rhs =log(y(37))*0.07999999999999996+0.92*(1.49*log(y(5))+0.26*log(y(2)/(y(2))));
residual(16)= lhs-rhs;
lhs =y(42);
rhs =1;
residual(17)= lhs-rhs;
lhs =y(47);
rhs =0.95*y(47)+0.03*x(5);
residual(18)= lhs-rhs;
lhs =y(3);
rhs =T183^(1/(1-params(29)));
residual(19)= lhs-rhs;
lhs =y(45);
rhs =y(41)/(y(41)+y(40));
residual(20)= lhs-rhs;
lhs =y(44)*params(39)*T191*T195-params(41)*2*y(41)*(params(40)-y(45))/T202;
rhs =y(46)-y(37)*params(6)*y(46)/y(5);
residual(21)= lhs-rhs;
lhs =y(44)*params(38)*T191*T213-params(41)*2*(params(40)-y(45))*T218;
rhs =y(46)-params(6)*y(46)*params(37)/y(5);
residual(22)= lhs-rhs;
lhs =params(34)*y(39)^(-params(31));
rhs =y(46)-y(42)*params(6)*y(46)/y(5);
residual(23)= lhs-rhs;
lhs =y(9);
rhs =params(8)*y(14)^params(7);
residual(24)= lhs-rhs;
lhs =1;
rhs =y(43)*(y(8)+y(12)*params(12))/T245;
residual(25)= lhs-rhs;
lhs =1;
rhs =y(43)*y(10)/y(5);
residual(26)= lhs-rhs;
lhs =y(12);
rhs =1+y(31)+T43*params(15)*y(4)/I_ss__;
residual(27)= lhs-rhs;
lhs =y(26);
rhs =Omega__*T261;
residual(28)= lhs-rhs;
lhs =y(48);
rhs =Omega__*(T260-y(42)/y(5));
residual(29)= lhs-rhs;
lhs =y(27);
rhs =Omega__*(T260-y(29));
residual(30)= lhs-rhs;
lhs =y(25);
rhs =y(10)*Omega__/y(5);
residual(31)= lhs-rhs;
lhs =y(24);
rhs =y(25)/(y(32)+y(25)*T58*T64-(y(26)+y(22)*y(27)+y(48)*y(49)));
residual(32)= lhs-rhs;
lhs =y(23);
rhs =y(32)*y(24);
residual(33)= lhs-rhs;
lhs =y(22);
rhs =y(27)/(params(5)*y(25))-1/params(1)+T306;
residual(34)= lhs-rhs;
lhs =y(2);
rhs =y(34)+y(33)+y(16)+y(3)+y(4)*(1+y(31))+T315;
residual(35)= lhs-rhs;
lhs =y(21);
rhs =y(13)+y(29)*y(21)-y(16)/y(11);
residual(36)= lhs-rhs;
lhs =y(17);
rhs =params(3)*(y(18)*(y(8)+y(12)*params(12))-y(10)*y(20)/y(5)-y(42)*y(39)/y(5)-y(21)*y(29)*y(11))+y(15)*(y(8)+y(12)*params(12))*params(4);
residual(37)= lhs-rhs;
lhs =y(12)*y(18)*(1+T58*T64);
rhs =y(17)*y(24)*(1+T58*T64);
residual(38)= lhs-rhs;
lhs =y(12)*y(18)*(1+T58*T64);
rhs =y(39)+y(17)+y(20)+y(11)*y(21);
residual(39)= lhs-rhs;
lhs =y(22);
rhs =y(11)*y(21)/(y(12)*y(18));
residual(40)= lhs-rhs;
lhs =y(49);
rhs =y(39)/(y(12)*y(18));
residual(41)= lhs-rhs;
lhs =y(15);
rhs =y(19)+y(18);
residual(42)= lhs-rhs;
lhs =log(y(50));
rhs =log(y(5));
residual(43)= lhs-rhs;
lhs =log(y(10)/R_ss__);
rhs =(1-params(19))*(log(y(5))*params(20)+log(y(2)/(y(2)))*0.+log(y(50))*0.3)+log(y(10)/R_ss__)*params(19)+x(1);
residual(44)= lhs-rhs;
lhs =log(y(28));
rhs =log(y(28))*params(21)-x(2);
residual(45)= lhs-rhs;
lhs =y(30);
rhs =(1-params(23))*Y_star_ss__+y(30)*params(23)+x(4);
residual(46)= lhs-rhs;
lhs =y(29);
rhs =(1-params(22))*R_star_ss__+y(29)*params(22)+x(3);
residual(47)= lhs-rhs;
lhs =y(35);
rhs =y(2)-y(11)*y(13)-T315-y(33)-y(34);
residual(48)= lhs-rhs;
lhs =y(51);
rhs =log(y(2));
residual(49)= lhs-rhs;
lhs =y(52);
rhs =log(y(5));
residual(50)= lhs-rhs;
lhs =y(53);
rhs =log(y(10));
residual(51)= lhs-rhs;
lhs =y(54);
rhs =log(y(4));
residual(52)= lhs-rhs;
lhs =y(55);
rhs =log(y(14));
residual(53)= lhs-rhs;
lhs =y(56);
rhs =log(y(3));
residual(54)= lhs-rhs;
lhs =y(57);
rhs =log(y(16));
residual(55)= lhs-rhs;
lhs =y(58);
rhs =log(y(13));
residual(56)= lhs-rhs;
lhs =y(59);
rhs =log(y(20));
residual(57)= lhs-rhs;
lhs =y(60);
rhs =log(y(21));
residual(58)= lhs-rhs;
lhs =y(61);
rhs =log(y(17));
residual(59)= lhs-rhs;
lhs =y(62);
rhs =log(T261);
residual(60)= lhs-rhs;
lhs =y(63);
rhs =log(y(40));
residual(61)= lhs-rhs;
lhs =y(64);
rhs =log(y(41));
residual(62)= lhs-rhs;
lhs =y(65);
rhs =log(y(24));
residual(63)= lhs-rhs;
lhs =y(66);
rhs =y(16)-y(13);
residual(64)= lhs-rhs;
lhs =y(67);
rhs =log(y(39));
residual(65)= lhs-rhs;
lhs =y(6);
rhs =T475;
residual(66)= lhs-rhs;
lhs =y(1);
rhs =T475+params(6)*y(1);
residual(67)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(67, 67);

  %
  % Jacobian matrix
  %

T486 = ((y(2))-y(2))/((y(2))*(y(2)))/(y(2)/(y(2)));
T500 = getPowerDeriv(y(3),params(29),1);
T530 = 1/y(5);
T622 = 1/R_ss__/(y(10)/R_ss__);
T690 = getPowerDeriv(y(14),1+params(7),1);
T710 = (-((-(params(8)/(1+params(7))*T690))/T466));
T786 = (y(32)+y(25)*T58*T64-(y(26)+y(22)*y(27)+y(48)*y(49)))*(y(32)+y(25)*T58*T64-(y(26)+y(22)*y(27)+y(48)*y(49)));
T893 = (-(params(34)*getPowerDeriv(y(39),1-params(31),1)/(1-params(31))));
T896 = getPowerDeriv(T183,1/(1-params(29)),1);
T917 = params(41)*2*(params(40)-y(45))*((-y(45))/((y(41)+y(40))*(y(41)+y(40)))-(-1)/((y(41)+y(40))*(y(41)+y(40))));
  g1(1,3)=(-((-1)/(T34*T34)));
  g1(1,14)=(-(params(8)*T690/(1+params(7))/(T34*T34)));
  g1(1,44)=1;
  g1(1,46)=1;
  g1(2,43)=1;
  g1(3,4)=(-(params(15)/2*(I_ss__-y(4))/(I_ss__*I_ss__)*2*T43));
  g1(3,31)=1;
  g1(4,15)=(-((-T52)/(y(15)*y(15))));
  g1(4,19)=(-(params(9)/2*2*y(19)/y(15)));
  g1(4,33)=1;
  g1(5,12)=(-(T64*T58*y(18)));
  g1(5,18)=(-(T58*y(12)*T64));
  g1(5,22)=(-(T58*y(12)*y(18)*2*y(22)));
  g1(5,34)=1;
  g1(6,32)=1;
  g1(7,7)=1;
  g1(7,8)=(-(T84*T79*T72*getPowerDeriv(y(8),params(10),1)));
  g1(7,9)=(-(T80*getPowerDeriv(y(9),1-params(10)-params(11),1)));
  g1(7,11)=(-(T84*T76*getPowerDeriv(y(11),params(11),1)));
  g1(7,28)=(-(T84*T79*T75*(-1)/(y(28)*y(28))));
  g1(8,5)=y(5)+y(5)-1-(y(5)*y(43)*y(2)/y(2)+(y(5)-1)*y(43)*y(2)/y(2));
  g1(8,7)=(-(1/params(17)*params(13)));
  g1(8,43)=(-(y(5)*(y(5)-1)));
  g1(9,2)=1;
  g1(9,13)=(-(T112*T106*1/params(11)*getPowerDeriv(y(13)/params(11),params(11),1)));
  g1(9,14)=(-(T110*1/(1-params(10)-params(11))*getPowerDeriv(y(14)/(1-params(10)-params(11)),1-params(10)-params(11),1)));
  g1(9,15)=(-(T112*T109*y(28)*1/params(10)*getPowerDeriv(y(15)/params(10),params(10),1)));
  g1(9,28)=(-(T112*T105*T109));
  g1(10,8)=(-(y(15)*y(11)*y(13)))/(y(15)*y(8)*y(15)*y(8));
  g1(10,11)=y(13)/(y(15)*y(8));
  g1(10,13)=y(11)/(y(15)*y(8));
  g1(10,15)=(-(y(8)*y(11)*y(13)))/(y(15)*y(8)*y(15)*y(8));
  g1(11,8)=(-(y(15)*y(14)*y(9)))/(y(15)*y(8)*y(15)*y(8));
  g1(11,9)=y(14)/(y(15)*y(8));
  g1(11,14)=y(9)/(y(15)*y(8));
  g1(11,15)=(-(y(8)*y(14)*y(9)))/(y(15)*y(8)*y(15)*y(8));
  g1(12,4)=(-1);
  g1(12,15)=1-params(12);
  g1(13,11)=(-(y(30)*getPowerDeriv(y(11),params(16),1)));
  g1(13,16)=1;
  g1(13,30)=(-T130);
  g1(14,36)=1-params(36);
  g1(14,38)=(-(T139*log(params(35))));
  g1(15,38)=1/y(38)-0.95*1/y(38);
  g1(16,2)=(-(0.92*0.26*T486));
  g1(16,5)=(-(0.92*1.49*T530));
  g1(16,37)=1/y(37)-0.07999999999999996*1/y(37);
  g1(17,42)=1;
  g1(18,47)=0.05000000000000004;
  g1(19,3)=1;
  g1(19,40)=(-(params(39)*getPowerDeriv(y(40),1-params(29),1)*T896));
  g1(19,41)=(-(T896*params(38)*getPowerDeriv(y(41),1-params(29),1)));
  g1(20,40)=(-((-y(41))/((y(41)+y(40))*(y(41)+y(40)))));
  g1(20,41)=(-((y(41)+y(40)-y(41))/((y(41)+y(40))*(y(41)+y(40)))));
  g1(20,45)=1;
  g1(21,3)=T195*y(44)*params(39)*T500;
  g1(21,5)=(-(y(37)*params(6)*y(46)))/(y(5)*y(5));
  g1(21,37)=params(6)*y(46)/y(5);
  g1(21,40)=y(44)*params(39)*T191*getPowerDeriv(y(40),(-params(29)),1)-params(41)*(-(2*y(41)*(params(40)-y(45))*2*(y(41)+y(40))))/(T202*T202);
  g1(21,41)=(-(params(41)*(T202*2*(params(40)-y(45))-2*y(41)*(params(40)-y(45))*2*(y(41)+y(40)))/(T202*T202)));
  g1(21,44)=params(39)*T191*T195;
  g1(21,45)=(-(params(41)*(-(2*y(41)))/T202));
  g1(21,46)=(-(1-params(6)*y(37)/y(5)));
  g1(22,3)=T213*y(44)*params(38)*T500;
  g1(22,5)=(-(params(6)*y(46)*params(37)))/(y(5)*y(5));
  g1(22,40)=(-T917);
  g1(22,41)=y(44)*params(38)*T191*getPowerDeriv(y(41),(-params(29)),1)-T917;
  g1(22,44)=params(38)*T191*T213;
  g1(22,45)=(-(params(41)*(T218*(-2)+2*(params(40)-y(45))*1/(y(41)+y(40)))));
  g1(22,46)=(-(1-params(6)*params(37)/y(5)));
  g1(23,5)=(-(y(42)*params(6)*y(46)))/(y(5)*y(5));
  g1(23,39)=params(34)*getPowerDeriv(y(39),(-params(31)),1);
  g1(23,42)=params(6)*y(46)/y(5);
  g1(23,46)=(-(1-params(6)*y(42)/y(5)));
  g1(24,9)=1;
  g1(24,14)=(-(params(8)*getPowerDeriv(y(14),params(7),1)));
  g1(25,8)=(-(y(43)/T245));
  g1(25,12)=(-((T245*y(43)*params(12)-y(43)*(y(8)+y(12)*params(12)))/(T245*T245)));
  g1(25,15)=(-((-(y(43)*(y(8)+y(12)*params(12))*(-(params(9)*y(19)))/(y(15)*y(15))))/(T245*T245)));
  g1(25,19)=(-((-(y(43)*(y(8)+y(12)*params(12))*params(9)/y(15)))/(T245*T245)));
  g1(25,43)=(-((y(8)+y(12)*params(12))/T245));
  g1(26,5)=(-((-(y(43)*y(10)))/(y(5)*y(5))));
  g1(26,10)=(-(y(43)/y(5)));
  g1(26,43)=(-T260);
  g1(27,4)=(-(params(15)*y(4)/I_ss__*(I_ss__-y(4))/(I_ss__*I_ss__)+T43*params(15)*(I_ss__-y(4))/(I_ss__*I_ss__)));
  g1(27,12)=1;
  g1(27,31)=(-1);
  g1(28,5)=(-(Omega__*(-((-y(10))/(y(5)*y(5))))));
  g1(28,8)=(-(Omega__*1/y(12)));
  g1(28,10)=(-(Omega__*(-T530)));
  g1(28,12)=(-(Omega__*(y(12)*params(12)-(y(8)+y(12)*params(12)))/(y(12)*y(12))));
  g1(28,23)=(-(T261*y(43)*params(3)));
  g1(28,26)=1;
  g1(28,43)=(-((1-params(3)+params(3)*y(23))*T261));
  g1(29,5)=(-(Omega__*((-y(10))/(y(5)*y(5))-(-y(42))/(y(5)*y(5)))));
  g1(29,10)=(-(Omega__*T530));
  g1(29,23)=(-((T260-y(42)/y(5))*y(43)*params(3)));
  g1(29,42)=(-(Omega__*(-T530)));
  g1(29,43)=(-((1-params(3)+params(3)*y(23))*(T260-y(42)/y(5))));
  g1(29,48)=1;
  g1(30,5)=(-(Omega__*(-y(10))/(y(5)*y(5))));
  g1(30,10)=(-(Omega__*T530));
  g1(30,23)=(-((T260-y(29))*y(43)*params(3)));
  g1(30,27)=1;
  g1(30,29)=Omega__;
  g1(30,43)=(-((1-params(3)+params(3)*y(23))*(T260-y(29))));
  g1(31,5)=(-((-(y(10)*Omega__))/(y(5)*y(5))));
  g1(31,10)=(-(Omega__/y(5)));
  g1(31,23)=(-(y(10)*y(43)*params(3)/y(5)));
  g1(31,25)=1;
  g1(31,43)=(-((1-params(3)+params(3)*y(23))*y(10)/y(5)));
  g1(32,22)=(-((-(y(25)*(y(25)*T58*2*y(22)-y(27))))/T786));
  g1(32,24)=1;
  g1(32,25)=(-((y(32)+y(25)*T58*T64-(y(26)+y(22)*y(27)+y(48)*y(49))-y(25)*T58*T64)/T786));
  g1(32,26)=(-(y(25)/T786));
  g1(32,27)=(-((-(y(25)*(-y(22))))/T786));
  g1(32,32)=(-((-y(25))/T786));
  g1(32,48)=(-((-(y(25)*(-y(49))))/T786));
  g1(32,49)=(-((-(y(25)*(-y(48))))/T786));
  g1(33,23)=1;
  g1(33,24)=(-y(32));
  g1(33,32)=(-y(24));
  g1(34,22)=1;
  g1(34,25)=(-((-(params(5)*y(27)))/(params(5)*y(25)*params(5)*y(25))+((-(params(5)*y(27)))/(params(5)*y(25)*params(5)*y(25))*2*y(27)/(params(5)*y(25))+y(49)*(-(params(5)*2*y(48)))/(params(5)*y(25)*params(5)*y(25))+(-(params(5)*2*y(26)))/(params(5)*y(25)*params(5)*y(25)))/(T306+T306)));
  g1(34,26)=(-(2/(params(5)*y(25))/(T306+T306)));
  g1(34,27)=(-(1/(params(5)*y(25))+2*y(27)/(params(5)*y(25))*1/(params(5)*y(25))/(T306+T306)));
  g1(34,48)=(-(y(49)*2/(params(5)*y(25))/(T306+T306)));
  g1(34,49)=(-(2*y(48)/(params(5)*y(25))/(T306+T306)));
  g1(35,2)=1-T314;
  g1(35,3)=(-1);
  g1(35,4)=(-(1+y(31)));
  g1(35,5)=(-(y(2)*params(17)/2*2*(y(5)-1)));
  g1(35,16)=(-1);
  g1(35,31)=(-y(4));
  g1(35,33)=(-1);
  g1(35,34)=(-1);
  g1(36,11)=(-y(16))/(y(11)*y(11));
  g1(36,13)=(-1);
  g1(36,16)=1/y(11);
  g1(36,21)=1-y(29);
  g1(36,29)=(-y(21));
  g1(37,5)=(-(params(3)*((-((-(y(10)*y(20)))/(y(5)*y(5))))-(-(y(42)*y(39)))/(y(5)*y(5)))));
  g1(37,8)=(-(params(3)*y(18)+y(15)*params(4)));
  g1(37,10)=(-(params(3)*(-(y(20)/y(5)))));
  g1(37,11)=(-(params(3)*(-(y(29)*y(21)))));
  g1(37,12)=(-(params(3)*y(18)*params(12)+y(15)*params(12)*params(4)));
  g1(37,15)=(-((y(8)+y(12)*params(12))*params(4)));
  g1(37,17)=1;
  g1(37,18)=(-(params(3)*(y(8)+y(12)*params(12))));
  g1(37,20)=(-(params(3)*(-T260)));
  g1(37,21)=(-(params(3)*(-(y(29)*y(11)))));
  g1(37,29)=(-(params(3)*(-(y(11)*y(21)))));
  g1(37,39)=(-(params(3)*(-(y(42)/y(5)))));
  g1(37,42)=(-(params(3)*(-(y(39)/y(5)))));
  g1(38,12)=y(18)*(1+T58*T64);
  g1(38,17)=(-(y(24)*(1+T58*T64)));
  g1(38,18)=y(12)*(1+T58*T64);
  g1(38,22)=y(12)*y(18)*T58*2*y(22)-y(17)*y(24)*T58*2*y(22);
  g1(38,24)=(-(y(17)*(1+T58*T64)));
  g1(39,11)=(-y(21));
  g1(39,12)=y(18)*(1+T58*T64);
  g1(39,17)=(-1);
  g1(39,18)=y(12)*(1+T58*T64);
  g1(39,20)=(-1);
  g1(39,21)=(-y(11));
  g1(39,22)=y(12)*y(18)*T58*2*y(22);
  g1(39,39)=(-1);
  g1(40,11)=(-(y(21)/(y(12)*y(18))));
  g1(40,12)=(-((-(y(18)*y(11)*y(21)))/(y(12)*y(18)*y(12)*y(18))));
  g1(40,18)=(-((-(y(12)*y(11)*y(21)))/(y(12)*y(18)*y(12)*y(18))));
  g1(40,21)=(-(y(11)/(y(12)*y(18))));
  g1(40,22)=1;
  g1(41,12)=(-((-(y(18)*y(39)))/(y(12)*y(18)*y(12)*y(18))));
  g1(41,18)=(-((-(y(12)*y(39)))/(y(12)*y(18)*y(12)*y(18))));
  g1(41,39)=(-(1/(y(12)*y(18))));
  g1(41,49)=1;
  g1(42,15)=1;
  g1(42,18)=(-1);
  g1(42,19)=(-1);
  g1(43,5)=(-T530);
  g1(43,50)=1/y(50);
  g1(44,2)=(-((1-params(19))*0.*T486));
  g1(44,5)=(-((1-params(19))*params(20)*T530));
  g1(44,10)=T622-params(19)*T622;
  g1(44,50)=(-((1-params(19))*0.3*1/y(50)));
  g1(45,28)=T72-T72*params(21);
  g1(46,30)=1-(params(23)+1-params(23));
  g1(47,29)=1-(params(22)+1-params(22));
  g1(48,2)=(-(1-T314));
  g1(48,5)=y(2)*params(17)/2*2*(y(5)-1);
  g1(48,11)=y(13);
  g1(48,13)=y(11);
  g1(48,33)=1;
  g1(48,34)=1;
  g1(48,35)=1;
  g1(49,2)=(-(1/y(2)));
  g1(49,51)=1;
  g1(50,5)=(-T530);
  g1(50,52)=1;
  g1(51,10)=(-(1/y(10)));
  g1(51,53)=1;
  g1(52,4)=(-(1/y(4)));
  g1(52,54)=1;
  g1(53,14)=(-(1/y(14)));
  g1(53,55)=1;
  g1(54,3)=(-(1/y(3)));
  g1(54,56)=1;
  g1(55,16)=(-(1/y(16)));
  g1(55,57)=1;
  g1(56,13)=(-(1/y(13)));
  g1(56,58)=1;
  g1(57,20)=(-(1/y(20)));
  g1(57,59)=1;
  g1(58,21)=(-(1/y(21)));
  g1(58,60)=1;
  g1(59,17)=(-(1/y(17)));
  g1(59,61)=1;
  g1(60,5)=(-((-((-y(10))/(y(5)*y(5))))/T261));
  g1(60,8)=(-(1/y(12)/T261));
  g1(60,10)=(-((-T530)/T261));
  g1(60,12)=(-((y(12)*params(12)-(y(8)+y(12)*params(12)))/(y(12)*y(12))/T261));
  g1(60,62)=1;
  g1(61,40)=(-(1/y(40)));
  g1(61,63)=1;
  g1(62,41)=(-(1/y(41)));
  g1(62,64)=1;
  g1(63,24)=(-(1/y(24)));
  g1(63,65)=1;
  g1(64,13)=1;
  g1(64,16)=(-1);
  g1(64,66)=1;
  g1(65,39)=(-(1/y(39)));
  g1(65,67)=1;
  g1(66,3)=(-(1/T466));
  g1(66,6)=1;
  g1(66,14)=T710;
  g1(66,39)=T893;
  g1(66,45)=params(41)*(-(2*(params(40)-y(45))));
  g1(67,1)=1-params(6);
  g1(67,3)=(-(1/T466));
  g1(67,14)=T710;
  g1(67,39)=T893;
  g1(67,45)=params(41)*(-(2*(params(40)-y(45))));
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],67,4489);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],67,300763);
end
end
end
end
