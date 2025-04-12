clear, close all
%% a)
clc
n=0:12000;
x=sin(pi*n/6+2); % calculado teoricamente com f0/fs dentro do sin
% resultando em N=12;
soundsc(x,12e3)
%%
xd=x(1:3:end);
soundsc(xd,12e3)
%%
soundsc(xd,4e3)
%%
xe=upsample(x,4);
soundsc(xe,48e3)
%%
X=fft(xe(1:48)); % periodo 48
k=-24:23;
w=2*pi*k/48;
figure;
stem(w*24/pi,abs(fftshift(X)),'^')
xlabel('w*24/pi [rad]')
%%
h=4*fir1(20,1/4);
[H,w]=freqz(h,1);
figure;
plot(w*24e3/pi,abs(H)),grid
%%
ye=filter(h,1,xe);
soundsc(ye,48e3)
%%
figure;
plot((1:length(x))/12e3,x,'b',(1:length(ye))/48e3,ye,'r')
% fazer zoom, no eixo y =1
