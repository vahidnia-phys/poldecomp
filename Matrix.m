clear;
clc;

HH=115;
HV=69;
HP=89;
HR=77;
VH=68;
VV=117;
VP=92;
VR=87;
PH=88;
PV=92;
PP=68;
PR=67;
RH=83;
RV=92;
RP=84.5;
RR=59;
M=eye(4,4);
M(1,1)=HH+HV+VH+VV;
M(1,2)=HH+HV-VH-VV;
M(1,3)=2*PH+2*PV-M(1,1);
M(1,4)=2*RH+2*RV-M(1,1);
M(2,1)=HH-HV+VH-VV;
M(2,2)=HH-HV-VH+VV;
M(2,3)=2*PH-2*PV-M(2,1);
M(2,4)=2*RH-2*RV-M(2,1);
M(3,1)=2*HP+2*VP-M(1,1);
M(3,2)=2*HP-2*VP-M(1,2);
M(3,3)=4*PP-M(1,1)-M(1,3)-M(3,1);
M(3,4)=4*RP-M(1,1)-M(1,4)-M(3,1);
M(4,1)=2*HR+2*VR-M(1,1);

M(4,2)=2*HR-2*VR-M(1,2);
M(4,3)=4*PR-M(1,1)-M(1,3)-M(4,1);
M(4,4)=4*RR-M(1,1)-M(1,4)-M(4,1);
M;

M=(M./M(1,1))


[D R DELTA]=Vector(M)

