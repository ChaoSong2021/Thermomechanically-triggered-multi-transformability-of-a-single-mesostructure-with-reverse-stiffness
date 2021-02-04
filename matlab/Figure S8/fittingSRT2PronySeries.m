clc
clear all
close all

load('PLA_MasterCurve.dat');
time = PLA_MasterCurve(:,1);
E = PLA_MasterCurve(:,3)./1e6;  

Einf = 1.04;
E0 = 1651;


figure(1)
plot(time,E,'k','linewidth',1.25);
set(gca,'yscale','log')
set(gca,'xscale','log')
% legend('Experiment')
xlabel('Time[s]')
ylabel('Stress Relaxation Modulus [MPa]')
hold on

%%
N = 9;  % nonequilibrium branch
Eg(1) = E0-Einf;
tao(1) = 4.80e-5; %relaxation time of the first nonequilibrium branch
for i = 1:N
    Efit = Einf;
    for j = 1:i
        Efit = Efit+Eg(j).*exp(-time./tao(j));
    end
   
    plot(time,Efit)
    [~,Index] = min(abs(time-tao(i)));
    delta = E(Index)-Efit(Index);
%     delta = -(E(Index)-Efit(Index));
    Eg(1) = Eg(1)-delta;
    Eg(i+1) = delta;
    tao(i+1) = tao(i)*10;
end


%%
figure(2)
plot(time,E,'k','linewidth',1.25);
hold on
plot(time,Efit,'r--','linewidth',1.25);
set(gca,'yscale','log')
set(gca,'xscale','log')
legend('Master curve','Fitting result')
xlabel('Time[s]')
ylabel('Stress Relaxation Modulus [MPa]');
