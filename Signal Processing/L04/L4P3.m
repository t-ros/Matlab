clc, clear, close all
%% a)
pulso=@(n,N)(abs(n)<=N)*1;
n=-25:25;
figure;
subplot(3,1,1)
stem(n, pulso(n,5), 'filled'), title("1) n=-5:5 ");
subplot(3,1,2)
stem(n, pulso(n,10), 'filled'), title("2) n=-10:10");
subplot(3,1,3)
stem(n, pulso(n,20), 'filled'), title("3) n=-20:20");
%%
pulso_F=@(w,N)sin((2*N+1)*w/2)./sin(w/2);
w=linspace(-pi,pi,1001);
H1=pulso_F(w,5);
H1(isnan(H1))=11;
H2=pulso_F(w,10);
H2(isnan(H1))=21;
H3=pulso_F(w,20);
H3(isnan(H1))=41;
%subplot(4,1,4)
figure;
plot(w,H1,'r',w,H2,'g',w,H3,'b'), title("Gráficos DTFT"); grid;
legend('N = 5','N = 10','N = 20')

