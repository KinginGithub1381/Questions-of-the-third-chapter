%Behrad Bolkhari     Student Number:9919653       Dr Mahdi Imanian
clc
clear
close all
Pbar = [2200 1500];
J(1) = 1.25;
mu0 = [3.55 3.85];
Bo = [1.2 1.15];
Kro = [0.82 0.65];

J(2) = J(1)*((Kro(2)/(Bo(2)*mu0(2)))/(Kro(1)/(Bo(1)*mu0(1))));

Pwf1 = 2200:-100:0;
Pwf2 = 1500:-100:0;

Q1 = (J(1)*Pbar(1)/1.8)*((1-0.2*(Pwf1/Pbar(1))-0.8*(Pwf1/Pbar(1)).^2));
Q2 = (J(2)*Pbar(2)/1.8)*((1-0.2*(Pwf2/Pbar(2))-0.8*(Pwf2/Pbar(2)).^2));

figure(1)
plot(Q1,Pwf1,'-o','linewidth',2)
hold on
plot(Q2,Pwf2,'-o','linewidth',2)
grid on
xlabel('Q')
ylabel('P_w_f')
legend('Present','Future')
title('Determine the IPR for a well at the time')
