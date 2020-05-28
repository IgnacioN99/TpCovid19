x=[0,2,3,6,8,10,12,20,34,36];
y=xlsread('covid19.xlsx','Argentina','B2:B11')';
p=polyfit(x,log(y),1);
fprintf('exponente B= %2.3f\n',p(1));
fprintf('coeficiente A = %3.3f\n',exp(p(2)));

hold on
plot(x,y,'ro','markersize',4,'markerfacecolor','r')
z=@(x) exp(p(2))*exp(x*p(1));
fplot(z,[x(1),x(end)],'k-')
xlabel('Dias')
ylabel('Personas')
grid on
title('Ajuste Exponencial Argentina')
legend({'Infectados','Ajuste Exponencial'},'Location','northwest')
annotation('textbox',[0.875 0.2 0.2 0.2],'string',{'Y='+p(1)+'e^'+p(2)+'x'},'edgecolor','w','linewidth',0,'fitboxtotext','off');
hold off