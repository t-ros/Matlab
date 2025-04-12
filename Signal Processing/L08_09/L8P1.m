clc,clear,close all
%% c)
N0=5;
n=0:499;
x=1+2*cos(2*pi/5*n) +cos(4*pi/5*n);
stem(n,x,'filled');
%% d
fs=50;
Nfft1=500;
Nfft2=512;
Nfft3=4096;

X1=fft(x,Nfft1);
X2=fft(x,Nfft2);
X3=fft(x,Nfft3);
figure;
k=(0:Nfft1/2);f1=k*fs/Nfft1; subplot(3,1,1);plot(f1,abs(X1(k+1)))
k=(0:Nfft2/2);f2=k*fs/Nfft2; subplot(3,1,2);plot(f2,abs(X2(k+1)))
k=(0:Nfft3/2);f3=k*fs/Nfft3; subplot(3,1,3);plot(f3,abs(X3(k+1)))