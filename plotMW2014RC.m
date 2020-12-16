set(0,'defaulttextInterpreter','latex');
set(0,'defaultAxesFontSize',14);
linew=1;
vsun=220;
Rsun=8;
omega_sun=vsun/Rsun;
mp=importdata('Miya2014RC.txt');
psp=importdata('PSP2014RC.txt');
np=importdata('NFW2014RC.txt');
bd=importdata('MWP2014bdRC.txt');
MW=importdata('MWP2014RC.txt');
delimiterIn=' ';
headerlinesIn=2;

fid=fopen('posdata.dat');
Tpos=textscan(fid,'%f %f %f %f %f %f %*s %[^\n]','HeaderLines',headerlinesIn);
fid=fclose(fid);
figure; %plot figure 1 in my paper of the term project
subplot(2,1,1);
Tracerx=Tpos{1,5};
Tracery=Tpos{1,6};
plot(Tracery(1:2161),-Tracerx(1:2161),'ro');
hold on;
plot(Tracery(2162:2667),-Tracerx(2162:2667),'b^');
plot(Tracery(2668:2767),-Tracerx(2668:2767),'gs');
plot(0,0,'dk');
plot(0,-8,'pm');
hold off
axis([-30,30,-30,30])
legend('Gas kinematics','Star kinematics','Masers','Galactic center','Sun');
xlabel('y[kpc]');
ylabel('-x[kpc]');

fid=fopen('vcdata.dat');
RCobs=textscan(fid,'%f %f %f %f %f %f %*s %[^\n]','HeaderLines',headerlinesIn);
fid=fclose(fid);
subplot(2,1,2);
errorbar(RCobs{1,1}(1:2161),RCobs{1,3}(1:2161),RCobs{1,4}(1:2161),...
         RCobs{1,4}(1:2161),RCobs{1,2}(1:2161),RCobs{1,2}(1:2161),'ro');
hold on;
errorbar(RCobs{1,1}(2162:2667),RCobs{1,3}(2162:2667),RCobs{1,4}(2162:2667),...
         RCobs{1,4}(2162:2667),RCobs{1,2}(2162:2667),RCobs{1,2}(2162:2667),'b^');
errorbar(RCobs{1,1}(2668:2767),RCobs{1,3}(2668:2767),RCobs{1,4}(2668:2767),...
         RCobs{1,4}(2668:2767),RCobs{1,2}(2668:2767),RCobs{1,2}(2668:2767),'gs');
hold off;
axis([0 30 0 650])
legend('Gas kinematics','Star kinematics','Masers');
xlabel('R[kpc]');
ylabel('$v_c$[km/s]');

figure %plot figure 2 in my paper of the term project
errorbar(RCobs{1,1},RCobs{1,3},RCobs{1,4},RCobs{1,4},RCobs{1,2},RCobs{1,2},'.c');
hold on
plot(mp(:,1)*Rsun,mp(:,2)*vsun,'g:','LineWidth',linew);
plot(psp(:,1)*Rsun,psp(:,2)*vsun,'m:','LineWidth',linew);
plot(bd(:,1)*Rsun,bd(:,2)*vsun,'r--','LineWidth',linew)
plot(np(:,1)*Rsun,np(:,2)*vsun,'b-.','LineWidth',linew);
plot(MW(:,1)*Rsun,MW(:,2)*vsun,'k-','LineWidth',linew);
legend('data','disk','bulge','disk+bulge','DM','total')
axis([0 30 0 500])
xlabel('R[kpc]');
ylabel('$v_c$[km/s]');

