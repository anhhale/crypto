function [residual, g1, g2] = policy_sb_sepa_static(y, x, params)
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
%                                                     columns: variables in declaration order
%                                                     rows: equations in order of declaration
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 57, 1);

%
% Model equations
%

T22 = y(1)*params(1)/y(1);
T44 = y(44)*y(4)/y(4)-1;
T47 = 1-params(6)/2*T44^2;
T50 = T47-y(44)*y(4)/y(4)*params(6)*T44;
T79 = y(3)^(params(3)*(1-params(8)));
T144 = params(16)*(y(12)/y(31)-y(38))^2;
T167 = 1-normcdf(y(14),0,1);
T197 = y(18)-y(8)*y(16)+params(16)*(2*y(12)/y(31)-y(38));
T212 = 1-normcdf(y(24),0,1);
T267 = y(9)/y(39)/(params(18)/params(17));
T296 = params(4)*y(3)^(1+params(5))/(1+params(5));
T371 = params(4)*getPowerDeriv(y(3),1+params(5),1)/(1+params(5));
T488 = (-(exp((-(y(14)*y(14)))/2)/2.506628274631));
T493 = exp((-((y(14)-y(40))*(y(14)-y(40))))/2)/2.506628274631;
T494 = (-T493);
T567 = (-(exp((-(y(24)*y(24)))/2)/2.506628274631));
T572 = exp((-((y(24)-y(40))*(y(24)-y(40))))/2)/2.506628274631;
T573 = (-T572);
T656 = 1/params(13)/(y(38)/params(13));
lhs =y(1);
rhs =1/y(2);
residual(1)= lhs-rhs;
lhs =y(1)*y(33);
rhs =params(4)*y(3)^params(5);
residual(2)= lhs-rhs;
lhs =1;
rhs =T22*y(18)+params(9)/y(1)/y(30);
residual(3)= lhs-rhs;
lhs =1;
rhs =T22*y(28);
residual(4)= lhs-rhs;
lhs =1;
rhs =T22*y(34);
residual(5)= lhs-rhs;
lhs =1;
rhs =y(35)*T50+y(44)*T44*params(6)*T22*y(35);
residual(6)= lhs-rhs;
lhs =y(35);
rhs =T22*(y(35)*(1-params(2))+y(36));
residual(7)= lhs-rhs;
lhs =y(6);
rhs =(1-params(2))*y(6)+y(4)*T47;
residual(8)= lhs-rhs;
lhs =y(5);
rhs =y(37)*y(6)^(1-params(3))*T79;
residual(9)= lhs-rhs;
lhs =y(33)*y(3);
rhs =params(3)*(1-params(8))*(y(7)+y(9));
residual(10)= lhs-rhs;
lhs =y(36)*y(6);
rhs =(1-params(3))*(y(7)+y(9));
residual(11)= lhs-rhs;
lhs =y(9);
rhs =y(12)+y(22);
residual(12)= lhs-rhs;
lhs =y(8);
rhs =y(5)/(y(7)+y(9));
residual(13)= lhs-rhs;
lhs =y(7);
rhs =y(10)+y(20);
residual(14)= lhs-rhs;
lhs =y(10);
rhs =y(8)*params(7)*y(11)*(y(12)+y(10))/y(43)+(y(12)+y(10))*params(3)*params(8)*params(35);
residual(15)= lhs-rhs;
lhs =y(20);
rhs =y(8)*params(7)*y(21)*(y(22)+y(20))/y(43)+(y(22)+y(20))*params(3)*params(8)*params(36);
residual(16)= lhs-rhs;
lhs =y(32);
rhs =y(18)+params(16)*(y(12)/y(31)-y(38));
residual(17)= lhs-rhs;
lhs =y(30)+y(31);
rhs =y(12);
residual(18)= lhs-rhs;
lhs =y(31);
rhs =params(11)*(y(12)*y(32)-y(18)*y(30)-y(31)*T144)+y(12)*params(12);
residual(19)= lhs-rhs;
lhs =y(14);
rhs =log(y(17))/y(40)+y(40)*0.5;
residual(20)= lhs-rhs;
lhs =y(13);
rhs =normcdf(y(14),0,1);
residual(21)= lhs-rhs;
lhs =y(11);
rhs =1-normcdf(y(14)-y(40),0,1)-y(17)*T167;
residual(22)= lhs-rhs;
lhs =y(16);
rhs =y(17)*T167+normcdf(y(14)-y(40),0,1)*(1-params(14));
residual(23)= lhs-rhs;
lhs =y(15);
rhs =(-T167);
residual(24)= lhs-rhs;
lhs =y(19);
rhs =T167-params(14)*normpdf(y(14),0,1)/y(40);
residual(25)= lhs-rhs;
lhs =(y(12)+y(10))*y(8)*y(16);
rhs =y(12)*y(32);
residual(26)= lhs-rhs;
lhs =(-y(15))/y(19);
rhs =y(8)*y(11)/T197;
residual(27)= lhs-rhs;
lhs =y(24);
rhs =y(40)*0.5+log(y(27))/y(40);
residual(28)= lhs-rhs;
lhs =y(23);
rhs =normcdf(y(24),0,1);
residual(29)= lhs-rhs;
lhs =y(21);
rhs =1-normcdf(y(24)-y(40),0,1)-y(27)*T212;
residual(30)= lhs-rhs;
lhs =y(26);
rhs =y(27)*T212+normcdf(y(24)-y(40),0,1)*(1-params(15));
residual(31)= lhs-rhs;
lhs =y(25);
rhs =(-T212);
residual(32)= lhs-rhs;
lhs =y(29);
rhs =T212-params(15)*normpdf(y(24),0,1)/y(40);
residual(33)= lhs-rhs;
lhs =(y(22)+y(20))*y(8)*y(26);
rhs =y(28)*y(22);
residual(34)= lhs-rhs;
lhs =(-y(25))/y(29);
rhs =y(8)*y(21)/(y(28)-y(8)*y(26));
residual(35)= lhs-rhs;
lhs =y(5);
rhs =y(2)+y(4);
residual(36)= lhs-rhs;
lhs =log(y(37));
rhs =log(y(37))*params(20)+x(1);
residual(37)= lhs-rhs;
lhs =log(y(44));
rhs =log(y(44))*params(23)+x(4);
residual(38)= lhs-rhs;
lhs =log(y(38)/params(13));
rhs =log(y(38)/params(13))*params(28)+(1-params(28))*params(30)*log(T267);
residual(39)= lhs-rhs;
lhs =y(39);
rhs =y(2)+y(4);
residual(40)= lhs-rhs;
lhs =log(y(40));
rhs =log(y(40))*params(21)+(1-params(21))*log(params(10))+x(2);
residual(41)= lhs-rhs;
lhs =log(y(43));
rhs =log(y(43))*params(22)+x(3);
residual(42)= lhs-rhs;
lhs =y(57);
rhs =log(y(2))-T296+params(1)*y(57);
residual(43)= lhs-rhs;
lhs =y(42);
rhs =y(41)+params(1)*y(42);
residual(44)= lhs-rhs;
lhs =y(41);
rhs =log(y(2))+params(9)*log(y(30))-T296;
residual(45)= lhs-rhs;
lhs =y(45);
rhs =y(22)/(y(12)+y(22));
residual(46)= lhs-rhs;
lhs =y(46);
rhs =(y(12)+y(22))/(y(10)+y(20));
residual(47)= lhs-rhs;
lhs =y(47);
rhs =y(22)/y(20);
residual(48)= lhs-rhs;
lhs =y(48);
rhs =y(12)/y(10);
residual(49)= lhs-rhs;
lhs =y(49);
rhs =1/y(38);
residual(50)= lhs-rhs;
lhs =y(50);
rhs =log(y(9));
residual(51)= lhs-rhs;
lhs =y(51);
rhs =y(8)*y(27)*(1+y(20)/y(22));
residual(52)= lhs-rhs;
lhs =y(52);
rhs =y(8)*y(17)*(1+y(10)/y(12));
residual(53)= lhs-rhs;
lhs =y(53);
rhs =log(y(39));
residual(54)= lhs-rhs;
lhs =y(54);
rhs =(y(12)*y(13)+y(22)*y(23))/(y(12)+y(22));
residual(55)= lhs-rhs;
lhs =y(55);
rhs =y(9)/y(39);
residual(56)= lhs-rhs;
residual(57) = y(56);
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(57, 57);

  %
  % Jacobian matrix
  %

  g1(1,1)=1;
  g1(1,2)=(-((-1)/(y(2)*y(2))));
  g1(2,1)=y(33);
  g1(2,3)=(-(params(4)*getPowerDeriv(y(3),params(5),1)));
  g1(2,33)=y(1);
  g1(3,1)=(-((-params(9))/(y(1)*y(1))/y(30)));
  g1(3,18)=(-T22);
  g1(3,30)=(-((-(params(9)/y(1)))/(y(30)*y(30))));
  g1(4,28)=(-T22);
  g1(5,34)=(-T22);
  g1(6,35)=(-(T50+y(44)*T44*T22*params(6)));
  g1(6,44)=(-(y(35)*((-(params(6)/2*2*T44))-(params(6)*T44+params(6)*y(44)*y(4)/y(4)))+T44*params(6)*T22*y(35)+y(44)*params(6)*T22*y(35)));
  g1(7,35)=1-T22*(1-params(2));
  g1(7,36)=(-T22);
  g1(8,4)=(-T47);
  g1(8,6)=1-(1-params(2));
  g1(8,44)=(-(y(4)*(-(params(6)/2*2*T44))));
  g1(9,3)=(-(y(37)*y(6)^(1-params(3))*getPowerDeriv(y(3),params(3)*(1-params(8)),1)));
  g1(9,5)=1;
  g1(9,6)=(-(T79*y(37)*getPowerDeriv(y(6),1-params(3),1)));
  g1(9,37)=(-(y(6)^(1-params(3))*T79));
  g1(10,3)=y(33);
  g1(10,7)=(-(params(3)*(1-params(8))));
  g1(10,9)=(-(params(3)*(1-params(8))));
  g1(10,33)=y(3);
  g1(11,6)=y(36);
  g1(11,7)=(-(1-params(3)));
  g1(11,9)=(-(1-params(3)));
  g1(11,36)=y(6);
  g1(12,9)=1;
  g1(12,12)=(-1);
  g1(12,22)=(-1);
  g1(13,5)=(-(1/(y(7)+y(9))));
  g1(13,7)=(-((-y(5))/((y(7)+y(9))*(y(7)+y(9)))));
  g1(13,8)=1;
  g1(13,9)=(-((-y(5))/((y(7)+y(9))*(y(7)+y(9)))));
  g1(14,7)=1;
  g1(14,10)=(-1);
  g1(14,20)=(-1);
  g1(15,8)=(-(params(7)*y(11)*(y(12)+y(10))/y(43)));
  g1(15,10)=1-(params(3)*params(8)*params(35)+y(8)*params(7)*y(11)/y(43));
  g1(15,11)=(-(y(8)*params(7)*(y(12)+y(10))/y(43)));
  g1(15,12)=(-(params(3)*params(8)*params(35)+y(8)*params(7)*y(11)/y(43)));
  g1(15,43)=(-((-(y(8)*params(7)*y(11)*(y(12)+y(10))))/(y(43)*y(43))));
  g1(16,8)=(-(params(7)*y(21)*(y(22)+y(20))/y(43)));
  g1(16,20)=1-(params(3)*params(8)*params(36)+y(8)*params(7)*y(21)/y(43));
  g1(16,21)=(-(y(8)*params(7)*(y(22)+y(20))/y(43)));
  g1(16,22)=(-(params(3)*params(8)*params(36)+y(8)*params(7)*y(21)/y(43)));
  g1(16,43)=(-((-(y(8)*params(7)*y(21)*(y(22)+y(20))))/(y(43)*y(43))));
  g1(17,12)=(-(params(16)*1/y(31)));
  g1(17,18)=(-1);
  g1(17,31)=(-(params(16)*(-y(12))/(y(31)*y(31))));
  g1(17,32)=1;
  g1(17,38)=params(16);
  g1(18,12)=(-1);
  g1(18,30)=1;
  g1(18,31)=1;
  g1(19,12)=(-(params(12)+params(11)*(y(32)-y(31)*params(16)*1/y(31)*2*(y(12)/y(31)-y(38)))));
  g1(19,18)=(-(params(11)*(-y(30))));
  g1(19,30)=(-(params(11)*(-y(18))));
  g1(19,31)=1-params(11)*(-(T144+y(31)*params(16)*2*(y(12)/y(31)-y(38))*(-y(12))/(y(31)*y(31))));
  g1(19,32)=(-(y(12)*params(11)));
  g1(19,38)=(-(params(11)*(-(y(31)*params(16)*(-(2*(y(12)/y(31)-y(38))))))));
  g1(20,14)=1;
  g1(20,17)=(-(1/y(17)/y(40)));
  g1(20,40)=(-(0.5+(-log(y(17)))/(y(40)*y(40))));
  g1(21,13)=1;
  g1(21,14)=T488;
  g1(22,11)=1;
  g1(22,14)=(-(T494-y(17)*T488));
  g1(22,17)=T167;
  g1(22,40)=T494;
  g1(23,14)=(-(y(17)*T488+(1-params(14))*T493));
  g1(23,16)=1;
  g1(23,17)=(-T167);
  g1(23,40)=(-((1-params(14))*T494));
  g1(24,14)=T488;
  g1(24,15)=1;
  g1(25,14)=(-(T488-params(14)*normpdf(y(14),0,1)*(-y(14))/y(40)));
  g1(25,19)=1;
  g1(25,40)=(-(params(14)*normpdf(y(14),0,1)))/(y(40)*y(40));
  g1(26,8)=(y(12)+y(10))*y(16);
  g1(26,10)=y(8)*y(16);
  g1(26,12)=y(8)*y(16)-y(32);
  g1(26,16)=y(8)*(y(12)+y(10));
  g1(26,32)=(-y(12));
  g1(27,8)=(-((y(11)*T197-y(8)*y(11)*(-y(16)))/(T197*T197)));
  g1(27,11)=(-(y(8)/T197));
  g1(27,12)=(-((-(y(8)*y(11)*params(16)*2/y(31)))/(T197*T197)));
  g1(27,15)=(-1)/y(19);
  g1(27,16)=(-((-(y(8)*y(11)*(-y(8))))/(T197*T197)));
  g1(27,18)=(-((-(y(8)*y(11)))/(T197*T197)));
  g1(27,19)=y(15)/(y(19)*y(19));
  g1(27,31)=(-((-(y(8)*y(11)*params(16)*(-(2*y(12)))/(y(31)*y(31))))/(T197*T197)));
  g1(27,38)=(-((-(y(8)*y(11)*(-params(16))))/(T197*T197)));
  g1(28,24)=1;
  g1(28,27)=(-(1/y(27)/y(40)));
  g1(28,40)=(-(0.5+(-log(y(27)))/(y(40)*y(40))));
  g1(29,23)=1;
  g1(29,24)=T567;
  g1(30,21)=1;
  g1(30,24)=(-(T573-y(27)*T567));
  g1(30,27)=T212;
  g1(30,40)=T573;
  g1(31,24)=(-(y(27)*T567+(1-params(15))*T572));
  g1(31,26)=1;
  g1(31,27)=(-T212);
  g1(31,40)=(-((1-params(15))*T573));
  g1(32,24)=T567;
  g1(32,25)=1;
  g1(33,24)=(-(T567-params(15)*normpdf(y(24),0,1)*(-y(24))/y(40)));
  g1(33,29)=1;
  g1(33,40)=(-(params(15)*normpdf(y(24),0,1)))/(y(40)*y(40));
  g1(34,8)=(y(22)+y(20))*y(26);
  g1(34,20)=y(8)*y(26);
  g1(34,22)=y(8)*y(26)-y(28);
  g1(34,26)=y(8)*(y(22)+y(20));
  g1(34,28)=(-y(22));
  g1(35,8)=(-((y(21)*(y(28)-y(8)*y(26))-y(8)*y(21)*(-y(26)))/((y(28)-y(8)*y(26))*(y(28)-y(8)*y(26)))));
  g1(35,21)=(-(y(8)/(y(28)-y(8)*y(26))));
  g1(35,25)=(-1)/y(29);
  g1(35,26)=(-((-(y(8)*y(21)*(-y(8))))/((y(28)-y(8)*y(26))*(y(28)-y(8)*y(26)))));
  g1(35,28)=(-((-(y(8)*y(21)))/((y(28)-y(8)*y(26))*(y(28)-y(8)*y(26)))));
  g1(35,29)=y(25)/(y(29)*y(29));
  g1(36,2)=(-1);
  g1(36,4)=(-1);
  g1(36,5)=1;
  g1(37,37)=1/y(37)-params(20)*1/y(37);
  g1(38,44)=1/y(44)-params(23)*1/y(44);
  g1(39,9)=(-((1-params(28))*params(30)*1/y(39)/(params(18)/params(17))/T267));
  g1(39,38)=T656-params(28)*T656;
  g1(39,39)=(-((1-params(28))*params(30)*(-y(9))/(y(39)*y(39))/(params(18)/params(17))/T267));
  g1(40,2)=(-1);
  g1(40,4)=(-1);
  g1(40,39)=1;
  g1(41,40)=1/y(40)-params(21)*1/y(40);
  g1(42,43)=1/y(43)-params(22)*1/y(43);
  g1(43,2)=(-(1/y(2)));
  g1(43,3)=T371;
  g1(43,57)=1-params(1);
  g1(44,41)=(-1);
  g1(44,42)=1-params(1);
  g1(45,2)=(-(1/y(2)));
  g1(45,3)=T371;
  g1(45,30)=(-(params(9)*1/y(30)));
  g1(45,41)=1;
  g1(46,12)=(-((-y(22))/((y(12)+y(22))*(y(12)+y(22)))));
  g1(46,22)=(-((y(12)+y(22)-y(22))/((y(12)+y(22))*(y(12)+y(22)))));
  g1(46,45)=1;
  g1(47,10)=(-((-(y(12)+y(22)))/((y(10)+y(20))*(y(10)+y(20)))));
  g1(47,12)=(-(1/(y(10)+y(20))));
  g1(47,20)=(-((-(y(12)+y(22)))/((y(10)+y(20))*(y(10)+y(20)))));
  g1(47,22)=(-(1/(y(10)+y(20))));
  g1(47,46)=1;
  g1(48,20)=(-((-y(22))/(y(20)*y(20))));
  g1(48,22)=(-(1/y(20)));
  g1(48,47)=1;
  g1(49,10)=(-((-y(12))/(y(10)*y(10))));
  g1(49,12)=(-(1/y(10)));
  g1(49,48)=1;
  g1(50,38)=(-((-1)/(y(38)*y(38))));
  g1(50,49)=1;
  g1(51,9)=(-(1/y(9)));
  g1(51,50)=1;
  g1(52,8)=(-(y(27)*(1+y(20)/y(22))));
  g1(52,20)=(-(y(8)*y(27)*1/y(22)));
  g1(52,22)=(-(y(8)*y(27)*(-y(20))/(y(22)*y(22))));
  g1(52,27)=(-(y(8)*(1+y(20)/y(22))));
  g1(52,51)=1;
  g1(53,8)=(-(y(17)*(1+y(10)/y(12))));
  g1(53,10)=(-(y(8)*y(17)*1/y(12)));
  g1(53,12)=(-(y(8)*y(17)*(-y(10))/(y(12)*y(12))));
  g1(53,17)=(-(y(8)*(1+y(10)/y(12))));
  g1(53,52)=1;
  g1(54,39)=(-(1/y(39)));
  g1(54,53)=1;
  g1(55,12)=(-(((y(12)+y(22))*y(13)-(y(12)*y(13)+y(22)*y(23)))/((y(12)+y(22))*(y(12)+y(22)))));
  g1(55,13)=(-(y(12)/(y(12)+y(22))));
  g1(55,22)=(-(((y(12)+y(22))*y(23)-(y(12)*y(13)+y(22)*y(23)))/((y(12)+y(22))*(y(12)+y(22)))));
  g1(55,23)=(-(y(22)/(y(12)+y(22))));
  g1(55,54)=1;
  g1(56,9)=(-(1/y(39)));
  g1(56,39)=(-((-y(9))/(y(39)*y(39))));
  g1(56,55)=1;
  g1(57,56)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],57,3249);
end
end
