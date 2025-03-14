clc, clear, close
% Valores a alterar
n1 = 25; 
n2 = 35;
n3 = 45;
% Angulos
ang1 = 2*pi/n1;
ang2 = 2*pi/n2;
ang3 = 2*pi/n3;
% Periodo e Dimensão
N = lcm(lcm(n1, n2),n3);
n=0:N-1;
% Função
x = cos(ang1*n) + sin(ang2*n) + cos(ang3*n);
% Calculo dos aks
akx = fft(x)/N;
% Plot do grafico
stem(n,abs(akx),'filled'); title('ak x');
% Para calcularmos os harmonicos
disp('Harmonicos:')
disp(N/n1),disp(N/n2), disp(N/n3)