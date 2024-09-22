function [residual, g1, g2, g3] = flm_base_static(y, x, params)
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

residual = zeros( 28, 1);

%
% Model equations
%

XI__ = 1-params(1);
MU__ = params(4)/(params(4)-1);
T41 = y(8)^(1-params(1));
T43 = y(9)^params(1);
T46 = y(1)^(1-params(1));
T47 = y(4)^params(1);
T51 = y(10)^(1-params(1));
T52 = y(7)^params(1);
T57 = y(10)^(params(4)-1);
T68 = y(10)^params(4);
T74 = y(12)/y(11);
T91 = y(15)^(1-params(2));
T92 = y(4)^params(2);
T99 = exp(y(26))*(1-params(2))^(1-params(2))*params(2)^params(2);
T104 = y(16)^params(3);
T115 = 1/params(5)*y(7)^params(7);
T117 = y(10)^params(8);
T118 = T115*T117;
T123 = (y(2)/(y(2)))^params(10);
T153 = 1/(1-y(20)/XI__);
T154 = 1/exp(y(23))*T153;
T201 = exp(y(25))*(log(y(3))-y(16)^(1+params(3))/(1+params(3)));
lhs =y(1)*y(2);
rhs =y(3)+y(4)*y(5)+y(24);
residual(1)= lhs-rhs;
lhs =1;
rhs =params(5)*y(6)*exp(y(25))/exp(y(25))/y(7);
residual(2)= lhs-rhs;
lhs =y(3);
rhs =T41*T43;
residual(3)= lhs-rhs;
lhs =1;
rhs =T46*T47;
residual(4)= lhs-rhs;
lhs =y(7);
rhs =T51*T52;
residual(5)= lhs-rhs;
lhs =y(11);
rhs =y(2)/y(3)+params(6)*params(5)*y(11)*T57;
residual(6)= lhs-rhs;
lhs =y(12);
rhs =y(2)*MU__/y(3)*y(14)+params(6)*params(5)*y(12)*T68;
residual(7)= lhs-rhs;
lhs =params(6)*T57;
rhs =1-(1-params(6))*T74^(1-params(4));
residual(8)= lhs-rhs;
lhs =y(13);
rhs =(1-params(6))*T74^(-params(4))+T68*params(6)*y(13);
residual(9)= lhs-rhs;
lhs =y(14);
rhs =T91*T92/T99;
residual(10)= lhs-rhs;
lhs =y(15);
rhs =y(3)*T104;
residual(11)= lhs-rhs;
lhs =y(16);
rhs =y(13)*y(2)*y(14)*(1-params(2))/y(15);
residual(12)= lhs-rhs;
lhs =y(6);
rhs =T118*T123*exp(y(27));
residual(13)= lhs-rhs;
lhs =y(17);
rhs =y(5)+y(9)-y(18);
residual(14)= lhs-rhs;
lhs =y(9);
rhs =params(1)*y(3)/y(4);
residual(15)= lhs-rhs;
lhs =y(5);
rhs =y(13)*y(2)*y(14)*params(2)/y(4);
residual(16)= lhs-rhs;
lhs =y(18);
rhs =y(4)*y(19)*exp(y(23));
residual(17)= lhs-rhs;
lhs =y(4);
rhs =T154^XI__;
residual(18)= lhs-rhs;
lhs =y(20);
rhs =y(17)/(y(17)+2*y(18));
residual(19)= lhs-rhs;
lhs =y(23);
rhs =y(23)*params(14)-x(1);
residual(20)= lhs-rhs;
lhs =y(28);
rhs =y(28)*params(15)+x(2);
residual(21)= lhs-rhs;
lhs =y(26);
rhs =y(26)*params(16)+x(3);
residual(22)= lhs-rhs;
lhs =y(25);
rhs =y(25)*params(17)+x(4);
residual(23)= lhs-rhs;
lhs =y(27);
rhs =y(27)*params(19)+x(5);
residual(24)= lhs-rhs;
lhs =y(24);
rhs =y(24)*params(17)+x(6);
residual(25)= lhs-rhs;
lhs =y(19);
rhs =params(29)*exp(y(28));
residual(26)= lhs-rhs;
lhs =y(21);
rhs =T201;
residual(27)= lhs-rhs;
lhs =y(22);
rhs =y(21)+params(5)*y(22);
residual(28)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(28, 28);

  %
  % Jacobian matrix
  %

T286 = getPowerDeriv(y(10),params(4)-1,1);
T290 = getPowerDeriv(y(10),params(4),1);
T307 = getPowerDeriv(T74,1-params(4),1);
T311 = getPowerDeriv(T74,(-params(4)),1);
T370 = getPowerDeriv(T154,XI__,1);
  g1(1,1)=y(2);
  g1(1,2)=y(1);
  g1(1,3)=(-1);
  g1(1,4)=(-y(5));
  g1(1,5)=(-y(4));
  g1(1,24)=(-1);
  g1(2,6)=(-(params(5)*exp(y(25))/exp(y(25))/y(7)));
  g1(2,7)=(-((-(params(5)*y(6)*exp(y(25))/exp(y(25))))/(y(7)*y(7))));
  g1(3,3)=1;
  g1(3,8)=(-(T43*getPowerDeriv(y(8),1-params(1),1)));
  g1(3,9)=(-(T41*getPowerDeriv(y(9),params(1),1)));
  g1(4,1)=(-(T47*getPowerDeriv(y(1),1-params(1),1)));
  g1(4,4)=(-(T46*getPowerDeriv(y(4),params(1),1)));
  g1(5,7)=1-T51*getPowerDeriv(y(7),params(1),1);
  g1(5,10)=(-(T52*getPowerDeriv(y(10),1-params(1),1)));
  g1(6,2)=(-(1/y(3)));
  g1(6,3)=(-((-y(2))/(y(3)*y(3))));
  g1(6,10)=(-(params(6)*params(5)*y(11)*T286));
  g1(6,11)=1-params(6)*params(5)*T57;
  g1(7,2)=(-(y(14)*MU__/y(3)));
  g1(7,3)=(-(y(14)*(-(y(2)*MU__))/(y(3)*y(3))));
  g1(7,10)=(-(params(6)*params(5)*y(12)*T290));
  g1(7,12)=1-params(6)*params(5)*T68;
  g1(7,14)=(-(y(2)*MU__/y(3)));
  g1(8,10)=params(6)*T286;
  g1(8,11)=(1-params(6))*(-y(12))/(y(11)*y(11))*T307;
  g1(8,12)=(1-params(6))*T307*1/y(11);
  g1(9,10)=(-(params(6)*y(13)*T290));
  g1(9,11)=(-((1-params(6))*(-y(12))/(y(11)*y(11))*T311));
  g1(9,12)=(-((1-params(6))*T311*1/y(11)));
  g1(9,13)=1-params(6)*T68;
  g1(10,4)=(-(T91*getPowerDeriv(y(4),params(2),1)/T99));
  g1(10,14)=1;
  g1(10,15)=(-(T92*getPowerDeriv(y(15),1-params(2),1)/T99));
  g1(10,26)=(-((-(T91*T92*T99))/(T99*T99)));
  g1(11,3)=(-T104);
  g1(11,15)=1;
  g1(11,16)=(-(y(3)*getPowerDeriv(y(16),params(3),1)));
  g1(12,2)=(-(y(13)*y(14)*(1-params(2))/y(15)));
  g1(12,13)=(-(y(2)*y(14)*(1-params(2))/y(15)));
  g1(12,14)=(-(y(13)*y(2)*(1-params(2))/y(15)));
  g1(12,15)=(-(y(13)*y(2)*(-(y(14)*(1-params(2))))/(y(15)*y(15))));
  g1(12,16)=1;
  g1(13,2)=(-(exp(y(27))*T118*((y(2))-y(2))/((y(2))*(y(2)))*getPowerDeriv(y(2)/(y(2)),params(10),1)));
  g1(13,6)=1;
  g1(13,7)=(-(exp(y(27))*T123*T117*1/params(5)*getPowerDeriv(y(7),params(7),1)));
  g1(13,10)=(-(exp(y(27))*T123*T115*getPowerDeriv(y(10),params(8),1)));
  g1(13,27)=(-(T118*T123*exp(y(27))));
  g1(14,5)=(-1);
  g1(14,9)=(-1);
  g1(14,17)=1;
  g1(14,18)=1;
  g1(15,3)=(-(params(1)/y(4)));
  g1(15,4)=(-((-(params(1)*y(3)))/(y(4)*y(4))));
  g1(15,9)=1;
  g1(16,2)=(-(y(13)*y(14)*params(2)/y(4)));
  g1(16,4)=(-(y(13)*y(2)*(-(y(14)*params(2)))/(y(4)*y(4))));
  g1(16,5)=1;
  g1(16,13)=(-(y(2)*y(14)*params(2)/y(4)));
  g1(16,14)=(-(y(13)*y(2)*params(2)/y(4)));
  g1(17,4)=(-(y(19)*exp(y(23))));
  g1(17,18)=1;
  g1(17,19)=(-(y(4)*exp(y(23))));
  g1(17,23)=(-(y(4)*y(19)*exp(y(23))));
  g1(18,4)=1;
  g1(18,20)=(-(1/exp(y(23))*1/XI__/((1-y(20)/XI__)*(1-y(20)/XI__))*T370));
  g1(18,23)=(-(T370*T153*(-exp(y(23)))/(exp(y(23))*exp(y(23)))));
  g1(19,17)=(-((y(17)+2*y(18)-y(17))/((y(17)+2*y(18))*(y(17)+2*y(18)))));
  g1(19,18)=(-((-(2*y(17)))/((y(17)+2*y(18))*(y(17)+2*y(18)))));
  g1(19,20)=1;
  g1(20,23)=1-params(14);
  g1(21,28)=1-params(15);
  g1(22,26)=1-params(16);
  g1(23,25)=1-params(17);
  g1(24,27)=1-params(19);
  g1(25,24)=1-params(17);
  g1(26,19)=1;
  g1(26,28)=(-(params(29)*exp(y(28))));
  g1(27,3)=(-(exp(y(25))*1/y(3)));
  g1(27,16)=(-(exp(y(25))*(-(getPowerDeriv(y(16),1+params(3),1)/(1+params(3))))));
  g1(27,21)=1;
  g1(27,25)=(-T201);
  g1(28,21)=(-1);
  g1(28,22)=1-params(5);
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],28,784);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],28,21952);
end
end
end
end
