%Behrad Bolkhari     Student Number:9919653       Dr Mahdi Imanian
clc
clear
close all
phi = 0.25;
k = 100;
h = 55;
Pbar = 5000;
Pb = 3000;
Bo = 1.2;
mu0 = 1.8;
ct = 0.000013;
A = 640;
re = 2980;
rw = 0.328;
S = 5.5;

J = (k*h)/(141.2*Bo*mu0*(log(re/rw)-0.75+S));
Qb = J*(Pbar-Pb);
Qv = J*Pbar/1.8;
Pwf = 5000:-100:0;
Q = zeros(1,length(Pwf));
Deltap = Pbar-Pwf(1:21);
Q(1:21) = J*Deltap;
Q(22:end) = Qb+Qv*(1-0.2*(Pwf(22:end)/Pb)-0.8*(Pwf(22:end)/Pb).^2);
figure(1)
plot(Q,Pwf,'-o','linewidth',2)
grid on
xlabel('Q')
ylabel('P_w_f')
title('Construct IPR of a vertical well in an unsaturated oil')