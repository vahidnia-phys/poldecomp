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
%melanoma
% HH=106.5;
% HV=69;
% HP=89;
% HR=77;
% VH=68;
% VV=110;
% VP=92;
% VR=87;
% PH=88;
% PV=92;
% PP=68;
% PR=67;
% RH=83;
% RV=92;
% RP=84.5;
% RR=59;
%%BCC
% HH=85;
% HV=70;
% HP=78;
% HR=69;
% VH=70;
% VV=85;
% VP=78;
% VR=70;
% PH=79;
% PV=79;
% PP=70;
% PR=70;
% RH=76;
% RV=79;
% RP=77;
% RR=60;
%SCC
% HH=87;
% HV=73;
% HP=80;
% HR=70;
% VH=73;
% VV=89;
% VP=82;
% VR=73;
% PH=82;
% PV=82;
% PP=72;
% PR=71;
% RH=79;
% RV=81;
% RP=79;
% RR=63;
%BenignNevus
% HH=82;
% HV=69;
% HP=75;
% HR=65.5;
% VH=69;
% VV=84.5;
% VP=77;
% VR=68;
% PH=75;
% PV=75.5;
% PP=69;
% PR=68;
% RH=73;
% RV=76;
% RP=73.5;
% RR=59;

%Tuned BenignNevus
% HH=82;
% HV=69;
% HP=75;
% HR=66;
% VH=69;
% VV=82;
% VP=77;
% VR=68.5;
% PH=75;
% PV=75.8;
% PP=69;
% PR=68;
% RH=73;
% RV=76;
% RP=73.5;
% RR=59.6;
%Tuned SCC
% HH=87;
% HV=73;
% HP=80;
% HR=70;
% VH=73;
% VV=89;
% VP=82;
% VR=73;
% PH=82;
% PV=82;
% PP=72;
% PR=71;
% RH=79;
% RV=81;
% RP=79;
% RR=61.5
%%Tuned BCC
% HH=85;
% HV=70;
% HP=78;
% HR=69;
% VH=70;
% VV=85;
% VP=78;
% VR=70;
% PH=79;
% PV=79;
% PP=70;
% PR=70;
% RH=76;
% RV=79;
% RP=77;
% RR=59;

