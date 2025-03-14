clc, clear, close

% Sinal x 
Nx = 8; % Periodo x 
n=0:3*Nx-1;
angx = 2*pi/8; % angulo de x
x = sin((angx)*n); % 1º harmonico (H)
fx = 2*pi/Nx; % Frequencia fundamente (omega 0) em rads
subplot(6,1,1)
stem(n,x,'filled'); title('Sinal x[n]');

% Sinal y
Ny = 10; % Periodo y
n=0:3*Ny-1;
angy = 3*pi/5;
y = cos((angy)*n); % 3º H (3*frquencia fundamental)
fy = 2*pi/Ny; % Frequencia fundamente (omega 0) em rads
subplot(6,1,2)
stem(n,y,'filled'); title('Sinal y[n]');

% Sinal z
Nz = lcm(Nx,Ny); % Periodo z
n=0:3*Nz-1;
z = sin((angx)*n) + cos((angy)*n); % x 5º H e y 12º H
fz = 2*pi/Nz; 
subplot(6,1,3)
stem(n,z,'filled'); title('Sinal z[n]');
Hz1 = fx/fz; % harmonicos da função z
Hz2 = fy/fz;

%% Euler

% Sinal x 
Nx = 8; % Periodo x
n=0:Nx-1;
angx = 2*pi/8; % angulo de x
x = sin((angx)*n); % 1º harmonico (H)
akx = fft(x)/Nx;
subplot(6,1,4)
stem(n,abs(akx),'filled'); title('ak Sinal x[n]');

% Sinal y
Ny = 10; % Periodo y
n=0:Ny-1;
angy = 3*pi/5;
y = cos((angy)*n); % 3º H (3*frquencia fundamental)
aky = fft(y)/Ny;
subplot(6,1,5)
stem(n,abs(aky),'filled'); title('ak Sinal y[n]');

% Sinal z
Nz = lcm(Nx,Ny); % Periodo z
n=0:Nz-1;
z = sin((angx)*n) + cos((angy)*n); % x 5º H e y 12º H
akz = fft(z)/Nz;
subplot(6,1,6)
stem(n,abs(akz),'filled'); title('ak Sinal z[n]');



