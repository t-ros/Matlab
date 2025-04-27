function y = HeunODE(f, x, y0)
n = length(x);
y = zeros(1, n);
y(1) = y0;
h = x(2) - x(1);
for i = 1:n-1
    k1 = f(x(i), y(i));
    k2 = f(x(i)+h, y(i)+h*k1);
    y(i+1) = y(i) + (h/2)*(k1+k2);
end
end
