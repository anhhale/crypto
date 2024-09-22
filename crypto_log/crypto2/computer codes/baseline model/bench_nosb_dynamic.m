function [residual, g1, g2, g3] = bench_nosb_dynamic(y, x, params, steady_state, it_)
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

residual = zeros(41, 1);
T23 = params(1)*y(52)/y(11);
T37 = params(6)/2;
T42 = y(44)*y(14)/y(1);
T46 = 1-T37*(T42-1)^2;
T47 = params(6)*(T42-1);
T58 = y(57)*y(53)/y(14)-1;
T60 = y(57)*params(6)*T23*y(54)*T58;
T62 = (y(53)/y(14))^2;
T88 = y(13)^(params(3)*(1-params(8)));
T138 = params(16)*(y(22)/y(5)-y(38))^2;
T162 = 1-normcdf(y(24),0,1);
T192 = y(28)-y(18)*y(26)+params(16)*(2*y(22)/y(5)-y(38));
T287 = (-(params(1)*y(52)))/(y(11)*y(11));
T304 = params(1)/y(11);
T333 = (-(y(44)*y(14)))/(y(1)*y(1));
T459 = (-(exp((-(y(24)*y(24)))/2)/2.506628274631));
T464 = exp((-((y(24)-y(40))*(y(24)-y(40))))/2)/2.506628274631;
T465 = (-T464);
lhs =y(11);
rhs =y(12)^(-1);
residual(1)= lhs-rhs;
lhs =y(11)*y(33);
rhs =params(4)*y(13)^params(5);
residual(2)= lhs-rhs;
lhs =1;
rhs =T23*y(28)+params(9)/y(11)/y(30);
residual(3)= lhs-rhs;
lhs =1;
rhs =T23*y(34);
residual(4)= lhs-rhs;
lhs =1;
rhs =y(35)*(T46-T42*T47)+T60*T62;
residual(5)= lhs-rhs;
lhs =y(35);
rhs =T23*(y(54)*(1-params(2))+y(55));
residual(6)= lhs-rhs;
lhs =y(16);
rhs =(1-params(2))*y(2)+y(14)*T46;
residual(7)= lhs-rhs;
lhs =y(15);
rhs =y(37)*y(2)^(1-params(3))*T88;
residual(8)= lhs-rhs;
lhs =y(33)*y(13);
rhs =params(3)*(1-params(8))*(y(3)+y(19));
residual(9)= lhs-rhs;
lhs =y(2)*y(36);
rhs =(1-params(3))*(y(3)+y(19));
residual(10)= lhs-rhs;
lhs =y(3);
rhs =y(20);
residual(11)= lhs-rhs;
lhs =y(19);
rhs =y(22);
residual(12)= lhs-rhs;
lhs =y(18);
rhs =y(15)/(y(3)+y(19));
residual(13)= lhs-rhs;
lhs =y(17);
rhs =y(18)*params(7)*y(21)*(y(20)+y(22))/y(43)+(y(3)+y(19))*params(3)*params(8);
residual(14)= lhs-rhs;
lhs =y(32);
rhs =y(28)+params(16)*(y(22)/y(5)-y(38));
residual(15)= lhs-rhs;
lhs =y(30)+y(5);
rhs =y(22);
residual(16)= lhs-rhs;
lhs =y(31);
rhs =params(11)*(y(22)*y(32)-y(28)*y(30)-y(5)*T138)+params(12)*y(4);
residual(17)= lhs-rhs;
lhs =y(24);
rhs =log(y(27))/y(40)+y(40)*0.5;
residual(18)= lhs-rhs;
lhs =y(23);
rhs =normcdf(y(24),0,1);
residual(19)= lhs-rhs;
lhs =y(21);
rhs =1-normcdf(y(24)-y(40),0,1)-y(27)*T162;
residual(20)= lhs-rhs;
lhs =y(26);
rhs =y(27)*T162+normcdf(y(24)-y(40),0,1)*(1-params(14));
residual(21)= lhs-rhs;
lhs =y(25);
rhs =(-T162);
residual(22)= lhs-rhs;
lhs =y(29);
rhs =T162-params(14)*normpdf(y(24),0,1)/y(40);
residual(23)= lhs-rhs;
lhs =(y(20)+y(22))*y(18)*y(26);
rhs =y(22)*y(32);
residual(24)= lhs-rhs;
lhs =(-y(25))/y(29);
rhs =y(18)*y(21)/T192;
residual(25)= lhs-rhs;
lhs =y(15);
rhs =y(12)+y(14);
residual(26)= lhs-rhs;
lhs =log(y(37));
rhs =params(18)*log(y(6))-x(it_, 1);
residual(27)= lhs-rhs;
lhs =log(y(44));
rhs =params(21)*log(y(10))+x(it_, 4);
residual(28)= lhs-rhs;
lhs =log(y(38)/params(13));
rhs =params(26)*log(y(7)/params(13))-x(it_, 5);
residual(29)= lhs-rhs;
lhs =y(39);
rhs =y(12)+y(14);
residual(30)= lhs-rhs;
lhs =log(y(40));
rhs =params(19)*log(y(8))+(1-params(19))*log(params(10))+x(it_, 2);
residual(31)= lhs-rhs;
lhs =log(y(43));
rhs =params(20)*log(y(9))+x(it_, 3);
residual(32)= lhs-rhs;
lhs =y(42);
rhs =y(41)+params(1)*y(56);
residual(33)= lhs-rhs;
lhs =y(41);
rhs =log(y(12))+params(9)*log(y(30))-params(4)*y(13)^(1+params(5))/(1+params(5));
residual(34)= lhs-rhs;
lhs =y(45);
rhs =y(22)/y(20);
residual(35)= lhs-rhs;
lhs =y(46);
rhs =y(45);
residual(36)= lhs-rhs;
lhs =y(47);
rhs =1/y(38);
residual(37)= lhs-rhs;
lhs =y(48);
rhs =log(y(19));
residual(38)= lhs-rhs;
lhs =y(49);
rhs =y(18)*y(27)*(1+y(20)/y(22));
residual(39)= lhs-rhs;
lhs =y(50);
rhs =log(y(39));
residual(40)= lhs-rhs;
lhs =y(51);
rhs =y(23);
residual(41)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(41, 62);

  %
  % Jacobian matrix
  %

  g1(1,11)=1;
  g1(1,12)=(-(getPowerDeriv(y(12),(-1),1)));
  g1(2,11)=y(33);
  g1(2,13)=(-(params(4)*getPowerDeriv(y(13),params(5),1)));
  g1(2,33)=y(11);
  g1(3,11)=(-(y(28)*T287+(-params(9))/(y(11)*y(11))/y(30)));
  g1(3,52)=(-(y(28)*T304));
  g1(3,28)=(-T23);
  g1(3,30)=(-((-(params(9)/y(11)))/(y(30)*y(30))));
  g1(4,11)=(-(y(34)*T287));
  g1(4,52)=(-(y(34)*T304));
  g1(4,34)=(-T23);
  g1(5,11)=(-(T62*y(57)*T58*params(6)*y(54)*T287));
  g1(5,52)=(-(T62*y(57)*T58*params(6)*y(54)*T304));
  g1(5,1)=(-(y(35)*((-(T37*T333*2*(T42-1)))-(T47*T333+T42*params(6)*T333))));
  g1(5,14)=(-(y(35)*((-(T37*2*(T42-1)*y(44)/y(1)))-(T47*y(44)/y(1)+T42*params(6)*y(44)/y(1)))+T62*y(57)*params(6)*T23*y(54)*(-(y(57)*y(53)))/(y(14)*y(14))+T60*(-y(53))/(y(14)*y(14))*2*y(53)/y(14)));
  g1(5,53)=(-(T62*y(57)*params(6)*T23*y(54)*y(57)/y(14)+T60*2*y(53)/y(14)*1/y(14)));
  g1(5,35)=(-(T46-T42*T47));
  g1(5,54)=(-(T62*y(57)*T58*T23*params(6)));
  g1(5,44)=(-(y(35)*((-(T37*2*(T42-1)*y(14)/y(1)))-(T47*y(14)/y(1)+T42*params(6)*y(14)/y(1)))));
  g1(5,57)=(-(T62*(params(6)*T23*y(54)*T58+y(57)*params(6)*T23*y(54)*y(53)/y(14))));
  g1(6,11)=(-((y(54)*(1-params(2))+y(55))*T287));
  g1(6,52)=(-((y(54)*(1-params(2))+y(55))*T304));
  g1(6,35)=1;
  g1(6,54)=(-(T23*(1-params(2))));
  g1(6,55)=(-T23);
  g1(7,1)=(-(y(14)*(-(T37*T333*2*(T42-1)))));
  g1(7,14)=(-(T46+y(14)*(-(T37*2*(T42-1)*y(44)/y(1)))));
  g1(7,2)=(-(1-params(2)));
  g1(7,16)=1;
  g1(7,44)=(-(y(14)*(-(T37*2*(T42-1)*y(14)/y(1)))));
  g1(8,13)=(-(y(37)*y(2)^(1-params(3))*getPowerDeriv(y(13),params(3)*(1-params(8)),1)));
  g1(8,15)=1;
  g1(8,2)=(-(T88*y(37)*getPowerDeriv(y(2),1-params(3),1)));
  g1(8,37)=(-(y(2)^(1-params(3))*T88));
  g1(9,13)=y(33);
  g1(9,3)=(-(params(3)*(1-params(8))));
  g1(9,19)=(-(params(3)*(1-params(8))));
  g1(9,33)=y(13);
  g1(10,2)=y(36);
  g1(10,3)=(-(1-params(3)));
  g1(10,19)=(-(1-params(3)));
  g1(10,36)=y(2);
  g1(11,3)=1;
  g1(11,20)=(-1);
  g1(12,19)=1;
  g1(12,22)=(-1);
  g1(13,15)=(-(1/(y(3)+y(19))));
  g1(13,3)=(-((-y(15))/((y(3)+y(19))*(y(3)+y(19)))));
  g1(13,18)=1;
  g1(13,19)=(-((-y(15))/((y(3)+y(19))*(y(3)+y(19)))));
  g1(14,3)=(-(params(3)*params(8)));
  g1(14,17)=1;
  g1(14,18)=(-(params(7)*y(21)*(y(20)+y(22))/y(43)));
  g1(14,19)=(-(params(3)*params(8)));
  g1(14,20)=(-(y(18)*params(7)*y(21)/y(43)));
  g1(14,21)=(-(y(18)*params(7)*(y(20)+y(22))/y(43)));
  g1(14,22)=(-(y(18)*params(7)*y(21)/y(43)));
  g1(14,43)=(-((-(y(18)*params(7)*y(21)*(y(20)+y(22))))/(y(43)*y(43))));
  g1(15,22)=(-(params(16)*1/y(5)));
  g1(15,28)=(-1);
  g1(15,5)=(-(params(16)*(-y(22))/(y(5)*y(5))));
  g1(15,32)=1;
  g1(15,38)=params(16);
  g1(16,22)=(-1);
  g1(16,30)=1;
  g1(16,5)=1;
  g1(17,4)=(-params(12));
  g1(17,22)=(-(params(11)*(y(32)-y(5)*params(16)*1/y(5)*2*(y(22)/y(5)-y(38)))));
  g1(17,28)=(-(params(11)*(-y(30))));
  g1(17,30)=(-(params(11)*(-y(28))));
  g1(17,5)=(-(params(11)*(-(T138+y(5)*params(16)*2*(y(22)/y(5)-y(38))*(-y(22))/(y(5)*y(5))))));
  g1(17,31)=1;
  g1(17,32)=(-(y(22)*params(11)));
  g1(17,38)=(-(params(11)*(-(y(5)*params(16)*(-(2*(y(22)/y(5)-y(38))))))));
  g1(18,24)=1;
  g1(18,27)=(-(1/y(27)/y(40)));
  g1(18,40)=(-(0.5+(-log(y(27)))/(y(40)*y(40))));
  g1(19,23)=1;
  g1(19,24)=T459;
  g1(20,21)=1;
  g1(20,24)=(-(T465-y(27)*T459));
  g1(20,27)=T162;
  g1(20,40)=T465;
  g1(21,24)=(-(y(27)*T459+(1-params(14))*T464));
  g1(21,26)=1;
  g1(21,27)=(-T162);
  g1(21,40)=(-((1-params(14))*T465));
  g1(22,24)=T459;
  g1(22,25)=1;
  g1(23,24)=(-(T459-params(14)*normpdf(y(24),0,1)*(-y(24))/y(40)));
  g1(23,29)=1;
  g1(23,40)=(-(params(14)*normpdf(y(24),0,1)))/(y(40)*y(40));
  g1(24,18)=(y(20)+y(22))*y(26);
  g1(24,20)=y(18)*y(26);
  g1(24,22)=y(18)*y(26)-y(32);
  g1(24,26)=y(18)*(y(20)+y(22));
  g1(24,32)=(-y(22));
  g1(25,18)=(-((y(21)*T192-y(18)*y(21)*(-y(26)))/(T192*T192)));
  g1(25,21)=(-(y(18)/T192));
  g1(25,22)=(-((-(y(18)*y(21)*params(16)*2/y(5)))/(T192*T192)));
  g1(25,25)=(-1)/y(29);
  g1(25,26)=(-((-(y(18)*y(21)*(-y(18))))/(T192*T192)));
  g1(25,28)=(-((-(y(18)*y(21)))/(T192*T192)));
  g1(25,29)=y(25)/(y(29)*y(29));
  g1(25,5)=(-((-(y(18)*y(21)*params(16)*(-(2*y(22)))/(y(5)*y(5))))/(T192*T192)));
  g1(25,38)=(-((-(y(18)*y(21)*(-params(16))))/(T192*T192)));
  g1(26,12)=(-1);
  g1(26,14)=(-1);
  g1(26,15)=1;
  g1(27,6)=(-(params(18)*1/y(6)));
  g1(27,37)=1/y(37);
  g1(27,58)=1;
  g1(28,10)=(-(params(21)*1/y(10)));
  g1(28,44)=1/y(44);
  g1(28,61)=(-1);
  g1(29,7)=(-(params(26)*1/params(13)/(y(7)/params(13))));
  g1(29,38)=1/params(13)/(y(38)/params(13));
  g1(29,62)=1;
  g1(30,12)=(-1);
  g1(30,14)=(-1);
  g1(30,39)=1;
  g1(31,8)=(-(params(19)*1/y(8)));
  g1(31,40)=1/y(40);
  g1(31,59)=(-1);
  g1(32,9)=(-(params(20)*1/y(9)));
  g1(32,43)=1/y(43);
  g1(32,60)=(-1);
  g1(33,41)=(-1);
  g1(33,42)=1;
  g1(33,56)=(-params(1));
  g1(34,12)=(-(1/y(12)));
  g1(34,13)=params(4)*getPowerDeriv(y(13),1+params(5),1)/(1+params(5));
  g1(34,30)=(-(params(9)*1/y(30)));
  g1(34,41)=1;
  g1(35,20)=(-((-y(22))/(y(20)*y(20))));
  g1(35,22)=(-(1/y(20)));
  g1(35,45)=1;
  g1(36,45)=(-1);
  g1(36,46)=1;
  g1(37,38)=(-((-1)/(y(38)*y(38))));
  g1(37,47)=1;
  g1(38,19)=(-(1/y(19)));
  g1(38,48)=1;
  g1(39,18)=(-(y(27)*(1+y(20)/y(22))));
  g1(39,20)=(-(y(18)*y(27)*1/y(22)));
  g1(39,22)=(-(y(18)*y(27)*(-y(20))/(y(22)*y(22))));
  g1(39,27)=(-(y(18)*(1+y(20)/y(22))));
  g1(39,49)=1;
  g1(40,39)=(-(1/y(39)));
  g1(40,50)=1;
  g1(41,23)=(-1);
  g1(41,51)=1;
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],41,3844);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],41,238328);
end
end
