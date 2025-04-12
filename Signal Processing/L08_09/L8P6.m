% Problema 6
clear, clc, close all

x=[3,4,5,2,-1,-2,0,1,1,2],n=0:9;
stem(n,x,'filled')
xx=[x;x];xx=xx(:)';
nn=[0,n(2:end);n(2:end),n(end)+1];nn=nn(:)';
hold on
plot(nn,xx,'LineWidth',2)
plot(n,x,'LineWidth',1)
hold off
axis([0,10,-3,6])
legend({'$x[n]$','ZOH','Linear'},'interpreter','latex')
xlabel('$n$','interpreter','latex')
set(gca,'FontSize',12)