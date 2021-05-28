
clc;
clear;

%% ����ͨ����ʶ����

a1 = 0.2634;  
a2 = 1.6279;
b1 = 0.531;
ce = 0.3010;

%% ����ͨ����ʶ����

a3 = 25.6488;
b2 = 5.3292;
ct = 0.3410; 

%% ƫ��ͨ����ʶ����
b3 = 0.531; 
b4 = 0.1157;
cp = 0.4804;

%% �ٶȲ�������ģ���������
%              w^2 s
%  D(s)=--------------------
%        s^2 + 2wn s + w^2 
w= 125.66;
n=0.9;
%

%% ����ƽ���
theta = 0;
% theta = 5*pi/180;
theta_d = theta;
epsilon = 0;
epsilon_d = epsilon;
% psi = 45*pi/180;
psi = 0;
psi_d = psi;

%% ����ǰ����������

fs = (a1*cos(theta)*sin(epsilon)+a2*cos(epsilon))/(b1*cos(theta));
fd = a3*cos(epsilon)*sin(theta)/b2;


%% ���Ի�ģ��
d1 = -b3.*sin(theta).*sin(epsilon).*fs - b4.*sin(theta).*cos(epsilon).*fd;
d2 = b3.*cos(theta).*cos(epsilon).*fs - b4.*cos(theta).*sin(epsilon).*fd;
d3 = -a1.*cos(theta).*cos(epsilon) + a2.*sin(epsilon);
d4 = a1.*sin(theta).*sin(epsilon) - b1.*sin(theta).*fs;
d5 = a3.*sin(theta).*sin(epsilon);
d6 = -a3.*cos(theta).*cos(epsilon);
d7 = b3.*sin(theta).*cos(epsilon);
d8 = -b4.*sin(theta).*sin(epsilon);
d9 = b1.*cos(theta);

% ��ͨ��
A = [0 1 0 0 0 0;
     0 -cp d1 0 d2 0;
     0 0 0 1 0 0;
     0 0 d3 -ce d4 0;
     0 0 0 0 0 1;
     0 0 d5 0 d6 -ct;];
 B = [0 0;
     d7 d8;
     0 0;
     d9 0;
     0 0;
     0 b2;];
 
 % ����-����˫ͨ��ģ��
% A = [0 1 0 0;
%      d3 -ce d4 0;
%      0 0 0 1;
%      d5 0 d6 -ct;]; 
%  
% B = [0 0;
%      d9 0;
%      0 0;
%      0 b2;]; 

