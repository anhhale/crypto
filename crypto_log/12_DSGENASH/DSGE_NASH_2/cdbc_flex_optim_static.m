function [residual, g1, g2] = cdbc_flex_optim_static(y, x, params)
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

residual = zeros( 67, 1);

%
% Model equations
%

R_ss__ = 1/params(6);
R_star_ss__ = (y(31));
Y_star_ss__ = (y(32));
I_ss__ = (y(18));
Omega__ = y(42)*(1-params(3)+params(3)*y(25));
T34 = y(2)-params(8)*y(17)^(1+params(7))/(1+params(7));
T43 = y(18)/I_ss__-1;
T52 = params(9)/2*y(22)^2;
T58 = params(5)/2;
T64 = y(24)^2;
T72 = 1/y(30);
T76 = T72*y(11)^params(10);
T80 = T76*y(14)^params(11);
T84 = y(12)^(1-params(10)-params(11));
T105 = (y(19)/params(10))^params(10);
T106 = y(30)*T105;
T109 = (y(16)/params(11))^params(11);
T110 = T106*T109;
T112 = (y(17)/(1-params(10)-params(11)))^(1-params(10)-params(11));
T183 = params(38)*y(7)^(1-params(29))+params(39)*y(5)^(1-params(29));
T195 = y(5)^(-params(29));
T202 = (y(7)+y(5))^2;
T213 = y(7)^(-params(29));
T218 = y(44)/(y(7)+y(5))-1/(y(7)+y(5));
T245 = y(15)+params(9)*y(22)/y(19);
T260 = y(13)/y(3);
T261 = (y(11)+y(15)*params(12))/y(15)-T260;
T278 = T58*T64;
T306 = sqrt((y(29)/(params(5)*y(27)))^2+(1/params(1))^2+y(48)*2*y(47)/(params(5)*y(27))+2*y(28)/(params(5)*y(27)));
T314 = params(17)/2*(y(3)-1)^2;
T315 = y(1)*T314;
T465 = y(2)-y(17)^(1+params(7))*params(8)/(1+params(7));
T474 = log(T465)-params(41)*(params(40)-y(44))^2+params(34)*y(6)^(1-params(31))/(1-params(31));
T484 = ((y(1))-y(1))/((y(1))*(y(1)))/(y(1)/(y(1)));
T513 = 1/y(3);
T531 = (-y(13))/(y(3)*y(3));
T566 = getPowerDeriv(T183,1/(1-params(29)),1);
T587 = params(41)*2*(params(40)-y(44))*((-y(44))/((y(7)+y(5))*(y(7)+y(5)))-(-1)/((y(7)+y(5))*(y(7)+y(5))));
T603 = (-(params(34)*getPowerDeriv(y(6),1-params(31),1)/(1-params(31))));
T672 = 1/R_ss__/(y(13)/R_ss__);
T756 = (-((-(params(8)/(1+params(7))*getPowerDeriv(y(17),1+params(7),1)))/T465));
T836 = (y(34)+y(27)*T278-(y(28)+y(24)*y(29)+y(47)*y(48)))*(y(34)+y(27)*T278-(y(28)+y(24)*y(29)+y(47)*y(48)));
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
rhs =T58*y(15)*y(21)*T64;
residual(5)= lhs-rhs;
lhs =y(34);
rhs =params(2);
residual(6)= lhs-rhs;
lhs =y(10);
rhs =T80*T84;
residual(7)= lhs-rhs;
lhs =y(3)*(y(3)-1);
rhs =1/params(17)*(1+y(10)*params(13)-params(13))+(y(3)-1)*y(3)*y(42)*y(1)/y(1);
residual(8)= lhs-rhs;
lhs =y(1);
rhs =T110*T112;
residual(9)= lhs-rhs;
lhs =y(14)*y(16)/(y(19)*y(11));
rhs =params(11)/params(10);
residual(10)= lhs-rhs;
lhs =y(17)*y(12)/(y(19)*y(11));
rhs =(1-params(10)-params(11))/params(10);
residual(11)= lhs-rhs;
lhs =y(19);
rhs =y(18)+y(19)*params(12);
residual(12)= lhs-rhs;
lhs =y(20);
rhs =y(32)*y(14)^params(16);
residual(13)= lhs-rhs;
lhs =(1-params(36))*y(38);
rhs =params(35)^y(40);
residual(14)= lhs-rhs;
lhs =log(y(40));
rhs =log(y(40))*0.95+x(6);
residual(15)= lhs-rhs;
lhs =log(y(39));
rhs =log(y(39))*(1-params(50))+params(50)*(params(47)*log(y(3))+params(48)*log(y(1)/(y(1))));
residual(16)= lhs-rhs;
lhs =y(41);
rhs =1;
residual(17)= lhs-rhs;
lhs =y(46);
rhs =0.95*y(46)+0.03*x(5);
residual(18)= lhs-rhs;
lhs =y(2);
rhs =T183^(1/(1-params(29)));
residual(19)= lhs-rhs;
lhs =y(44);
rhs =y(7)/(y(7)+y(5));
residual(20)= lhs-rhs;
lhs =y(43)*params(39)*y(2)^params(29)*T195-params(41)*2*y(7)*(params(40)-y(44))/T202;
rhs =y(45)-y(39)*params(6)*y(45)/y(3);
residual(21)= lhs-rhs;
lhs =y(43)*params(38)*y(2)^params(29)*T213-params(41)*2*(params(40)-y(44))*T218;
rhs =y(45)-params(6)*y(45)*params(37)/y(3);
residual(22)= lhs-rhs;
lhs =params(34)*y(6)^(-params(31));
rhs =y(45)-y(41)*params(6)*y(45)/y(3);
residual(23)= lhs-rhs;
lhs =y(12);
rhs =params(8)*y(17)^params(7);
residual(24)= lhs-rhs;
lhs =1;
rhs =y(42)*(y(11)+y(15)*params(12))/T245;
residual(25)= lhs-rhs;
lhs =1;
rhs =y(42)*y(13)/y(3);
residual(26)= lhs-rhs;
lhs =y(15);
rhs =1+y(33)+T43*params(15)*y(18)/I_ss__;
residual(27)= lhs-rhs;
lhs =y(28);
rhs =Omega__*T261;
residual(28)= lhs-rhs;
lhs =y(47);
rhs =Omega__*(T260-y(41)/y(3));
residual(29)= lhs-rhs;
lhs =y(29);
rhs =Omega__*(T260-y(31));
residual(30)= lhs-rhs;
lhs =y(27);
rhs =y(13)*Omega__/y(3);
residual(31)= lhs-rhs;
lhs =y(26);
rhs =y(27)/(y(34)+y(27)*T278-(y(28)+y(24)*y(29)+y(47)*y(48)));
residual(32)= lhs-rhs;
lhs =y(25);
rhs =y(34)*y(26);
residual(33)= lhs-rhs;
lhs =y(24);
rhs =y(29)/(params(5)*y(27))-1/params(1)+T306;
residual(34)= lhs-rhs;
lhs =y(1);
rhs =y(36)+y(35)+y(20)+y(2)+y(18)*(1+y(33))+T315;
residual(35)= lhs-rhs;
lhs =y(8);
rhs =y(16)+y(31)*y(8)-y(20)/y(14);
residual(36)= lhs-rhs;
lhs =y(4);
rhs =params(3)*(y(21)*(y(11)+y(15)*params(12))-y(13)*y(23)/y(3)-y(41)*y(6)/y(3)-y(8)*y(31)*y(14))+y(19)*(y(11)+y(15)*params(12))*params(4);
residual(37)= lhs-rhs;
lhs =y(15)*y(21)*(1+T278);
rhs =y(4)*y(26)*(1+T278);
residual(38)= lhs-rhs;
lhs =y(15)*y(21)*(1+T278);
rhs =y(6)+y(4)+y(23)+y(14)*y(8);
residual(39)= lhs-rhs;
lhs =y(24);
rhs =y(14)*y(8)/(y(15)*y(21));
residual(40)= lhs-rhs;
lhs =y(48);
rhs =y(6)/(y(15)*y(21));
residual(41)= lhs-rhs;
lhs =y(19);
rhs =y(22)+y(21);
residual(42)= lhs-rhs;
lhs =log(y(49));
rhs =log(y(3));
residual(43)= lhs-rhs;
lhs =log(y(13)/R_ss__);
rhs =(1-params(19))*(log(y(3))*params(20)+log(y(1)/(y(1)))*0.+log(y(49))*params(49))+log(y(13)/R_ss__)*params(19)+x(1);
residual(44)= lhs-rhs;
lhs =log(y(30));
rhs =log(y(30))*params(21)+x(2);
residual(45)= lhs-rhs;
lhs =y(32);
rhs =(1-params(23))*Y_star_ss__+y(32)*params(23)+x(4);
residual(46)= lhs-rhs;
lhs =y(31);
rhs =(1-params(22))*R_star_ss__+y(31)*params(22)+x(3);
residual(47)= lhs-rhs;
lhs =y(37);
rhs =y(1)-y(14)*y(16)-T315-y(35)-y(36);
residual(48)= lhs-rhs;
lhs =y(51);
rhs =log(y(1));
residual(49)= lhs-rhs;
lhs =y(52);
rhs =log(y(3));
residual(50)= lhs-rhs;
lhs =y(53);
rhs =log(y(13));
residual(51)= lhs-rhs;
lhs =y(54);
rhs =log(y(18));
residual(52)= lhs-rhs;
lhs =y(55);
rhs =log(y(17));
residual(53)= lhs-rhs;
lhs =y(56);
rhs =log(y(2));
residual(54)= lhs-rhs;
lhs =y(57);
rhs =log(y(20));
residual(55)= lhs-rhs;
lhs =y(58);
rhs =log(y(16));
residual(56)= lhs-rhs;
lhs =y(59);
rhs =log(y(23));
residual(57)= lhs-rhs;
lhs =y(60);
rhs =log(y(8));
residual(58)= lhs-rhs;
lhs =y(61);
rhs =log(y(4));
residual(59)= lhs-rhs;
lhs =y(62);
rhs =T261;
residual(60)= lhs-rhs;
lhs =y(63);
rhs =log(y(5));
residual(61)= lhs-rhs;
lhs =y(64);
rhs =log(y(7));
residual(62)= lhs-rhs;
lhs =y(65);
rhs =log(y(26));
residual(63)= lhs-rhs;
lhs =y(66);
rhs =y(20)-y(16);
residual(64)= lhs-rhs;
lhs =y(67);
rhs =log(y(6));
residual(65)= lhs-rhs;
lhs =y(50);
rhs =T474;
residual(66)= lhs-rhs;
lhs =y(9);
rhs =T474+params(6)*y(9);
residual(67)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(67, 67);

  %
  % Jacobian matrix
  %

  g1(1,2)=(-((-1)/(T34*T34)));
  g1(1,17)=(-(params(8)*getPowerDeriv(y(17),1+params(7),1)/(1+params(7))/(T34*T34)));
  g1(1,43)=1;
  g1(1,45)=1;
  g1(2,42)=1;
  g1(3,18)=(-(params(15)/2*(I_ss__-y(18))/(I_ss__*I_ss__)*2*T43));
  g1(3,33)=1;
  g1(4,19)=(-((-T52)/(y(19)*y(19))));
  g1(4,22)=(-(params(9)/2*2*y(22)/y(19)));
  g1(4,35)=1;
  g1(5,15)=(-(T64*T58*y(21)));
  g1(5,21)=(-(T58*y(15)*T64));
  g1(5,24)=(-(T58*y(15)*y(21)*2*y(24)));
  g1(5,36)=1;
  g1(6,34)=1;
  g1(7,10)=1;
  g1(7,11)=(-(T84*y(14)^params(11)*T72*getPowerDeriv(y(11),params(10),1)));
  g1(7,12)=(-(T80*getPowerDeriv(y(12),1-params(10)-params(11),1)));
  g1(7,14)=(-(T84*T76*getPowerDeriv(y(14),params(11),1)));
  g1(7,30)=(-(T84*y(14)^params(11)*y(11)^params(10)*(-1)/(y(30)*y(30))));
  g1(8,3)=y(3)+y(3)-1-(y(3)*y(42)*y(1)/y(1)+(y(3)-1)*y(42)*y(1)/y(1));
  g1(8,10)=(-(1/params(17)*params(13)));
  g1(8,42)=(-(y(3)*(y(3)-1)));
  g1(9,1)=1;
  g1(9,16)=(-(T112*T106*1/params(11)*getPowerDeriv(y(16)/params(11),params(11),1)));
  g1(9,17)=(-(T110*1/(1-params(10)-params(11))*getPowerDeriv(y(17)/(1-params(10)-params(11)),1-params(10)-params(11),1)));
  g1(9,19)=(-(T112*T109*y(30)*1/params(10)*getPowerDeriv(y(19)/params(10),params(10),1)));
  g1(9,30)=(-(T112*T105*T109));
  g1(10,11)=(-(y(19)*y(14)*y(16)))/(y(19)*y(11)*y(19)*y(11));
  g1(10,14)=y(16)/(y(19)*y(11));
  g1(10,16)=y(14)/(y(19)*y(11));
  g1(10,19)=(-(y(11)*y(14)*y(16)))/(y(19)*y(11)*y(19)*y(11));
  g1(11,11)=(-(y(19)*y(17)*y(12)))/(y(19)*y(11)*y(19)*y(11));
  g1(11,12)=y(17)/(y(19)*y(11));
  g1(11,17)=y(12)/(y(19)*y(11));
  g1(11,19)=(-(y(11)*y(17)*y(12)))/(y(19)*y(11)*y(19)*y(11));
  g1(12,18)=(-1);
  g1(12,19)=1-params(12);
  g1(13,14)=(-(y(32)*getPowerDeriv(y(14),params(16),1)));
  g1(13,20)=1;
  g1(13,32)=(-(y(14)^params(16)));
  g1(14,38)=1-params(36);
  g1(14,40)=(-(params(35)^y(40)*log(params(35))));
  g1(15,40)=1/y(40)-0.95*1/y(40);
  g1(16,1)=(-(params(50)*params(48)*T484));
  g1(16,3)=(-(params(50)*params(47)*T513));
  g1(16,39)=1/y(39)-(1-params(50))*1/y(39);
  g1(17,41)=1;
  g1(18,46)=0.05000000000000004;
  g1(19,2)=1;
  g1(19,5)=(-(params(39)*getPowerDeriv(y(5),1-params(29),1)*T566));
  g1(19,7)=(-(T566*params(38)*getPowerDeriv(y(7),1-params(29),1)));
  g1(20,5)=(-((-y(7))/((y(7)+y(5))*(y(7)+y(5)))));
  g1(20,7)=(-((y(7)+y(5)-y(7))/((y(7)+y(5))*(y(7)+y(5)))));
  g1(20,44)=1;
  g1(21,2)=T195*y(43)*params(39)*getPowerDeriv(y(2),params(29),1);
  g1(21,3)=(-(y(39)*params(6)*y(45)))/(y(3)*y(3));
  g1(21,5)=y(43)*params(39)*y(2)^params(29)*getPowerDeriv(y(5),(-params(29)),1)-params(41)*(-(2*y(7)*(params(40)-y(44))*2*(y(7)+y(5))))/(T202*T202);
  g1(21,7)=(-(params(41)*(T202*2*(params(40)-y(44))-2*y(7)*(params(40)-y(44))*2*(y(7)+y(5)))/(T202*T202)));
  g1(21,39)=params(6)*y(45)/y(3);
  g1(21,43)=params(39)*y(2)^params(29)*T195;
  g1(21,44)=(-(params(41)*(-(2*y(7)))/T202));
  g1(21,45)=(-(1-params(6)*y(39)/y(3)));
  g1(22,2)=T213*y(43)*params(38)*getPowerDeriv(y(2),params(29),1);
  g1(22,3)=(-(params(6)*y(45)*params(37)))/(y(3)*y(3));
  g1(22,5)=(-T587);
  g1(22,7)=y(43)*params(38)*y(2)^params(29)*getPowerDeriv(y(7),(-params(29)),1)-T587;
  g1(22,43)=params(38)*y(2)^params(29)*T213;
  g1(22,44)=(-(params(41)*(T218*(-2)+2*(params(40)-y(44))*1/(y(7)+y(5)))));
  g1(22,45)=(-(1-params(6)*params(37)/y(3)));
  g1(23,3)=(-(y(41)*params(6)*y(45)))/(y(3)*y(3));
  g1(23,6)=params(34)*getPowerDeriv(y(6),(-params(31)),1);
  g1(23,41)=params(6)*y(45)/y(3);
  g1(23,45)=(-(1-params(6)*y(41)/y(3)));
  g1(24,12)=1;
  g1(24,17)=(-(params(8)*getPowerDeriv(y(17),params(7),1)));
  g1(25,11)=(-(y(42)/T245));
  g1(25,15)=(-((T245*y(42)*params(12)-y(42)*(y(11)+y(15)*params(12)))/(T245*T245)));
  g1(25,19)=(-((-(y(42)*(y(11)+y(15)*params(12))*(-(params(9)*y(22)))/(y(19)*y(19))))/(T245*T245)));
  g1(25,22)=(-((-(y(42)*(y(11)+y(15)*params(12))*params(9)/y(19)))/(T245*T245)));
  g1(25,42)=(-((y(11)+y(15)*params(12))/T245));
  g1(26,3)=(-((-(y(42)*y(13)))/(y(3)*y(3))));
  g1(26,13)=(-(y(42)/y(3)));
  g1(26,42)=(-T260);
  g1(27,15)=1;
  g1(27,18)=(-(params(15)*y(18)/I_ss__*(I_ss__-y(18))/(I_ss__*I_ss__)+T43*params(15)*(I_ss__-y(18))/(I_ss__*I_ss__)));
  g1(27,33)=(-1);
  g1(28,3)=(-(Omega__*(-T531)));
  g1(28,11)=(-(Omega__*1/y(15)));
  g1(28,13)=(-(Omega__*(-T513)));
  g1(28,15)=(-(Omega__*(y(15)*params(12)-(y(11)+y(15)*params(12)))/(y(15)*y(15))));
  g1(28,25)=(-(T261*y(42)*params(3)));
  g1(28,28)=1;
  g1(28,42)=(-((1-params(3)+params(3)*y(25))*T261));
  g1(29,3)=(-(Omega__*(T531-(-y(41))/(y(3)*y(3)))));
  g1(29,13)=(-(Omega__*T513));
  g1(29,25)=(-((T260-y(41)/y(3))*y(42)*params(3)));
  g1(29,41)=(-(Omega__*(-T513)));
  g1(29,42)=(-((1-params(3)+params(3)*y(25))*(T260-y(41)/y(3))));
  g1(29,47)=1;
  g1(30,3)=(-(Omega__*T531));
  g1(30,13)=(-(Omega__*T513));
  g1(30,25)=(-((T260-y(31))*y(42)*params(3)));
  g1(30,29)=1;
  g1(30,31)=Omega__;
  g1(30,42)=(-((1-params(3)+params(3)*y(25))*(T260-y(31))));
  g1(31,3)=(-((-(y(13)*Omega__))/(y(3)*y(3))));
  g1(31,13)=(-(Omega__/y(3)));
  g1(31,25)=(-(y(13)*y(42)*params(3)/y(3)));
  g1(31,27)=1;
  g1(31,42)=(-((1-params(3)+params(3)*y(25))*y(13)/y(3)));
  g1(32,24)=(-((-(y(27)*(y(27)*T58*2*y(24)-y(29))))/T836));
  g1(32,26)=1;
  g1(32,27)=(-((y(34)+y(27)*T278-(y(28)+y(24)*y(29)+y(47)*y(48))-y(27)*T278)/T836));
  g1(32,28)=(-(y(27)/T836));
  g1(32,29)=(-((-(y(27)*(-y(24))))/T836));
  g1(32,34)=(-((-y(27))/T836));
  g1(32,47)=(-((-(y(27)*(-y(48))))/T836));
  g1(32,48)=(-((-(y(27)*(-y(47))))/T836));
  g1(33,25)=1;
  g1(33,26)=(-y(34));
  g1(33,34)=(-y(26));
  g1(34,24)=1;
  g1(34,27)=(-((-(params(5)*y(29)))/(params(5)*y(27)*params(5)*y(27))+((-(params(5)*y(29)))/(params(5)*y(27)*params(5)*y(27))*2*y(29)/(params(5)*y(27))+y(48)*(-(params(5)*2*y(47)))/(params(5)*y(27)*params(5)*y(27))+(-(params(5)*2*y(28)))/(params(5)*y(27)*params(5)*y(27)))/(T306+T306)));
  g1(34,28)=(-(2/(params(5)*y(27))/(T306+T306)));
  g1(34,29)=(-(1/(params(5)*y(27))+2*y(29)/(params(5)*y(27))*1/(params(5)*y(27))/(T306+T306)));
  g1(34,47)=(-(y(48)*2/(params(5)*y(27))/(T306+T306)));
  g1(34,48)=(-(2*y(47)/(params(5)*y(27))/(T306+T306)));
  g1(35,1)=1-T314;
  g1(35,2)=(-1);
  g1(35,3)=(-(y(1)*params(17)/2*2*(y(3)-1)));
  g1(35,18)=(-(1+y(33)));
  g1(35,20)=(-1);
  g1(35,33)=(-y(18));
  g1(35,35)=(-1);
  g1(35,36)=(-1);
  g1(36,8)=1-y(31);
  g1(36,14)=(-y(20))/(y(14)*y(14));
  g1(36,16)=(-1);
  g1(36,20)=1/y(14);
  g1(36,31)=(-y(8));
  g1(37,3)=(-(params(3)*((-((-(y(13)*y(23)))/(y(3)*y(3))))-(-(y(41)*y(6)))/(y(3)*y(3)))));
  g1(37,4)=1;
  g1(37,6)=(-(params(3)*(-(y(41)/y(3)))));
  g1(37,8)=(-(params(3)*(-(y(31)*y(14)))));
  g1(37,11)=(-(params(3)*y(21)+y(19)*params(4)));
  g1(37,13)=(-(params(3)*(-(y(23)/y(3)))));
  g1(37,14)=(-(params(3)*(-(y(31)*y(8)))));
  g1(37,15)=(-(params(3)*y(21)*params(12)+y(19)*params(12)*params(4)));
  g1(37,19)=(-((y(11)+y(15)*params(12))*params(4)));
  g1(37,21)=(-(params(3)*(y(11)+y(15)*params(12))));
  g1(37,23)=(-(params(3)*(-T260)));
  g1(37,31)=(-(params(3)*(-(y(14)*y(8)))));
  g1(37,41)=(-(params(3)*(-(y(6)/y(3)))));
  g1(38,4)=(-(y(26)*(1+T278)));
  g1(38,15)=y(21)*(1+T278);
  g1(38,21)=y(15)*(1+T278);
  g1(38,24)=y(15)*y(21)*T58*2*y(24)-y(4)*y(26)*T58*2*y(24);
  g1(38,26)=(-(y(4)*(1+T278)));
  g1(39,4)=(-1);
  g1(39,6)=(-1);
  g1(39,8)=(-y(14));
  g1(39,14)=(-y(8));
  g1(39,15)=y(21)*(1+T278);
  g1(39,21)=y(15)*(1+T278);
  g1(39,23)=(-1);
  g1(39,24)=y(15)*y(21)*T58*2*y(24);
  g1(40,8)=(-(y(14)/(y(15)*y(21))));
  g1(40,14)=(-(y(8)/(y(15)*y(21))));
  g1(40,15)=(-((-(y(21)*y(14)*y(8)))/(y(15)*y(21)*y(15)*y(21))));
  g1(40,21)=(-((-(y(15)*y(14)*y(8)))/(y(15)*y(21)*y(15)*y(21))));
  g1(40,24)=1;
  g1(41,6)=(-(1/(y(15)*y(21))));
  g1(41,15)=(-((-(y(21)*y(6)))/(y(15)*y(21)*y(15)*y(21))));
  g1(41,21)=(-((-(y(15)*y(6)))/(y(15)*y(21)*y(15)*y(21))));
  g1(41,48)=1;
  g1(42,19)=1;
  g1(42,21)=(-1);
  g1(42,22)=(-1);
  g1(43,3)=(-T513);
  g1(43,49)=1/y(49);
  g1(44,1)=(-((1-params(19))*0.*T484));
  g1(44,3)=(-((1-params(19))*params(20)*T513));
  g1(44,13)=T672-params(19)*T672;
  g1(44,49)=(-((1-params(19))*params(49)*1/y(49)));
  g1(45,30)=T72-T72*params(21);
  g1(46,32)=1-(params(23)+1-params(23));
  g1(47,31)=1-(params(22)+1-params(22));
  g1(48,1)=(-(1-T314));
  g1(48,3)=y(1)*params(17)/2*2*(y(3)-1);
  g1(48,14)=y(16);
  g1(48,16)=y(14);
  g1(48,35)=1;
  g1(48,36)=1;
  g1(48,37)=1;
  g1(49,1)=(-(1/y(1)));
  g1(49,51)=1;
  g1(50,3)=(-T513);
  g1(50,52)=1;
  g1(51,13)=(-(1/y(13)));
  g1(51,53)=1;
  g1(52,18)=(-(1/y(18)));
  g1(52,54)=1;
  g1(53,17)=(-(1/y(17)));
  g1(53,55)=1;
  g1(54,2)=(-(1/y(2)));
  g1(54,56)=1;
  g1(55,20)=(-(1/y(20)));
  g1(55,57)=1;
  g1(56,16)=(-(1/y(16)));
  g1(56,58)=1;
  g1(57,23)=(-(1/y(23)));
  g1(57,59)=1;
  g1(58,8)=(-(1/y(8)));
  g1(58,60)=1;
  g1(59,4)=(-(1/y(4)));
  g1(59,61)=1;
  g1(60,3)=T531;
  g1(60,11)=(-(1/y(15)));
  g1(60,13)=T513;
  g1(60,15)=(-((y(15)*params(12)-(y(11)+y(15)*params(12)))/(y(15)*y(15))));
  g1(60,62)=1;
  g1(61,5)=(-(1/y(5)));
  g1(61,63)=1;
  g1(62,7)=(-(1/y(7)));
  g1(62,64)=1;
  g1(63,26)=(-(1/y(26)));
  g1(63,65)=1;
  g1(64,16)=1;
  g1(64,20)=(-1);
  g1(64,66)=1;
  g1(65,6)=(-(1/y(6)));
  g1(65,67)=1;
  g1(66,2)=(-(1/T465));
  g1(66,6)=T603;
  g1(66,17)=T756;
  g1(66,44)=params(41)*(-(2*(params(40)-y(44))));
  g1(66,50)=1;
  g1(67,2)=(-(1/T465));
  g1(67,6)=T603;
  g1(67,9)=1-params(6);
  g1(67,17)=T756;
  g1(67,44)=params(41)*(-(2*(params(40)-y(44))));
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],67,4489);
end
end
