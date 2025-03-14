%% a)
clc, close, clear
x=zeros(1,100);
x(1:5)=1;
x(97:100)=1;
ak=fft(x)/100;
k=-50:49;
subplot(2,1,1)
stem(k,real(fftshift(ak)), 'filled'), title('Sinal'), grid % função sinc
%% c)
clc
x1=real(ifft(ak)*100);
sum(abs(x-x1))
%% d)
clc
w1=2*pi*k/100;
w=linspace(-pi,pi,1001);
H=sin(9*w/2)./(sin(w/2));
H(isnan(H))=9;
subplot(2,1,2)
plot(w1,real(fftshift(ak))*100,'o',w,H),title('X_1(e^j^w)'), grid
