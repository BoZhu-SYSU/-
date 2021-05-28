%% �����ɶ�ֱ��������ʵ���������

clc;
clear;
load('desire_case1.mat');
Sample_Time_Net = 0.005;

mh = 1.8; %ֱ������������ ��λ��kg
loc = 0.78; %ֱ�������嵽��ת��ľ��� ��λ��m

mc = 3.433; %ƽ�������� ��λ��kg
lob = 0.33; %ƽ��쵽֧��ľ��� ��λ��m

mb = 0.67948;
loa = 0.2296;

m1 = 0.552; %ֱ���������ƽ��������� ��λ��kg
m2 = 0.552; %ֱ���������ƽ��������� ��λ��kg  ����û����

ldf = 0.17; %ֱ�����ƽ�������ת��ľ��� ��λ��m
lcd = 0.10; %ֱ���������ƽ������Ӹ����ĵ���ת��ľ��� ��λ��m

I_t = 0.0319;  %ֱ����������ת������
I_e = 1.469;   %ֱ����������ת������
I_psi = 1.469; %ֱ����ƫ����ת������
g = 9.81;
m = (-mc*lob + mh *loc + mb*loa)/loc;%��Ч����
%m = (-mc*lob + mh *loc)/loc;%��Ч����


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
% w= 125.66;
w= 100;
n=0.9;
%

%% ����ƽ���
% theta = 0;
theta = 0*pi/180;
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
% A = [0 1 0 0 0 0;
%      0 -cp d1 0 d2 0;
%      0 0 0 1 0 0;
%      0 0 d3 -ce d4 0;
%      0 0 0 0 0 1;
%      0 0 d5 0 d6 -ct;];
%  B = [0 0;
%      d7 d8;
%      0 0;
%      d9 0;
%      0 0;
%      0 b2;];
 
 % ����-����˫ͨ��ģ��
 A = [0 1 0 0;
      d3 -ce d4 0;
      0 0 0 1;
      d5 0 d6 -ct;]; 
  
 B = [0 0;
      d9 0;
      0 0;
      0 b2;]; 
 
 
%%  LQR

% Q = [100 0 0 0 0 0;
%      0 1 0 0 0 0;
%      0 0 100 0 0 0;
%      0 0 0 10 0 0;
%      0 0 0 0 400 0;
%      0 0 0 0 0 1];  %%�����ɶ� ƫ��������

%��ͨ��
%  Q = [30 0 0 0 0 0;
%      0 01 0 0 0 0;
%      0 0 180 0 0 0;
%      0 0 0 10 0 0;
%      0 0 0 0 400 0;
%      0 0 0 0 0 1];  %ƫ��+���� ������

% ����-����˫ͨ��
Q = [180 0 0 0;
     0 10 0 0;
     0 0 400 0;
     0 0 0 1]; 
 
R =[1 0;
    0 1];
[K,P,e] = lqr(A,B,Q,R);

K_psi2theta = [1.8,0.2];
