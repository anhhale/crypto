function [residual, g1, g2] = bench_sb_static(y, x, params)
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

residual = zeros( 56, 1);

%
% Model equations
%

T28 = y(1)*params(1)/y(1);
T52 = y(45)*y(4)/y(4)-1;
T55 = 1-params(6)/2*T52^2;
T58 = T55-y(45)*y(4)/y(4)*params(6)*T52;
T87 = y(3)^(params(3)*(1-params(8)));
T145 = params(16)*(y(12)/y(31)-y(39))^2;
T147 = y(12)*y(32)-y(18)*y(30)-y(31)*T145;
T168 = 1-normcdf(y(14),0,1);
T198 = y(18)-y(8)*y(16)+params(16)*(2*y(12)/y(31)-y(39));
T213 = 1-normcdf(y(24),0,1);
T439 = y(32)-y(31)*params(16)*1/y(31)*2*(y(12)/y(31)-y(39));
T477 = (-(exp((-(y(14)*y(14)))/2)/2.506628274631));
T482 = exp((-((y(14)-y(41))*(y(14)-y(41))))/2)/2.506628274631;
T483 = (-T482);
T562 = (-(exp((-(y(24)*y(24)))/2)/2.506628274631));
T567 = exp((-((y(24)-y(41))*(y(24)-y(41))))/2)/2.506628274631;
T568 = (-T567);
T614 = T145+y(31)*params(16)*2*(y(12)/y(31)-y(39))*(-y(12))/(y(31)*y(31));
T651 = 1/params(13)/(y(39)/params(13));
lhs =y(1);
rhs =1/(y(2)-y(2)*params(30))-params(30)*params(1)/(y(2)-y(2)*params(30));
residual(1)= lhs-rhs;
lhs =y(1)*y(33);
rhs =params(4)*y(3)^params(5);
residual(2)= lhs-rhs;
lhs =1;
rhs =T28*y(18)+params(9)/y(1)/y(30);
residual(3)= lhs-rhs;
lhs =1;
rhs =T28*y(37);
residual(4)= lhs-rhs;
lhs =1;
rhs =T28*y(34);
residual(5)= lhs-rhs;
lhs =y(37);
rhs =y(28);
residual(6)= lhs-rhs;
lhs =1;
rhs =y(35)*T58+y(45)*T52*params(6)*T28*y(35);
residual(7)= lhs-rhs;
lhs =y(35);
rhs =T28*(y(35)*(1-params(2))+y(36));
residual(8)= lhs-rhs;
lhs =y(6);
rhs =(1-params(2))*y(6)+y(4)*T55;
residual(9)= lhs-rhs;
lhs =y(5);
rhs =y(38)*y(6)^(1-params(3))*T87;
residual(10)= lhs-rhs;
lhs =y(33)*y(3);
rhs =params(3)*(1-params(8))*(y(7)+y(9));
residual(11)= lhs-rhs;
lhs =y(36)*y(6);
rhs =(1-params(3))*(y(7)+y(9));
residual(12)= lhs-rhs;
lhs =y(7);
rhs =y(10)+y(20);
residual(13)= lhs-rhs;
lhs =y(9);
rhs =y(12)+y(22);
residual(14)= lhs-rhs;
lhs =y(8);
rhs =y(5)/(y(7)+y(9));
residual(15)= lhs-rhs;
lhs =y(7);
rhs =y(8)*params(7)*(y(11)*(y(10)+y(12))+y(21)*(y(20)+y(22)))/y(44)+(y(7)+y(9))*params(3)*params(8);
residual(16)= lhs-rhs;
lhs =y(11)*(y(10)+y(12))/y(10);
rhs =y(21)*(y(20)+y(22))/y(20);
residual(17)= lhs-rhs;
lhs =y(32);
rhs =y(18)+params(16)*(y(12)/y(31)-y(39));
residual(18)= lhs-rhs;
lhs =y(30)+y(31);
rhs =y(12);
residual(19)= lhs-rhs;
lhs =y(31);
rhs =params(11)*T147+y(12)*params(12);
residual(20)= lhs-rhs;
lhs =y(14);
rhs =log(y(17))/y(41)+y(41)*0.5;
residual(21)= lhs-rhs;
lhs =y(13);
rhs =normcdf(y(14),0,1);
residual(22)= lhs-rhs;
lhs =y(11);
rhs =1-normcdf(y(14)-y(41),0,1)-y(17)*T168;
residual(23)= lhs-rhs;
lhs =y(16);
rhs =y(17)*T168+normcdf(y(14)-y(41),0,1)*(1-params(14));
residual(24)= lhs-rhs;
lhs =y(15);
rhs =(-T168);
residual(25)= lhs-rhs;
lhs =y(19);
rhs =T168-params(14)*normpdf(y(14),0,1)/y(41);
residual(26)= lhs-rhs;
lhs =(y(10)+y(12))*y(8)*y(16);
rhs =y(12)*y(32);
residual(27)= lhs-rhs;
lhs =(-y(15))/y(19);
rhs =y(8)*y(11)/T198;
residual(28)= lhs-rhs;
lhs =y(24);
rhs =y(41)*0.5+log(y(27))/y(41);
residual(29)= lhs-rhs;
lhs =y(23);
rhs =normcdf(y(24),0,1);
residual(30)= lhs-rhs;
lhs =y(21);
rhs =1-normcdf(y(24)-y(41),0,1)-y(27)*T213;
residual(31)= lhs-rhs;
lhs =y(26);
rhs =y(27)*T213+normcdf(y(24)-y(41),0,1)*(1-params(15));
residual(32)= lhs-rhs;
lhs =y(25);
rhs =(-T213);
residual(33)= lhs-rhs;
lhs =y(29);
rhs =T213-params(15)*normpdf(y(24),0,1)/y(41);
residual(34)= lhs-rhs;
lhs =(y(20)+y(22))*y(8)*y(26);
rhs =y(28)*y(22);
residual(35)= lhs-rhs;
lhs =(-y(25))/y(29);
rhs =y(8)*y(21)/(y(28)-y(8)*y(26));
residual(36)= lhs-rhs;
lhs =y(5);
rhs =y(2)+y(4);
residual(37)= lhs-rhs;
lhs =log(y(38));
rhs =log(y(38))*params(18)-x(1);
residual(38)= lhs-rhs;
lhs =log(y(45));
rhs =log(y(45))*params(21)+x(4);
residual(39)= lhs-rhs;
lhs =log(y(39)/params(13));
rhs =log(y(39)/params(13))*params(26)-x(5);
residual(40)= lhs-rhs;
lhs =y(40);
rhs =y(2)+y(4);
residual(41)= lhs-rhs;
lhs =log(y(41));
rhs =log(y(41))*params(19)+(1-params(19))*log(params(10))+x(2);
residual(42)= lhs-rhs;
lhs =log(y(44));
rhs =log(y(44))*params(20)+x(3);
residual(43)= lhs-rhs;
lhs =y(43);
rhs =y(42)+params(1)*y(43);
residual(44)= lhs-rhs;
lhs =y(42);
rhs =log(y(2)-y(2)*params(30))+params(9)*log(y(30))-params(4)*y(3)^(1+params(5))/(1+params(5));
residual(45)= lhs-rhs;
lhs =y(46);
rhs =y(22)/(y(12)+y(22));
residual(46)= lhs-rhs;
lhs =y(47);
rhs =(y(12)+y(22))/(y(10)+y(20));
residual(47)= lhs-rhs;
lhs =y(48);
rhs =y(22)/y(20);
residual(48)= lhs-rhs;
lhs =y(49);
rhs =y(12)/y(10);
residual(49)= lhs-rhs;
lhs =y(50);
rhs =1/y(39);
residual(50)= lhs-rhs;
lhs =y(51);
rhs =log(y(9));
residual(51)= lhs-rhs;
lhs =y(52);
rhs =y(8)*y(27)*(1+y(20)/y(22));
residual(52)= lhs-rhs;
lhs =y(53);
rhs =y(8)*y(17)*(1+y(10)/y(12));
residual(53)= lhs-rhs;
lhs =y(54);
rhs =log(y(40));
residual(54)= lhs-rhs;
lhs =y(55);
rhs =(y(12)*y(13)+y(22)*y(23))/(y(12)+y(22));
residual(55)= lhs-rhs;
lhs =y(56);
rhs =T147;
residual(56)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(56, 56);

  %
  % Jacobian matrix
  %

  g1(1,1)=1;
  g1(1,2)=(-((-(1-params(30)))/((y(2)-y(2)*params(30))*(y(2)-y(2)*params(30)))-(-(params(30)*params(1)*(1-params(30))))/((y(2)-y(2)*params(30))*(y(2)-y(2)*params(30)))));
  g1(2,1)=y(33);
  g1(2,3)=(-(params(4)*getPowerDeriv(y(3),params(5),1)));
  g1(2,33)=y(1);
  g1(3,1)=(-((-params(9))/(y(1)*y(1))/y(30)));
  g1(3,18)=(-T28);
  g1(3,30)=(-((-(params(9)/y(1)))/(y(30)*y(30))));
  g1(4,37)=(-T28);
  g1(5,34)=(-T28);
  g1(6,28)=(-1);
  g1(6,37)=1;
  g1(7,35)=(-(T58+y(45)*T52*T28*params(6)));
  g1(7,45)=(-(y(35)*((-(params(6)/2*2*T52))-(params(6)*T52+params(6)*y(45)*y(4)/y(4)))+T52*params(6)*T28*y(35)+y(45)*params(6)*T28*y(35)));
  g1(8,35)=1-T28*(1-params(2));
  g1(8,36)=(-T28);
  g1(9,4)=(-T55);
  g1(9,6)=1-(1-params(2));
  g1(9,45)=(-(y(4)*(-(params(6)/2*2*T52))));
  g1(10,3)=(-(y(38)*y(6)^(1-params(3))*getPowerDeriv(y(3),params(3)*(1-params(8)),1)));
  g1(10,5)=1;
  g1(10,6)=(-(T87*y(38)*getPowerDeriv(y(6),1-params(3),1)));
  g1(10,38)=(-(y(6)^(1-params(3))*T87));
  g1(11,3)=y(33);
  g1(11,7)=(-(params(3)*(1-params(8))));
  g1(11,9)=(-(params(3)*(1-params(8))));
  g1(11,33)=y(3);
  g1(12,6)=y(36);
  g1(12,7)=(-(1-params(3)));
  g1(12,9)=(-(1-params(3)));
  g1(12,36)=y(6);
  g1(13,7)=1;
  g1(13,10)=(-1);
  g1(13,20)=(-1);
  g1(14,9)=1;
  g1(14,12)=(-1);
  g1(14,22)=(-1);
  g1(15,5)=(-(1/(y(7)+y(9))));
  g1(15,7)=(-((-y(5))/((y(7)+y(9))*(y(7)+y(9)))));
  g1(15,8)=1;
  g1(15,9)=(-((-y(5))/((y(7)+y(9))*(y(7)+y(9)))));
  g1(16,7)=1-params(3)*params(8);
  g1(16,8)=(-(params(7)*(y(11)*(y(10)+y(12))+y(21)*(y(20)+y(22)))/y(44)));
  g1(16,9)=(-(params(3)*params(8)));
  g1(16,10)=(-(y(8)*params(7)*y(11)/y(44)));
  g1(16,11)=(-(y(8)*params(7)*(y(10)+y(12))/y(44)));
  g1(16,12)=(-(y(8)*params(7)*y(11)/y(44)));
  g1(16,20)=(-(y(8)*params(7)*y(21)/y(44)));
  g1(16,21)=(-(y(8)*params(7)*(y(20)+y(22))/y(44)));
  g1(16,22)=(-(y(8)*params(7)*y(21)/y(44)));
  g1(16,44)=(-((-(y(8)*params(7)*(y(11)*(y(10)+y(12))+y(21)*(y(20)+y(22)))))/(y(44)*y(44))));
  g1(17,10)=(y(10)*y(11)-y(11)*(y(10)+y(12)))/(y(10)*y(10));
  g1(17,11)=(y(10)+y(12))/y(10);
  g1(17,12)=y(11)/y(10);
  g1(17,20)=(-((y(20)*y(21)-y(21)*(y(20)+y(22)))/(y(20)*y(20))));
  g1(17,21)=(-((y(20)+y(22))/y(20)));
  g1(17,22)=(-(y(21)/y(20)));
  g1(18,12)=(-(params(16)*1/y(31)));
  g1(18,18)=(-1);
  g1(18,31)=(-(params(16)*(-y(12))/(y(31)*y(31))));
  g1(18,32)=1;
  g1(18,39)=params(16);
  g1(19,12)=(-1);
  g1(19,30)=1;
  g1(19,31)=1;
  g1(20,12)=(-(params(12)+params(11)*T439));
  g1(20,18)=(-(params(11)*(-y(30))));
  g1(20,30)=(-(params(11)*(-y(18))));
  g1(20,31)=1-params(11)*(-T614);
  g1(20,32)=(-(y(12)*params(11)));
  g1(20,39)=(-(params(11)*(-(y(31)*params(16)*(-(2*(y(12)/y(31)-y(39))))))));
  g1(21,14)=1;
  g1(21,17)=(-(1/y(17)/y(41)));
  g1(21,41)=(-(0.5+(-log(y(17)))/(y(41)*y(41))));
  g1(22,13)=1;
  g1(22,14)=T477;
  g1(23,11)=1;
  g1(23,14)=(-(T483-y(17)*T477));
  g1(23,17)=T168;
  g1(23,41)=T483;
  g1(24,14)=(-(y(17)*T477+(1-params(14))*T482));
  g1(24,16)=1;
  g1(24,17)=(-T168);
  g1(24,41)=(-((1-params(14))*T483));
  g1(25,14)=T477;
  g1(25,15)=1;
  g1(26,14)=(-(T477-params(14)*normpdf(y(14),0,1)*(-y(14))/y(41)));
  g1(26,19)=1;
  g1(26,41)=(-(params(14)*normpdf(y(14),0,1)))/(y(41)*y(41));
  g1(27,8)=(y(10)+y(12))*y(16);
  g1(27,10)=y(8)*y(16);
  g1(27,12)=y(8)*y(16)-y(32);
  g1(27,16)=y(8)*(y(10)+y(12));
  g1(27,32)=(-y(12));
  g1(28,8)=(-((y(11)*T198-y(8)*y(11)*(-y(16)))/(T198*T198)));
  g1(28,11)=(-(y(8)/T198));
  g1(28,12)=(-((-(y(8)*y(11)*params(16)*2/y(31)))/(T198*T198)));
  g1(28,15)=(-1)/y(19);
  g1(28,16)=(-((-(y(8)*y(11)*(-y(8))))/(T198*T198)));
  g1(28,18)=(-((-(y(8)*y(11)))/(T198*T198)));
  g1(28,19)=y(15)/(y(19)*y(19));
  g1(28,31)=(-((-(y(8)*y(11)*params(16)*(-(2*y(12)))/(y(31)*y(31))))/(T198*T198)));
  g1(28,39)=(-((-(y(8)*y(11)*(-params(16))))/(T198*T198)));
  g1(29,24)=1;
  g1(29,27)=(-(1/y(27)/y(41)));
  g1(29,41)=(-(0.5+(-log(y(27)))/(y(41)*y(41))));
  g1(30,23)=1;
  g1(30,24)=T562;
  g1(31,21)=1;
  g1(31,24)=(-(T568-y(27)*T562));
  g1(31,27)=T213;
  g1(31,41)=T568;
  g1(32,24)=(-(y(27)*T562+(1-params(15))*T567));
  g1(32,26)=1;
  g1(32,27)=(-T213);
  g1(32,41)=(-((1-params(15))*T568));
  g1(33,24)=T562;
  g1(33,25)=1;
  g1(34,24)=(-(T562-params(15)*normpdf(y(24),0,1)*(-y(24))/y(41)));
  g1(34,29)=1;
  g1(34,41)=(-(params(15)*normpdf(y(24),0,1)))/(y(41)*y(41));
  g1(35,8)=(y(20)+y(22))*y(26);
  g1(35,20)=y(8)*y(26);
  g1(35,22)=y(8)*y(26)-y(28);
  g1(35,26)=y(8)*(y(20)+y(22));
  g1(35,28)=(-y(22));
  g1(36,8)=(-((y(21)*(y(28)-y(8)*y(26))-y(8)*y(21)*(-y(26)))/((y(28)-y(8)*y(26))*(y(28)-y(8)*y(26)))));
  g1(36,21)=(-(y(8)/(y(28)-y(8)*y(26))));
  g1(36,25)=(-1)/y(29);
  g1(36,26)=(-((-(y(8)*y(21)*(-y(8))))/((y(28)-y(8)*y(26))*(y(28)-y(8)*y(26)))));
  g1(36,28)=(-((-(y(8)*y(21)))/((y(28)-y(8)*y(26))*(y(28)-y(8)*y(26)))));
  g1(36,29)=y(25)/(y(29)*y(29));
  g1(37,2)=(-1);
  g1(37,4)=(-1);
  g1(37,5)=1;
  g1(38,38)=1/y(38)-params(18)*1/y(38);
  g1(39,45)=1/y(45)-params(21)*1/y(45);
  g1(40,39)=T651-params(26)*T651;
  g1(41,2)=(-1);
  g1(41,4)=(-1);
  g1(41,40)=1;
  g1(42,41)=1/y(41)-params(19)*1/y(41);
  g1(43,44)=1/y(44)-params(20)*1/y(44);
  g1(44,42)=(-1);
  g1(44,43)=1-params(1);
  g1(45,2)=(-((1-params(30))/(y(2)-y(2)*params(30))));
  g1(45,3)=params(4)*getPowerDeriv(y(3),1+params(5),1)/(1+params(5));
  g1(45,30)=(-(params(9)*1/y(30)));
  g1(45,42)=1;
  g1(46,12)=(-((-y(22))/((y(12)+y(22))*(y(12)+y(22)))));
  g1(46,22)=(-((y(12)+y(22)-y(22))/((y(12)+y(22))*(y(12)+y(22)))));
  g1(46,46)=1;
  g1(47,10)=(-((-(y(12)+y(22)))/((y(10)+y(20))*(y(10)+y(20)))));
  g1(47,12)=(-(1/(y(10)+y(20))));
  g1(47,20)=(-((-(y(12)+y(22)))/((y(10)+y(20))*(y(10)+y(20)))));
  g1(47,22)=(-(1/(y(10)+y(20))));
  g1(47,47)=1;
  g1(48,20)=(-((-y(22))/(y(20)*y(20))));
  g1(48,22)=(-(1/y(20)));
  g1(48,48)=1;
  g1(49,10)=(-((-y(12))/(y(10)*y(10))));
  g1(49,12)=(-(1/y(10)));
  g1(49,49)=1;
  g1(50,39)=(-((-1)/(y(39)*y(39))));
  g1(50,50)=1;
  g1(51,9)=(-(1/y(9)));
  g1(51,51)=1;
  g1(52,8)=(-(y(27)*(1+y(20)/y(22))));
  g1(52,20)=(-(y(8)*y(27)*1/y(22)));
  g1(52,22)=(-(y(8)*y(27)*(-y(20))/(y(22)*y(22))));
  g1(52,27)=(-(y(8)*(1+y(20)/y(22))));
  g1(52,52)=1;
  g1(53,8)=(-(y(17)*(1+y(10)/y(12))));
  g1(53,10)=(-(y(8)*y(17)*1/y(12)));
  g1(53,12)=(-(y(8)*y(17)*(-y(10))/(y(12)*y(12))));
  g1(53,17)=(-(y(8)*(1+y(10)/y(12))));
  g1(53,53)=1;
  g1(54,40)=(-(1/y(40)));
  g1(54,54)=1;
  g1(55,12)=(-(((y(12)+y(22))*y(13)-(y(12)*y(13)+y(22)*y(23)))/((y(12)+y(22))*(y(12)+y(22)))));
  g1(55,13)=(-(y(12)/(y(12)+y(22))));
  g1(55,22)=(-(((y(12)+y(22))*y(23)-(y(12)*y(13)+y(22)*y(23)))/((y(12)+y(22))*(y(12)+y(22)))));
  g1(55,23)=(-(y(22)/(y(12)+y(22))));
  g1(55,55)=1;
  g1(56,12)=(-T439);
  g1(56,18)=y(30);
  g1(56,30)=y(18);
  g1(56,31)=T614;
  g1(56,32)=(-y(12));
  g1(56,39)=y(31)*params(16)*(-(2*(y(12)/y(31)-y(39))));
  g1(56,56)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],56,3136);
end
end
