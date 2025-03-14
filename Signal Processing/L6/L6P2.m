clc % limpar cmd window
%% a)
x=randi(9,[1,50]); % x comprimento 50
y=randi(9,[1,20]); % y comprimento 20
% Para z = x*y (convolver)
% Nz = Nx+Ny-1 = 50+20-1 = 69
z=conv(x,y);
figure;
stem(0:68,z,'filled'); % 0:68 -> 69 amostras
title('Conv. Linear com 69 amostras')
%% b)
z_c=real(ifft(fft(x,50).*fft(y,50)));
z_cc=cconv(x,y,50); % Sendo "50" o numero de amostras (pode ser alterado para qualquer valor maior ou igual ao Nx ou Ny)
figure;
stem(z_c,'r','filled'), hold on
stem(z_cc,'b','filled'), hold off
sum(abs(z_c-z_cc)) % O ERRO das duas soluções é 0.
% Os gráficos acabam por ficar sobrepostos pois são iguais
%% c)
z_c=real(ifft(fft(x,64).*fft(y,64)));
figure;
stem(z_c,'r','filled'), hold on % conv circular a vermelho
stem(z,'b','filled'), hold off % conv linear a azul
title('Conv. Circular vs Linear (65 vs 69 amostras)') 
% Mostram 5 amostras fora porque "69 > 65"
%% d)
z_c=real(ifft(fft(x,128).*fft(y,128)));
figure;
stem(z_c,'r','filled'), hold on % conv circular a vermelho
stem(z,'b','filled'), hold off % conv linear a azul
title('Conv. Circular vs Linear (128 vs 69 amostras)') 
%% e)
x=randn(1,1024);xx=real(ifft(fft(x).^2));
xxx=cconv(x,x,1024);
figure;
stem(xx,'r','filled'); hold on;
stem(xxx,'b','filled'); hold off;
% Só se vêm azuis, ou seja o resultado é a conv. circular dele próprio