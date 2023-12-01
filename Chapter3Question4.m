%Behrad Bolkhari     Student Number:9919653       Dr Mahdi Imanian
clc
clear
close all
phi = 0.25;
k = 100;
h = 55;
Pbar = 5500;
Pb = 3500;
Bo = 1.2;
mu0 = 1.8;
ct = 0.000013;
A = 640;
re = 2980;
rw = 0.328;
S = 5.5;
Pwf1 = 4000;
Pwf2 = 2000;
Q1 = 400;
Q2 = 1000;

J1 = Q1/(Pbar-Pwf1);
J2 = (Q2)/(Pbar-Pb+(Pb/1.8)*(1-0.2*(Pwf2/Pb)-0.8*(Pwf2/Pb)^2));

Pwf = 5500:-100:0;
Q1 = zeros(1,length(Pwf));
Q2 = zeros(1,length(Pwf));
Deltap1 = Pbar-Pwf(1:21);
Q1(1:21) = J1*Deltap1;
Q2(1:21) = J2*Deltap1;
Q1(22:end) = J1*(Pbar-Pb+(Pb/1.8)*(1-0.2*(Pwf(22:end)/Pb)-0.8*(Pwf(22:end)/Pb).^2));
Q2(22:end) = J2*(Pbar-Pb+(Pb/1.8)*(1-0.2*(Pwf(22:end)/Pb)-0.8*(Pwf(22:end)/Pb).^2));

figure(1)
plot(Q1,Pwf,'-o','linewidth',2)
hold on
plot(Q2,Pwf,'-o','linewidth',2)
grid on
xlabel('Q')
ylabel('P_w_f')
legend('Q Well 1','Q Well 2')
title('Construct IPR of two wells in an unsaturated oil')