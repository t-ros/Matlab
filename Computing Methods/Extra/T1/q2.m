clear, clc, close all
%% 2022/23 PL6B
I0=10; 
tau=2;
t=linspace(0,12,100);

I=@(t,w) I0*exp(-t./tau).*cos(w*t);

w1=input("Insira um valor para w1: ");
w2=input("Insira um valor para w2: ");

figure;
plot(t,I(t,w1),'r','LineWidth',2), hold on;
plot(t,I(t,w2),'--b','LineWidth',2);
title('Curvas de Corrente'); legend('Linha w1','Linha w2');
xlabel('t (segundos)'), ylabel('Corrente elétrica (A)'); 
grid on; hold off;