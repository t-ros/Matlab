function  Nflashes = disco_a_rodar(f0,fs,Ttot,teta0)
%function Nflashes = disco_a_rodar(f0,fs,Ttot,teta0)
%
%Disco a rodar à frequência de rotação de f0 Hz.
%Disco iluminado por luz estroboscópica com frequência de amostragem de fs flashes por segundo.
%Mostra apenas as posições do disco quando a luz acende.
%Mostra disco a rodar durante Ttot segundos.
%Ângulo inicial, teta0, pode ser especificado (default: pi/6)
%Devolve o nº de flashes (imagens) mostradas em Ttot segundos
%disco de raio 1:
teta=linspace(0,2*pi,61);
cx=cos(teta); cy=sin(teta); %abcissa e ordenada da ponta da marca
figure(1); subplot(2,1,1); plot(cx,cy,'.-'), axis equal %desenha circunferência
%marca vermelha no disco em teta0 (t=0)
if nargin<4, teta0=pi/6; end %posição inicial (por omissão pi/6).
hold on;
h=plot([0,cos(teta0)],[0,sin(teta0)],'r','LineWidth',2); %h: handle da marca
hold off
%Durante Ttot segundos vamos ver o disco a rodar
W0=2*pi*f0; %frequência de rotação do disco em rad/s
T=1/fs;
%período de amostragem (período dos flashes)
Nflashes = round(fs*Ttot); %Nº de eventos (flashes) em Ttot segundos
figure(1) %mostra a figura 1 em cima de todas as janelas: 1º flash em t=0.
drawnow %mostra (máximo frame-rate de cerca de 50 tramas por segundo)
tstart=tic; %começa agora!
for n=1:Nflashes
  tic
  t=n*T; % tempo atual.
  xr=cos(W0*t+teta0); yr=sin(W0*t+teta0); %Nova posição da marca
  set(h,'XData',[0,xr],'YData',[0,yr]); %altera a posição da marca
  dt=toc; %tempo desde o "tic".
  if dt < T, pause(T-dt); end %espera...
  figure(1); drawnow;  %mostra agora a nova posição no gráfico.
end
toc(tstart) %mostra tempo total decorrido
%Desenha ordenadas na figura 2: x(t)=sin(W0*t+teta0) e x[n]=sin(W0*n*T+teta0)
t=0:1/(100*f0):Ttot; %amostrar tempo contínuo a fs2=100*f0
n=0:Nflashes-1; tflash = n*T; %instantes dos flashes
subplot(2,1,2); plot(t,sin(W0*t+teta0),tflash,sin(W0*n*T+teta0),'o')
title('x[n]=sin(\Omega_0n\timesT+\theta_0)')
legend({'x(t)','x[n]'})