%% 2022/23 PL6B
[x, y]=meshgrid(linspace(-10,10,100),linspace(-6,6,100));
z=exp(-x.*y/25).*sin(0.5*x-y);
%% 2021/22 PL5A
[x,y]=meshgrid(linspace(-3,3,100),linspace(-3,3,100));
z=(1-(x.^2+y.^2)).*exp(-(x.^2+y.^2)/3);
%% 2021/22 PL7A
[x,y]=meshgrid(linspace(0,150,1000),linspace(0,150,1000));
z=x.*cos(2*pi*x/50).*cos(2*pi*y/50);
%% 2021/22 PL8A
[x,y]=meshgrid(linspace(-5,5,100),linspace(-5,5,100));
z=abs(x+y).*sin(x/2).*cos(y)./(x-20);
%% 2021/22 PL6A
[x,y]=meshgrid(linspace(-2.1,2.1,100),linspace(-6,6,100));
z=80*y.^2*exp(-x.^2-0.3*y.^2);
%% Construção gráfica
clc; close all; figure;

subplot(1,3,3);
contour(x,y,z,'ShowText', 'on'), title('Curvas de Nível'), xlabel('xx'), ylabel('yy'), grid on;
subplot(1,3,2);
mesh(x,y,z), title('Mesh'), xlabel('xx'), ylabel('yy'), zlabel('zz');
subplot(1,3,1);
surf(x,y,z), title('Surf'), xlabel('xx'), ylabel('yy'), zlabel('zz');