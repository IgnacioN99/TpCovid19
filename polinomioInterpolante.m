
y=[18,22,24,37,46,56,65,129,220,237]

x=[0,2,3,6,8,10,12,20,34,36];
pol=polyfit(x,y,length(x)-1);  % coeficientes del polinomio
xx=linspace(min(x),max(x));
yy=polyval(pol,xx);
plot(x,y,'.','markersize',20)
grid on
hold on,plot(xx,yy)