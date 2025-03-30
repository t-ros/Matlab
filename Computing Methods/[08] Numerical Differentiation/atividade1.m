clc, clear, close all
%%
f = @(x) (exp(-0.5 .* x) .* sin(2 .* x).^2) ./ (x + 4).^2; 
a = 0;
b = 3;
N = 61;

[df_forward, X_forward] = NumDiff(f, a, b, N, 'forward');
[df_backward, X_backward] = NumDiff(f, a, b, N, 'backward');
[df_central, X_central] = NumDiff(f, a, b, N, 'central');

figure;
hold on;
plot(X_forward, df_forward, 'r', 'LineWidth', 1.5, 'DisplayName', 'forward');
plot(X_backward, df_backward, 'b', 'LineWidth', 1.5, 'DisplayName', 'backward');
plot(X_central, df_central, 'y', 'LineWidth', 1.5, 'DisplayName', 'central');
hold off;

xlabel('xx');
ylabel('df/dx');
title('Atividade 1');
legend('Location', 'best');
grid on;
