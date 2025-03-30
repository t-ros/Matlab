clc
%% diff(x)
x = [1 3 5 8 12 16 18];
p1 = x(1:end-1);
p2 = x(end);

fprintf('Função diff\n');
fprintf('Para x = [');
fprintf('%d ', p1);
fprintf('%d]\n', p2);

fprintf('diff(x)= [')
fprintf('%d ',diff(p1))
fprintf('%d]', diff(p2))
fprintf('\nSendo o resultado na forma: x(n) - x(n-1)\n')
% Ex: [x(2) – x(1), x(3) – x(2), …, x(n) – x(n−1)] 
%%
h = 0.2;
x = 1.2 : h : 1.8;
y = exp(-x).*sin(x/2); % f(x)
dy = diff(y)./h % (f(x(i)) – f(x(i-1)))/h

% Se os dados não forem igualmente espaçados, temos de calcular a distância 
% entre cada par de pontos, o que pode ser conseguido fazendo:
%>> diff(y)./diff(x);
%% polyder(p)
clc, clear
% A função polyder simplesmente diferenciar um polinómio representado na forma vetorial.
p = [2 0 -1 3];
polyder(p)
% p = 2x^3+ x + 3 => 6x^2-1


