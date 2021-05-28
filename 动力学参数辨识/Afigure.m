close all
load('experiment_data.mat');
load('ModelInputSin.mat');
%% ��ģʵ�����ݺͷ������ݶԱ�
%�����ź�
figure
plot(controlInput2(:,1),controlInput2(:,2),controlInput2(:,1),controlInput2(:,3),'LineWidth',1.5)
xlabel('\fontname{����}\fontsize{18}ʱ��\fontname{Times New Roman}\fontsize{18}(s)');
ylabel('\fontname{����}\fontsize{18}����\fontname{Times New Roman}\fontsize{18}(N)');
h = legend({'f_1','f_2'}, 'Fontname','Times New Roman','FontSize',18);
title('\fontname{Times New Roman}\fontsize{18}a.\fontname{����}\fontsize{18}ϵͳ����');
set(h,'Orientation','horizon');
set(h,'Box','off');
set(gca,'FontSize',15,'Fontname', 'Times New Roman');
set(gcf,'unit','normalized','position',[0.2,0.2,0.5,0.4]); 

figure
plot(exqforInput1(:,1),exqforInput1(:,4),'b',exqforInput1(:,1),SingleModelq(:,2),'g',exqforInput1(:,1),MultiModelq_undenti(:,2),'r', 'LineWidth',1);
% grid on;
%xlim([0,45]); 
xlabel('\fontname{����}\fontsize{18}ʱ��\fontname{Times New Roman}\fontsize{18}(s)');
ylabel('\fontname{����}\fontsize{18}ƫ����\fontname{Times New Roman}\fontsize{18}(rad)');
% h = legend({'ʵ��','������ģ��','�����ģ��'},'Fontname','����','FontSize',18);
h = legend({'ʵ��','SRBģ��','MRBģ��'},'Fontname','����','FontSize',18);

set(h,'Orientation','horizon');
set(h,'Box','off');
title('\fontname{Times New Roman}\fontsize{18}b.\fontname{����}\fontsize{18}ƫ����');
set(gca,'FontSize',15,'Fontname', 'Times New Roman');
set(gcf,'unit','normalized','position',[0.2,0.2,0.5,0.4]);

figure
plot(exqforInput1(:,1),exqforInput1(:,2),'b',exqforInput1(:,1),SingleModelq(:,3),'g',exqforInput1(:,1),MultiModelq_undenti(:,3),'r', 'LineWidth',1);
% grid on;
%xlim([0,45]); 
xlabel('\fontname{����}\fontsize{18}ʱ��\fontname{Times New Roman}\fontsize{18}(s)');
ylabel('\fontname{����}\fontsize{18}������\fontname{Times New Roman}\fontsize{18}(rad)');
% h = legend({'ʵ��','������ģ��','�����ģ��'},'Fontname','����','FontSize',18);
h = legend({'ʵ��','SRBģ��','MRBģ��'},'Fontname','����','FontSize',18);
set(h,'Orientation','horizon');
set(h,'Box','off');
title('\fontname{Times New Roman}\fontsize{18}c.\fontname{����}\fontsize{18}������');
set(gca,'FontSize',15,'Fontname', 'Times New Roman');
set(gcf,'unit','normalized','position',[0.2,0.2,0.5,0.4]);

figure
plot(exqforInput1(:,1),-exqforInput1(:,3),'b',exqforInput1(:,1),SingleModelq(:,4),'g',exqforInput1(:,1),MultiModelq_undenti(:,4),'r', 'LineWidth',1);
% grid on;
hold on;
xlabel('\fontname{����}\fontsize{18}ʱ��\fontname{Times New Roman}\fontsize{18}(s)');
ylabel('\fontname{����}\fontsize{18}������\fontname{Times New Roman}\fontsize{18}(rad)');
% h = legend({'ʵ��','������ģ��','�����ģ��'},'Fontname','����','FontSize',18);
h = legend({'ʵ��','SRBģ��','MRBģ��'},'Fontname','����','FontSize',18);
set(h,'Orientation','horizon');
set(h,'Box','off');
title('\fontname{Times New Roman}\fontsize{18}d.\fontname{����}\fontsize{18}������');
set(gca,'FontSize',15,'Fontname', 'Times New Roman');
set(gcf,'unit','normalized','position',[0.2,0.2,0.5,0.4]);



%% ģ�ͱ�ʶ��ͼ
figure
plot(controlInput2(:,1),controlInput2(:,2),controlInput2(:,1),controlInput2(:,3))   % ��
%xlim([0,25])
xlabel('\fontname{����}\fontsize{15}ʱ��\fontname{Times New Roman}\fontsize{15}(s)');
ylabel('\fontname{����}\fontsize{15}����\fontname{Times New Roman}\fontsize{15}(N)');
h = legend({'$f_1$','$f_2$'}, 'Interpreter','latex','FontSize',18);
set(h,'Orientation','horizon');
set(h,'Box','off');
set(gcf,'unit','normalized','position',[0.2,0.2,0.5,0.4]);

% �Ա�

figure
plot(exqforInput1(:,1),exqforInput1(:,4),'b',exqforInput1(:,1),MultiModelq_undenti(:,2),'g',exqforInput1(:,1),MultiModelq(:,2),'r', 'LineWidth',1.5);
% grid on;
%xlim([0,45]); 
xlabel('\fontname{����}\fontsize{18}ʱ��\fontname{Times New Roman}\fontsize{18}(s)');
ylabel('\fontname{����}\fontsize{18}ƫ����\fontname{Times New Roman}\fontsize{18}(rad)');
%���ſ���ʶ�𣬹�ʽ����
h = legend({'ʵ��','��ʶǰ','��ʶ��'},'Fontname','����','FontSize',18);
set(h,'Orientation','horizon');
set(h,'Box','off');
title('\fontname{Times New Roman}\fontsize{18}a.\fontname{����}\fontsize{18}ƫ����');
set(gca,'FontSize',15,'Fontname', 'Times New Roman');
set(gcf,'unit','normalized','position',[0.2,0.2,0.5,0.4]);
% % 
figure
plot(exqforInput1(:,1), exqforInput1(:,2),'b',exqforInput1(:,1),MultiModelq_undenti(:,3),'g',exqforInput1(:,1),MultiModelq(:,3),'r', 'LineWidth',1.5);
% grid on;
%xlim([0,45]); 
xlabel('\fontname{����}\fontsize{18}ʱ��\fontname{Times New Roman}\fontsize{18}(s)');
ylabel('\fontname{����}\fontsize{18}������\fontname{Times New Roman}\fontsize{18}(rad)');
%���ſ���ʶ�𣬹�ʽ����
h = legend({'ʵ��','��ʶǰ','��ʶ��'},'Fontname','����','FontSize',18);
set(h,'Orientation','horizon');
set(h,'Box','off');
title('\fontname{Times New Roman}\fontsize{18}b.\fontname{����}\fontsize{18}������');
set(gca,'FontSize',15,'Fontname', 'Times New Roman');
set(gcf,'unit','normalized','position',[0.2,0.2,0.5,0.4]);
% % 
figure
plot(exqforInput1(:,1),-exqforInput1(:,3),'b',exqforInput1(:,1),MultiModelq_undenti(:,4),'g',exqforInput1(:,1),MultiModelq(:,4),'r', 'LineWidth',1.5);
% grid on;
hold on;
xlabel('\fontname{����}\fontsize{18}ʱ��\fontname{Times New Roman}\fontsize{18}(s)');
ylabel('\fontname{����}\fontsize{18}������\fontname{Times New Roman}\fontsize{18}(rad)');
h = legend({'ʵ��','��ʶǰ','��ʶ��'},'Fontname','����','FontSize',18);
%set(h,'Orientation','horizon');
set(h,'Box','off');
title('\fontname{Times New Roman}\fontsize{18}c.\fontname{����}\fontsize{18}������');
set(gca,'FontSize',15,'Fontname', 'Times New Roman');
set(gcf,'unit','normalized','position',[0.2,0.2,0.5,0.4]);
axes('position',[0.18,0.3,0.3,0.25]); %�ڶ���
% axes('position',[0.2,0.56,0.3,0.25]); %��һ��
plot(exqforInput1(:,1),-exqforInput1(:,3),'b',exqforInput1(:,1),MultiModelq(:,4),'r', 'LineWidth',1);
% xlim([40,50]);  %������0.9863
xlim([25,30]); %�ڶ���
% xlim([30,35]); %��һ��
