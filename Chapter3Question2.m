%Behrad Bolkhari     Student Number:9919653       Dr Mahdi Imanian
clc
clear
close all
phi = 0.2;
k = 80;
h = 55;
Pbar = 4500;
Bo = 1.1;
mu0 = 1.8;
ct = 0.000013;
A = 640;
re = 2980;
rw = 0.328;
S = 2;

J = (k*h)/(141.2*Bo*mu0*(log(re/rw)-0.75+S));
Qmax = J*Pbar/1.8;
Pwf = 4500:-100:0;
Q = zeros(1,length(Pwf));
Deltap = Pbar-Pwf(1);
Q(1) = J*Deltap;
Q(2:end) = Qmax*(1-0.2*(Pwf(2:end)/Pbar)-0.8*(Pwf(2:end)/Pbar).^2);
figure(1)
plot(Q,Pwf,'-o','linewidth',2)
grid on
xlabel('Q')
ylabel('P_w_f')
title('Construct IPR of a vertical well in a saturated oil')

