%% c)
clc, clear, close
x=@(n)(10+cos(2*pi*(n-500)/4000)+cos(2*pi*n/2000-pi/2));
n = -1000:1000; % analitico
plot(n,x(n+500))