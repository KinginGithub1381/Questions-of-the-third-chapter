%Behrad Bolkhari     Student Number:9919653       Dr Mahdi Imanian
clc
clear
close all
phi = 0.25;
k = 100;
h = 55;
Pbar = 3500;
Bo = 1.2;
mu0 = 1.8;
ct = 0.000013;
A = 640;
re = 2980;
rw = 0.328;
S = 5.5;
Pwf1 = 2500;
Pwf2 = 1500;
Q1 = 600;
Q2 = 900;

Qmax = (Q1)/(1-0.2*(Pwf1/Pbar)-0.8*(Pwf1/Pbar)^2);

Pwf = 3500:-100:0;
QVog = Qmax*(1-0.2*(Pwf/Pbar)-0.8*(Pwf/Pbar).^2);

n = log(Q1/Q2)/(log((Pbar^2-Pwf1^2)/(Pbar^2-Pwf2^2)));
C = Q1/(Pbar^2-Pwf1^2)^n;
QFet = C*(Pbar^2-Pwf.^2).^n;

figure(1)
plot(QVog,Pwf,'-o','linewidth',2)
hold on
plot(QFet,Pwf,'-o','linewidth',2)
grid on
xlabel('Q')
ylabel('P_w_f')
legend('Vogel,s equation','Fetkovich’s equation')
title('Construct IPR of a well in a saturated oil reservoir')