%Behrad Bolkhari     Student Number:9919653       Dr Mahdi Imanian
clc
clear
close all
t = 30*24;
phi = 0.25;
k = 10;
h = 50;
Pbar = 5000;
Bo = 1.2;
mu0 = 1.5;
ct = 0.0000125;
A = 640;
re = 2980;
rw = 0.328;
S = 5;

%% Part 01
J = (k*h)/(162.6*Bo*mu0*(log10(t)+log10((k)/(phi*mu0*ct*(rw^2)))-3.23+0.87*S));
Pwf = [100 5000];
Deltap = Pbar-Pwf;
Q = J*Deltap;
figure(1)
plot(Q,Pwf,'-o','linewidth',2)
grid on
xlabel('Q')
ylabel('P_w_f')
title('transient flow')

%% Part 02
J = (k*h)/(141.2*Bo*mu0*(log(re/rw)+S));
Pwf = [100 5000];
Deltap = Pbar-Pwf;
Q = J*Deltap;
figure(2)
plot(Q,Pwf,'-o','linewidth',2)
grid on
xlabel('Q')
ylabel('P_w_f')
title(' steady-state flow')

%% Part 03
J = (k*h)/(141.2*Bo*mu0*(log(re/rw)-0.75+S));
Pwf = [100 5000];
Deltap = Pbar-Pwf;
Q = J*Deltap;
figure(3)
plot(Q,Pwf,'-o','linewidth',2)
grid on
xlabel('Q')
ylabel('P_w_f')
title('pseudo-steady-state flow')
