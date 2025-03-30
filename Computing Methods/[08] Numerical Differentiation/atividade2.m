clc, clear, close all
%% Script para cálculo da derivada usando a extrapolação de Richardson
func_str = input('Indique a função f(x) a diferenciar: ', 's');
f = str2func(['@(x)', func_str]);

x_value = input('Indique o valor de x: ');
h = input('Indique o valor do passo h: ');

df = richardson(f, x_value, h);

fprintf('Cálculo numérico da derivada\n');
fprintf('f''(%.2f) = %.6f\n', x_value, df);
