%% b)
close
N=1000;
n=0:2*N;
% Substituir
sinu1 = cos((4*pi*n)/N)
sinu2 = sin((6*pi*n)/N)
% Função
x=(2/5)*sinu1 - (3/5)*sinu2;
% Plot
stem(n,x)
%% c) e d) (zoom)
close
k=0:N-1;
ak=fft(x,N)/N;
stem(k,abs(ak),'filled')
%% e) 
close
wn =k*2*pi/N;
stem(wn,abs(ak),'^')
%% f)
close
k=-N/2:N/2-1;
w=2*pi*k/N;
stem(w,2*pi*abs(fftshift(ak)),'^')
%% g)
close
n=0:N-1;
x =(2/5)*cos((4*pi/N*n+pi/4) - sin(6*pi/N*n+pi/4)/N);
bk = fft(x)/N;
bk(abs(bk)<1e-10)=0; % para retirar os erros de arredondamento dos bk
subplot(2,1,1)
stem(n, abs(bk), 'filled'),title('Módulo'), grid
subplot(2,1,2)
stem(n, angle(bk)/pi, 'filled'),title('Fase'), grid
