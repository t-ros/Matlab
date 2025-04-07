%% 2022/23 PL6B
clear, clc, close all
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
%%  2021/22 PL5A
clear, clc, close all
E0=8.854*10^-12;
Q=1;
x=linspace(-10,10,100);
V=@(x0) Q/(4*pi*E0)*sqrt((x-x0).^2+(x.^2+1).^2);
x1=input('Indique a posição 1 da carga Q (x1): ');
x2=input('Indique a posição 1 da carga Q (x2): ');
while(x1==x2)
    fprintf('\nAs posições x1 e x2 devem ser diferentes!')
    fprintf('\nIndique outro valor para x2');
    x2=input('\nIndique a posição 1 da carga Q (x2): ');
end

figure;
plot(x,V(x1),'b'), hold on;
plot(x,V(x2),'r');
grid on;
legend('curva x1','curva x2');
xlabel('x (metros)'), ylabel('Potencial elétrico (V)');
hold off