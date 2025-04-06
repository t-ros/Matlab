%% 2022/23 PL6B
x=linspace(-10,10,100);
y=linspace(-6,6,100);
[x, y]=meshgrid(x,y);

z = exp(-x.*y/25).*sin(0.5*x-y);
%% Construção gráfica
clc; close all; figure;

subplot(1,2,1);
contour(x,y,z,'ShowText', 'on'), title('Representação das Curvas de Nível'), xlabel('xx'), ylabel('yy'), grid on;
subplot(1,2,2);
mesh(x,y,z), title('Gráfico de Superfície'), xlabel('xx'), ylabel('yy'), zlabel('zz');