%% Problema 2
%% a)
clear
num=[1 -3/2]; den=[1 -5/6 1/6];
h1=impz(num,den,20);
n=0:19;
h=7*(1/3).^n-6*(1/2).^n;
hold on
stem(n,h1,'filled')
stem(n,h,'filled')
hold off
%% b)
impulso=filter(num,den,[1 zeros(1,19)]);
hold on
stem(n,impulso,'filled')
stem(n,h,'filled')
hold off
%%
n1=0:1;
n2=0:2;
[X w]=freqz(num,den);
X1=freqz((0.8).^-n1.*num,(0.8).^-n2.*den);
X2=freqz((2).^-n1.*num,(2).^-n2.*den);
X3=freqz((1.2).^-n1.*num,(1.2).^-n2.*den);
plot(w,abs(X1),w,abs(X),w,abs(X3),w,abs(X2)),grid
legend('r = 0.8','r = 1','r= 1.2','r = 2')
%% a alinea e) é importante para o teste