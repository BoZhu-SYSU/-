close all
load('data0817��ͨ����������ƫ������ʵ��.mat')
% size1 = size(elevation_real_data,1);
%% �Ա�

% û������
% epsilon_d_data = zeros(size1,1);
% for i=1:size1
% epsilon_d_data(i,1) = epsilon_d;
% end
% 
% theta_d_data = zeros(size1,1);
% for i=1:size1
% theta_d_data(i,1) = theta_d;
% end
% 
% psi_d_data = zeros(size1,1);
% for i=1:size1
% psi_d_data(i,1) = psi_d;
% end


%������������
epsilon_d_data(:,1) = ele_d_data.signals.values(1,1,:);
theta_d_data(:,1) = pitch_d_data.signals.values(1,1,:);
psi_d_data(:,1) = travel_d_data.signals.values(1,1,:);


figure
%����
plot(elevation_real_data(:,1),epsilon_d_data(:,1),'b','LineWidth',1);
hold on;
plot(elevation_simu_data(:,1),elevation_simu_data(:,2),'--g','LineWidth',2);
plot(elevation_real_data(:,1),elevation_real_data(:,2),'r','LineWidth',1.5);
%ʵ��
% plot(elevation_real_data(:,1),epsilon_d_data(:,1),elevation_real_data(:,1),elevation_real_data(:,2));
grid on;
%xlim([0,45]); 
xlabel('\fontname{����}\fontsize{15}ʱ��\fontname{Times New Roman}\fontsize{15}(s)');
ylabel('\fontname{����}\fontsize{15}������\fontname{Times New Roman}\fontsize{15}(rad)');
%���ſ���ʶ�𣬹�ʽ����
legend({'����','����','ʵ��'},'Fontname','����','FontSize',12);
% legend({'����','ʵ��'},'Fontname','����','FontSize',12);

% % 
figure
%����
% plot(pitch_real_data(:,1),theta_d_data(:,1),'b','LineWidth',1);
plot(theta_d(:,1),-theta_d(:,2),'b','LineWidth',1);
hold on;
% plot(pitch_simu_data(:,1),pitch_simu_data(:,2),'--g','LineWidth',2);
plot(pitch_real_data(:,1),-pitch_real_data(:,2),'r','LineWidth',1.5);

%ʵ��
% plot(pitch_real_data(:,1), theta_d_data(:,1),pitch_real_data(:,1),pitch_real_data(:,2));
grid on;
%xlim([0,45]); 
xlabel('\fontname{����}\fontsize{15}ʱ��\fontname{Times New Roman}\fontsize{15}(s)');
ylabel('\fontname{����}\fontsize{15}������\fontname{Times New Roman}\fontsize{15}(rad)');
%���ſ���ʶ�𣬹�ʽ����
% legend({'����','����','ʵ��'},'Fontname','����','FontSize',12);
legend({'����','ʵ��'},'Fontname','����','FontSize',12);

figure
%����
plot(tralvel_real_data(:,1), psi_d_data(:,1),'b','LineWidth',1);
hold on;
plot(travel_simu_data(:,1),travel_simu_data(:,2),'--g','LineWidth',2);
plot(tralvel_real_data(:,1),tralvel_real_data(:,2),'r','LineWidth',1.5);
%ʵ��
% plot(tralvel_real_data(:,1), psi_d_data(:,1),tralvel_real_data(:,1),-tralvel_real_data(:,2));
grid on;
xlabel('\fontname{����}\fontsize{15}ʱ��\fontname{Times New Roman}\fontsize{15}(s)');
ylabel('\fontname{����}\fontsize{15}ƫ����\fontname{Times New Roman}\fontsize{15}(rad)');
legend({'����','����','ʵ��'},'Fontname','����','FontSize',12);
% legend({'����','ʵ��'},'Fontname','����','FontSize',12);


% figure
% plot(fs_d(:,1),fs_d(:,2),fd_d(:,1),fd_d(:,2));
% grid on;
% xlabel('\fontname{����}\fontsize{15}ʱ��\fontname{Times New Roman}\fontsize{15}(s)');
% ylabel('\fontname{����}\fontsize{15}ǰ������\fontname{Times New Roman}\fontsize{15}(N)');
% legend({'����','����'},'Fontname','����','FontSize',12);
% ylim([-2,6]);

%ǰ������
figure
plot(fs_data(:,1),fs_data(:,2),fd_data(:,1),fd_data(:,2));
grid on;
xlabel('\fontname{����}\fontsize{15}ʱ��\fontname{Times New Roman}\fontsize{15}(s)');
ylabel('\fontname{����}\fontsize{15}����\fontname{Times New Roman}\fontsize{15}(N)');
legend({'����','����'},'Fontname','����','FontSize',12);
ylim([-2,6]);







