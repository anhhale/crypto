% Nispi Landi (2020): Capital Controls Spillovers, JIMF
% This functions computes the steady state of the baseline model. It is called in console.m
% Author: Valerio Nispi Landi
% Date: 18/02/2021
% "z" denotes EME2, "s" denotes AE


function [ F ] = find_steady(xx,alpha,mu,delta,beta,phi,dratio,dratioz,u,uz,us,n1,n3,n2,ypcratio,nu1,nu1z,nu1s,nu2,nu2z,nu2s,nu3,nu3z,nu3s)
c=xx(1); cz=xx(2); cs=xx(3);
h=xx(4); hz=xx(5); hs=xx(6);
p=xx(7); pz=xx(8);
k=xx(9); kz=xx(10); ks=xx(11);
y=xx(12); yz=xx(13); ys=xx(14);
p1=xx(15); p2=xx(16);
p3=xx(17); b=xx(18); bz=xx(19); bs=xx(20);
as=xx(21); 


F=[
k- alpha*p1/p*y /u
kz-alpha*p2/pz*yz/uz
ks-alpha*p3*ys/us
h^(1+phi)- (1-alpha)*p1/p*y
hz^(1+phi)-(1-alpha)*p2/pz*yz
hs^(1+phi)-(1-alpha)*p3*ys
p*c+  delta*p*k-  (p1*y+ b*(1/beta-1))
pz*cz+delta*pz*kz-(p2*yz+bz*(1/beta-1))
cs+delta*ks-(p3*ys+bs*(1/beta-1))
y-k^(alpha)*h^(1-alpha)
yz-kz^(alpha)*hz^(1-alpha)
ys-as*ks^(alpha)*hs^(1-alpha)
n1*b+n2*bz+n3*bs
-b/(p1*y)-dratio
-bz/(p2*y)-dratioz
p3*ys/(p1*y)-ypcratio
y-(nu1*(p/p1)^mu*(c+delta*k)+n2/n1*nu1z*(pz/p1)^mu*(cz+delta*kz)+n3/n1*nu1s*(1/p1)^mu*(cs+delta*ks))
yz-(n1/n2*nu2*(p/p2)^mu*(c+delta*k)+nu2z*(pz/p2)^mu*(cz+delta*kz)+n3/n2*nu2s*(1/p2)^mu*(cs+delta*ks))
p^(1-mu)-(nu1*p1^(1-mu)+nu2*p2^(1-mu)+nu3*p3^(1-mu))
pz^(1-mu)-(nu1z*p1^(1-mu)+nu2z*p2^(1-mu)+nu3z*p3^(1-mu))
1-(nu1s*p1^(1-mu)+nu2s*p2^(1-mu)+nu3s*p3^(1-mu))
];
end

