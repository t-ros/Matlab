clc, clear, close all
%% a)
x=[1,-1,-2,0,3,5,4,-4,9,-9,-1,-2,5,6,-6,0,-1,3];
N=20;
h=N*fir1(200,1/N); % Filtro interpolador
stem(0:200,h,'filled')
figure
[H,w]=freqz(h,1);
plot(w/pi,abs(H)), grid
%% b)
xe=upsample(x,N);
figure;
stem(xe, 'filled')
%% c)
figure;
ye=conv(xe,h,'same');
plot(0:359,ye,0:359,xe,'o')
%% d)
figure;
hold on
plot(0:359,ye)
stem(0:N:359,x,'filled')
hold off