function [D R DELTA]=Vector(M)
A = [0;0;0 ];
p=([M(2,1) M(3,1) M(4,1)]')/M(1,1);
D = sqrt(M(1,2)^2 + M(1,3)^2 + M(1,4)^2)/M(1,1)
dvec=[M(1,2);M(1,3);M(1,4)]/M(1,1);
n=dvec/norm(dvec);
md=(sqrt(1-D^2))*eye(3) +(1-sqrt(1-D^2))*n*n';
MD=[1 dvec' ; dvec md]
MPRIM=M*inv(MD);
mprim=MPRIM([2 3 4],[2 3 4]);
h=mprim*mprim';
E=eig(h);
a=E(1);
b=E(2);
c=E(3);
if det(mprim)>0
    z=1
end
if det(mprim)<0
    z=-1
end
mdelta=z* inv(h+(sqrt(a*b)+sqrt(b*c)+sqrt(c*a))*eye(3))*((sqrt(a)+sqrt(b)+sqrt(c))*h +(sqrt(a*b*c))*eye(3));
mr=inv(mdelta)*mprim;
MR=[1 0 0 0;A mr]
pdelta=(p-(M([2 3 4],[2 3 4]))*dvec)/(1-D^2);
MDELTA=[1 0 0 0;pdelta mdelta]
% MDELTA,MR,MD multiplication must give out the initial matrix
% L=MDELTA*MR*MD;
R=acos(0.5*trace(MR)-1);
DELTA=1-abs(trace(mdelta))/3;

