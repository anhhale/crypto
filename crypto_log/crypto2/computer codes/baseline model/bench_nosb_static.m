function [residual, g1, g2] = bench_nosb_static(y, x, params)
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

residual = zeros( 41, 1);

%
% Model equations
%

T22 = y(1)*params(1)/y(1);
T41 = y(34)*y(4)/y(4)-1;
T44 = 1-params(6)/2*T41^2;
T47 = T44-y(34)*y(4)/y(4)*params(6)*T41;
T76 = y(3)^(params(3)*(1-params(8)));
T123 = params(16)*(y(12)/y(21)-y(28))^2;
T146 = 1-normcdf(y(14),0,1);
T176 = y(18)-y(8)*y(16)+params(16)*(2*y(12)/y(21)-y(28));
T355 = (-(exp((-(y(14)*y(14)))/2)/2.506628274631));
T360 = exp((-((y(14)-y(30))*(y(14)-y(30))))/2)/2.506628274631;
T361 = (-T360);
T449 = 1/params(13)/(y(28)/params(13));
lhs =y(1);
rhs =y(2)^(-1);
residual(1)= lhs-rhs;
lhs =y(1)*y(23);
rhs =params(4)*y(3)^params(5);
residual(2)= lhs-rhs;
lhs =1;
rhs =T22*y(18)+params(9)/y(1)/y(20);
residual(3)= lhs-rhs;
lhs =1;
rhs =T22*y(24);
residual(4)= lhs-rhs;
lhs =1;
rhs =y(25)*T47+y(34)*T41*params(6)*T22*y(25);
residual(5)= lhs-rhs;
lhs =y(25);
rhs =T22*(y(25)*(1-params(2))+y(26));
residual(6)= lhs-rhs;
lhs =y(6);
rhs =(1-params(2))*y(6)+y(4)*T44;
residual(7)= lhs-rhs;
lhs =y(5);
rhs =y(27)*y(6)^(1-params(3))*T76;
residual(8)= lhs-rhs;
lhs =y(23)*y(3);
rhs =params(3)*(1-params(8))*(y(7)+y(9));
residual(9)= lhs-rhs;
lhs =y(26)*y(6);
rhs =(1-params(3))*(y(7)+y(9));
residual(10)= lhs-rhs;
lhs =y(7);
rhs =y(10);
residual(11)= lhs-rhs;
lhs =y(9);
rhs =y(12);
residual(12)= lhs-rhs;
lhs =y(8);
rhs =y(5)/(y(7)+y(9));
residual(13)= lhs-rhs;
lhs =y(7);
rhs =y(8)*params(7)*y(11)*(y(10)+y(12))/y(33)+(y(7)+y(9))*params(3)*params(8);
residual(14)= lhs-rhs;
lhs =y(22);
rhs =y(18)+params(16)*(y(12)/y(21)-y(28));
residual(15)= lhs-rhs;
lhs =y(20)+y(21);
rhs =y(12);
residual(16)= lhs-rhs;
lhs =y(21);
rhs =params(11)*(y(12)*y(22)-y(18)*y(20)-y(21)*T123)+y(12)*params(12);
residual(17)= lhs-rhs;
lhs =y(14);
rhs =log(y(17))/y(30)+y(30)*0.5;
residual(18)= lhs-rhs;
lhs =y(13);
rhs =normcdf(y(14),0,1);
residual(19)= lhs-rhs;
lhs =y(11);
rhs =1-normcdf(y(14)-y(30),0,1)-y(17)*T146;
residual(20)= lhs-rhs;
lhs =y(16);
rhs =y(17)*T146+normcdf(y(14)-y(30),0,1)*(1-params(14));
residual(21)= lhs-rhs;
lhs =y(15);
rhs =(-T146);
residual(22)= lhs-rhs;
lhs =y(19);
rhs =T146-params(14)*normpdf(y(14),0,1)/y(30);
residual(23)= lhs-rhs;
lhs =(y(10)+y(12))*y(8)*y(16);
rhs =y(12)*y(22);
residual(24)= lhs-rhs;
lhs =(-y(15))/y(19);
rhs =y(8)*y(11)/T176;
residual(25)= lhs-rhs;
lhs =y(5);
rhs =y(2)+y(4);
residual(26)= lhs-rhs;
lhs =log(y(27));
rhs =log(y(27))*params(18)-x(1);
residual(27)= lhs-rhs;
lhs =log(y(34));
rhs =log(y(34))*params(21)+x(4);
residual(28)= lhs-rhs;
lhs =log(y(28)/params(13));
rhs =log(y(28)/params(13))*params(26)-x(5);
residual(29)= lhs-rhs;
lhs =y(29);
rhs =y(2)+y(4);
residual(30)= lhs-rhs;
lhs =log(y(30));
rhs =log(y(30))*params(19)+(1-params(19))*log(params(10))+x(2);
residual(31)= lhs-rhs;
lhs =log(y(33));
rhs =log(y(33))*params(20)+x(3);
residual(32)= lhs-rhs;
lhs =y(32);
rhs =y(31)+params(1)*y(32);
residual(33)= lhs-rhs;
lhs =y(31);
rhs =log(y(2))+params(9)*log(y(20))-params(4)*y(3)^(1+params(5))/(1+params(5));
residual(34)= lhs-rhs;
lhs =y(35);
rhs =y(12)/y(10);
residual(35)= lhs-rhs;
lhs =y(36);
rhs =y(35);
residual(36)= lhs-rhs;
lhs =y(37);
rhs =1/y(28);
residual(37)= lhs-rhs;
lhs =y(38);
rhs =log(y(9));
residual(38)= lhs-rhs;
lhs =y(39);
rhs =y(8)*y(17)*(1+y(10)/y(12));
residual(39)= lhs-rhs;
lhs =y(40);
rhs =log(y(29));
residual(40)= lhs-rhs;
lhs =y(41);
rhs =y(13);
residual(41)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(41, 41);

  %
  % Jacobian matrix
  %

  g1(1,1)=1;
  g1(1,2)=(-(getPowerDeriv(y(2),(-1),1)));
  g1(2,1)=y(23);
  g1(2,3)=(-(params(4)*getPowerDeriv(y(3),params(5),1)));
  g1(2,23)=y(1);
  g1(3,1)=(-((-params(9))/(y(1)*y(1))/y(20)));
  g1(3,18)=(-T22);
  g1(3,20)=(-((-(params(9)/y(1)))/(y(20)*y(20))));
  g1(4,24)=(-T22);
  g1(5,25)=(-(T47+y(34)*T41*T22*params(6)));
  g1(5,34)=(-(y(25)*((-(params(6)/2*2*T41))-(params(6)*T41+params(6)*y(34)*y(4)/y(4)))+T41*params(6)*T22*y(25)+y(34)*params(6)*T22*y(25)));
  g1(6,25)=1-T22*(1-params(2));
  g1(6,26)=(-T22);
  g1(7,4)=(-T44);
  g1(7,6)=1-(1-params(2));
  g1(7,34)=(-(y(4)*(-(params(6)/2*2*T41))));
  g1(8,3)=(-(y(27)*y(6)^(1-params(3))*getPowerDeriv(y(3),params(3)*(1-params(8)),1)));
  g1(8,5)=1;
  g1(8,6)=(-(T76*y(27)*getPowerDeriv(y(6),1-params(3),1)));
  g1(8,27)=(-(y(6)^(1-params(3))*T76));
  g1(9,3)=y(23);
  g1(9,7)=(-(params(3)*(1-params(8))));
  g1(9,9)=(-(params(3)*(1-params(8))));
  g1(9,23)=y(3);
  g1(10,6)=y(26);
  g1(10,7)=(-(1-params(3)));
  g1(10,9)=(-(1-params(3)));
  g1(10,26)=y(6);
  g1(11,7)=1;
  g1(11,10)=(-1);
  g1(12,9)=1;
  g1(12,12)=(-1);
  g1(13,5)=(-(1/(y(7)+y(9))));
  g1(13,7)=(-((-y(5))/((y(7)+y(9))*(y(7)+y(9)))));
  g1(13,8)=1;
  g1(13,9)=(-((-y(5))/((y(7)+y(9))*(y(7)+y(9)))));
  g1(14,7)=1-params(3)*params(8);
  g1(14,8)=(-(params(7)*y(11)*(y(10)+y(12))/y(33)));
  g1(14,9)=(-(params(3)*params(8)));
  g1(14,10)=(-(y(8)*params(7)*y(11)/y(33)));
  g1(14,11)=(-(y(8)*params(7)*(y(10)+y(12))/y(33)));
  g1(14,12)=(-(y(8)*params(7)*y(11)/y(33)));
  g1(14,33)=(-((-(y(8)*params(7)*y(11)*(y(10)+y(12))))/(y(33)*y(33))));
  g1(15,12)=(-(params(16)*1/y(21)));
  g1(15,18)=(-1);
  g1(15,21)=(-(params(16)*(-y(12))/(y(21)*y(21))));
  g1(15,22)=1;
  g1(15,28)=params(16);
  g1(16,12)=(-1);
  g1(16,20)=1;
  g1(16,21)=1;
  g1(17,12)=(-(params(12)+params(11)*(y(22)-y(21)*params(16)*1/y(21)*2*(y(12)/y(21)-y(28)))));
  g1(17,18)=(-(params(11)*(-y(20))));
  g1(17,20)=(-(params(11)*(-y(18))));
  g1(17,21)=1-params(11)*(-(T123+y(21)*params(16)*2*(y(12)/y(21)-y(28))*(-y(12))/(y(21)*y(21))));
  g1(17,22)=(-(y(12)*params(11)));
  g1(17,28)=(-(params(11)*(-(y(21)*params(16)*(-(2*(y(12)/y(21)-y(28))))))));
  g1(18,14)=1;
  g1(18,17)=(-(1/y(17)/y(30)));
  g1(18,30)=(-(0.5+(-log(y(17)))/(y(30)*y(30))));
  g1(19,13)=1;
  g1(19,14)=T355;
  g1(20,11)=1;
  g1(20,14)=(-(T361-y(17)*T355));
  g1(20,17)=T146;
  g1(20,30)=T361;
  g1(21,14)=(-(y(17)*T355+(1-params(14))*T360));
  g1(21,16)=1;
  g1(21,17)=(-T146);
  g1(21,30)=(-((1-params(14))*T361));
  g1(22,14)=T355;
  g1(22,15)=1;
  g1(23,14)=(-(T355-params(14)*normpdf(y(14),0,1)*(-y(14))/y(30)));
  g1(23,19)=1;
  g1(23,30)=(-(params(14)*normpdf(y(14),0,1)))/(y(30)*y(30));
  g1(24,8)=(y(10)+y(12))*y(16);
  g1(24,10)=y(8)*y(16);
  g1(24,12)=y(8)*y(16)-y(22);
  g1(24,16)=y(8)*(y(10)+y(12));
  g1(24,22)=(-y(12));
  g1(25,8)=(-((y(11)*T176-y(8)*y(11)*(-y(16)))/(T176*T176)));
  g1(25,11)=(-(y(8)/T176));
  g1(25,12)=(-((-(y(8)*y(11)*params(16)*2/y(21)))/(T176*T176)));
  g1(25,15)=(-1)/y(19);
  g1(25,16)=(-((-(y(8)*y(11)*(-y(8))))/(T176*T176)));
  g1(25,18)=(-((-(y(8)*y(11)))/(T176*T176)));
  g1(25,19)=y(15)/(y(19)*y(19));
  g1(25,21)=(-((-(y(8)*y(11)*params(16)*(-(2*y(12)))/(y(21)*y(21))))/(T176*T176)));
  g1(25,28)=(-((-(y(8)*y(11)*(-params(16))))/(T176*T176)));
  g1(26,2)=(-1);
  g1(26,4)=(-1);
  g1(26,5)=1;
  g1(27,27)=1/y(27)-params(18)*1/y(27);
  g1(28,34)=1/y(34)-params(21)*1/y(34);
  g1(29,28)=T449-params(26)*T449;
  g1(30,2)=(-1);
  g1(30,4)=(-1);
  g1(30,29)=1;
  g1(31,30)=1/y(30)-params(19)*1/y(30);
  g1(32,33)=1/y(33)-params(20)*1/y(33);
  g1(33,31)=(-1);
  g1(33,32)=1-params(1);
  g1(34,2)=(-(1/y(2)));
  g1(34,3)=params(4)*getPowerDeriv(y(3),1+params(5),1)/(1+params(5));
  g1(34,20)=(-(params(9)*1/y(20)));
  g1(34,31)=1;
  g1(35,10)=(-((-y(12))/(y(10)*y(10))));
  g1(35,12)=(-(1/y(10)));
  g1(35,35)=1;
  g1(36,35)=(-1);
  g1(36,36)=1;
  g1(37,28)=(-((-1)/(y(28)*y(28))));
  g1(37,37)=1;
  g1(38,9)=(-(1/y(9)));
  g1(38,38)=1;
  g1(39,8)=(-(y(17)*(1+y(10)/y(12))));
  g1(39,10)=(-(y(8)*y(17)*1/y(12)));
  g1(39,12)=(-(y(8)*y(17)*(-y(10))/(y(12)*y(12))));
  g1(39,17)=(-(y(8)*(1+y(10)/y(12))));
  g1(39,39)=1;
  g1(40,29)=(-(1/y(29)));
  g1(40,40)=1;
  g1(41,13)=(-1);
  g1(41,41)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],41,1681);
end
end
