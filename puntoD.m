dias=[{'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/03','03/05'}]
x=[0,2,3,6,8,10,12,20,34,36];
#Argentina
fprintf('Argentina\n')
y=xlsread('covid19.xlsx','Argentina','B2:B11')';
p=polyfit(x,log(y),1);
fprintf('exponente B= %2.3f\n',p(1));
fprintf('coeficiente A = %3.3f\n',exp(p(2)));
figure
plot(x,y,'ro','markersize',4,'markerfacecolor','r');hold on;
z=@(x) exp(p(2))*exp(x*p(1));
fplot(z,[x(1),x(end)],'k-')
xticks(x)
xticklabels(dias)
xlabel('Dias')
ylabel('Personas')
grid on
title('Ajuste Exponencial Argentina')
legend({'Infectados','Ajuste Exponencial'},'Location','northwest')

#Chile
fprintf('Chile\n')
y=xlsread('covid19.xlsx','Chile','B2:B11')';
p=polyfit(x,log(y),1);
fprintf('exponente B= %2.3f\n',p(1));
fprintf('coeficiente A = %3.3f\n',exp(p(2)));
figure
plot(x,y,'ro','markersize',4,'markerfacecolor','r');hold on
z=@(x) exp(p(2))*exp(x*p(1));
fplot(z,[x(1),x(end)],'k-')
xticks(x)
xticklabels(dias)
xlabel('Dias')
ylabel('Personas')
grid on
title('Ajuste Exponencial Chile')
legend({'Infectados','Ajuste Exponencial'},'Location','northwest')

#Suiza
y=xlsread('covid19.xlsx','Suiza','B2:B11')';
p=polyfit(x,log(y),1);
printf('Suiza\n');
fprintf('exponente B= %2.3f\n',p(1));
fprintf('coeficiente A = %3.3f\n',exp(p(2)));
figure
plot(x,y,'ro','markersize',4,'markerfacecolor','r');hold on
z=@(x) exp(p(2))*exp(x*p(1));
fplot(z,[x(1),x(end)],'k-')
xticks(x)
xticklabels(dias)
xlabel('Dias')
ylabel('Personas')
grid on
title('Ajuste Exponencial Suiza')
legend({'Infectados','Ajuste Exponencial'},'Location','northwest')

#Suiza
y=xlsread('covid19.xlsx','Brasil','B2:B11')';
p=polyfit(x,log(y),1);
printf('Brasil\n');
fprintf('exponente B= %2.3f\n',p(1));
fprintf('coeficiente A = %3.3f\n',exp(p(2)));
figure
plot(x,y,'ro','markersize',4,'markerfacecolor','r');hold on
z=@(x) exp(p(2))*exp(x*p(1));
fplot(z,[x(1),x(end)],'k-')
xticks(x)
xticklabels(dias)
xlabel('Dias')
ylabel('Personas')
grid on
title('Ajuste Exponencial Brasil')
legend({'Infectados','Ajuste Exponencial'},'Location','northwest')