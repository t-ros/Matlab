function y = EulerODE(f, x, y0)
n = length(x);
y = zeros(1, n);
y(1) = y0;
h = x(2) - x(1);
for i = 1:n-1
    y(i+1) = y(i) + h * f(x(i), y(i));
end
end
