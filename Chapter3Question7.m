%Behrad Bolkhari     Student Number:9919653       Dr Mahdi Imanian
clc
clear
close all

Jp = 0.0004;

Pe = [3000 2500 2000 1500 1000];
C = {'-or','-og','-ob','-om','-oc'};

for i = 1:length(Pe)
    Pwf = Pe(i):-100:0;
    J = Jp*Pe(i)/3000;
    Q = J*(Pe(i)^2-Pwf.^2);
    plot(Q,Pwf,C{i},'linewidth',2)
    hold on
    grid on
end
legend('P_e = 3000','P_e = 2500','P_e = 2000','P_e = 1500','P_e = 1000')