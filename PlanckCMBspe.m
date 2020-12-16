clear all;
set(0,'defaulttextInterpreter','latex');
set(0,'defaultAxesFontSize',14);
delimiterIn = ' ';
headerlinesIn=1;
DTTdata=importdata('COM_PowerSpect_CMB-TT-binned_R3.01.txt',delimiterIn,headerlinesIn).data;
camB_L7b3d0_s=importdata('CAMB_L7b3d0_scalar.txt');
figure; %figure 3 in my paper
subplot(2,3,1);
errorbar(DTTdata(:,1),DTTdata(:,2),DTTdata(:,3),DTTdata(:,4),'b.');
hold on;
plot(camB_L7b3d0_s(:,1),camB_L7b3d0_s(:,2),'r-');
legend('Planck 2018','CAMB','Box','off')
axis([0 2500 0 10000])
xlabel('$l$')
ylabel('$D_l^{TT} [\mu K^2]$')
dim=[0.285 0.5 0.3 0.3];
str={'\Omega_\Lambda=0.7','\Omega_B=0.3','\Omega_{DM}=0','h=0.7'};
annotation('textbox',dim,'String',str,'FitBoxToText','on');

camb_L7b15d15_s=importdata('CAMB_L7b15d15_scalar.txt');
subplot(2,3,2);
errorbar(DTTdata(:,1),DTTdata(:,2),DTTdata(:,3),DTTdata(:,4),'b.');
hold on;
plot(camb_L7b15d15_s(:,1),camb_L7b15d15_s(:,2),'r-');
axis([0 2500 0 10000])
xlabel('$l$')
ylabel('$D_l^{TT} [\mu K^2]$')
dim=[0.553 0.5 0.3 0.3];
str={'\Omega_\Lambda=0.7','\Omega_B=0.15','\Omega_{DM}=0.15','h=0.7'};
annotation('textbox',dim,'String',str,'FitBoxToText','on');

camb_L7b1d2_s=importdata('CAMB_L7b1d2_scalar.txt');
subplot(2,3,3);
errorbar(DTTdata(:,1),DTTdata(:,2),DTTdata(:,3),DTTdata(:,4),'b.');
hold on;
plot(camb_L7b1d2_s(:,1),camb_L7b1d2_s(:,2),'r-');
axis([0 2500 0 8000])
xlabel('$l$')
ylabel('$D_l^{TT} [\mu K^2]$')
dim=[0.839 0.5 0.3 0.3];
str={'\Omega_\Lambda=0.7','\Omega_B=0.1','\Omega_{DM}=0.2','h=0.7'};
annotation('textbox',dim,'String',str,'FitBoxToText','on');

camb_L7bpdp_s=importdata('CAMB_L7bpdp_scalar.txt');
subplot(2,3,4);
errorbar(DTTdata(:,1),DTTdata(:,2),DTTdata(:,3),DTTdata(:,4),'b.');
hold on;
plot(camb_L7bpdp_s(:,1),camb_L7bpdp_s(:,2),'r-');
axis([0 2500 0 8000])
xlabel('$l$')
ylabel('$D_l^{TT} [\mu K^2]$')
dim=[0.259 0.07 0.3 0.3];
str={'\Omega_\Lambda=0.7','\Omega_B=0.0462','\Omega_{DM}=0.2538','h=0.7'};
annotation('textbox',dim,'String',str,'Color','green','FitBoxToText','on');

camb_L7b1d29_s=importdata('CAMB_L7b1d29_scalar.txt');
subplot(2,3,5);
errorbar(DTTdata(:,1),DTTdata(:,2),DTTdata(:,3),DTTdata(:,4),'b.');
hold on;
plot(camb_L7b1d29_s(:,1),camb_L7b1d29_s(:,2),'r-');
axis([0 2500 0 8000])
xlabel('$l$')
ylabel('$D_l^{TT} [\mu K^2]$')
dim=[0.553 0.07 0.3 0.3];
str={'\Omega_\Lambda=0.7','\Omega_B=0.01','\Omega_{DM}=0.29','h=0.7'};
annotation('textbox',dim,'String',str,'FitBoxToText','on');

subplot(2,3,6);
errorbar(DTTdata(:,1),DTTdata(:,2),DTTdata(:,3),DTTdata(:,4),'b.');
hold on;
plot(DTTdata(:,1),DTTdata(:,5),'r-')
axis([0 2500 0 8000])
xlabel('$l$')
ylabel('$D_l^{TT} [\mu K^2]$')
dim=[0.79 0.07 0.3 0.3];
str={'Planck 2018 best fit'};
annotation('textbox',dim,'String',str,'Color','green','FitBoxToText','on');

figure; %figure 4 in my paper
DTEdata=importdata('COM_PowerSpect_CMB-TE-binned_R3.02.txt',delimiterIn,headerlinesIn).data;
subplot(1,2,1);
errorbar(DTEdata(:,1),DTEdata(:,2),DTEdata(:,3),DTEdata(:,4),'b.');
hold on;
plot(camb_L7bpdp_s(:,1),camb_L7bpdp_s(:,4),'r-');
plot(DTEdata(:,1),DTEdata(:,5),'g--');
axis([0 2000 -150 150])
xlabel('$l$')
ylabel('$D_l^{TE} [\mu K^2]$')
legend('Planck 2018 data','CAMB', 'Planck 2018 best fit');

DEEdata=importdata('COM_PowerSpect_CMB-EE-binned_R3.02.txt',delimiterIn,headerlinesIn).data;
subplot(1,2,2);
errorbar(DEEdata(:,1),DEEdata(:,2),DEEdata(:,3),DEEdata(:,4),'b.');
hold on;
plot(camb_L7bpdp_s(:,1),camb_L7bpdp_s(:,3),'r-');
plot(DEEdata(:,1),DEEdata(:,5),'g--');
axis([0 2000 -20 50])
xlabel('$l$')
ylabel('$D_l^{EE} [\mu K^2]$')