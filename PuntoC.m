#Creo un polinomio de Grado n=4 con polyfit(Supongo a mayor N mas exactitud(?))
dias=[0,2,3,6,8,10,12,20,34,36];
printf("Ecuacion tipo y=a0+a1*x+a2*x^2")
#Argentina
printf("Argentina \n");
#Muertes
y=xlsread('covid19.xlsx','Argentina','C2:C11')';
printf("An de Muertes\n");
a=polyfit(dias,y,2)
figure;
plot(dias,y,'rx','markersize',4,'markerfacecolor','r'), hold on;
z=@(dias) polyval(a,dias);
fplot(z,[dias(1),dias(end)],'b-'),hold on;
xlabel('Dias');
ylabel('Muertos');
grid on
hold on;

#Infectados
y=xlsread('covid19.xlsx','Argentina','B2:B11')';
printf("An de Infectados\n");
a=polyfit(dias,y,2)
plot(dias,y,'bs','markersize',4,'markerfacecolor','b'), hold on;
z=@(dias) polyval(a,dias);
fplot(z,[dias(1),dias(end)],'r-'),hold on;
xlabel('Dias');
ylabel('Infectados');
grid on;
hold on;

#Recuperados
y=xlsread('covid19.xlsx','Argentina','D2:D11')';
printf("An de Recuperados\n");
a=polyfit(dias,y,2)
plot(dias,y,'gs','markersize',4,'markerfacecolor','g'), hold on;
z=@(dias) polyval(a,dias);
fplot(z,[dias(1),dias(end)],'k-'),hold on;
title('Argentina');
xlabel('Dias');
ylabel('cantPersonas');
grid on
hold on;
legend({'Muertos','CurvaAjusteMuertos','Infectados','CurvaAjusteInfectados','Recuperados','CurvaAjusteRecuperados'},'Location','northwest');


printf("Chile \n");;
##
###Chile
##
#Muertes
y=xlsread('covid19.xlsx','Chile','C2:C11')';
printf("An de Muertes\n");
a=polyfit(dias,y,2)
figure;
plot(dias,y,'rx','markersize',4,'markerfacecolor','r'), hold on;
z=@(dias) polyval(a,dias);
fplot(z,[dias(1),dias(end)],'b-'),hold on;
xlabel('Dias');
ylabel('Muertos');
grid on
hold on;

#Infectados
y=xlsread('covid19.xlsx','Chile','B2:B11')';
printf("An de Infectados\n");
a=polyfit(dias,y,2)
plot(dias,y,'bs','markersize',4,'markerfacecolor','b'), hold on;
z=@(dias) polyval(a,dias);
fplot(z,[dias(1),dias(end)],'r-'),hold on;
xlabel('Dias');
ylabel('Infectados');
grid on;
hold on;

#Recuperados
y=xlsread('covid19.xlsx','Chile','D2:D11')';
printf("An de Recuperados\n");
a=polyfit(dias,y,2)
plot(dias,y,'gs','markersize',4,'markerfacecolor','g'), hold on;
z=@(dias) polyval(a,dias);
fplot(z,[dias(1),dias(end)],'k-'),hold on;
title('Chile');
xlabel('Dias');
ylabel('cantPersonas');
grid on
hold on;
legend({'Muertos','CurvaAjusteMuertos','Infectados','CurvaAjusteInfectados','Recuperados','CurvaAjusteRecuperados'},'Location','northwest');
##
##
###Brasil
printf("Brasil\n");
#Muertes
y=xlsread('covid19.xlsx','Brasil','C2:C11')';
printf("An de Muertes\n");
a=polyfit(dias,y,2)
figure;
plot(dias,y,'rx','markersize',4,'markerfacecolor','r'), hold on;
z=@(dias) polyval(a,dias);
fplot(z,[dias(1),dias(end)],'b-'),hold on;
xlabel('Dias');
ylabel('Muertos');
grid on
hold on;

#Infectados
y=xlsread('covid19.xlsx','Brasil','B2:B11')';
printf("An de Infectados\n");
a=polyfit(dias,y,2)
plot(dias,y,'bs','markersize',4,'markerfacecolor','b'), hold on;
z=@(dias) polyval(a,dias);
fplot(z,[dias(1),dias(end)],'r-'),hold on;
xlabel('Dias');
ylabel('Infectados');
grid on;
hold on;

#Recuperados
y=xlsread('covid19.xlsx','Brasil','D2:D11')';
printf("An de Recuperados\n");
a=polyfit(dias,y,2)
plot(dias,y,'gs','markersize',4,'markerfacecolor','g'), hold on;
z=@(dias) polyval(a,dias);
fplot(z,[dias(1),dias(end)],'k-'),hold on;
title('Brasil');
xlabel('Dias');
ylabel('cantPersonas');
grid on
hold on;
legend({'Muertos','CurvaAjusteMuertos','Infectados','CurvaAjusteInfectados','Recuperados','CurvaAjusteRecuperados'},'Location','northwest');
##
##
###Suiza
printf("Suiza\n")
#Muertes
y=xlsread('covid19.xlsx','Suiza','C2:C11')';
printf("An de Muertes\n");
a=polyfit(dias,y,2)
figure;
plot(dias,y,'rx','markersize',4,'markerfacecolor','r'), hold on;
z=@(dias) polyval(a,dias);
fplot(z,[dias(1),dias(end)],'b-'),hold on;
xlabel('Dias');
ylabel('Muertos');
grid on
hold on;

#Infectados
y=xlsread('covid19.xlsx','Suiza','B2:B11')';
printf("An de Infectados\n");
a=polyfit(dias,y,2)
plot(dias,y,'bs','markersize',4,'markerfacecolor','b'), hold on;
z=@(dias) polyval(a,dias);
fplot(z,[dias(1),dias(end)],'r-'),hold on;
xlabel('Dias');
ylabel('Infectados');
grid on;
hold on;

#Recuperados
y=xlsread('covid19.xlsx','Suiza','D2:D11')';
printf("An de Recuperados\n");
a=polyfit(dias,y,2)
plot(dias,y,'gs','markersize',4,'markerfacecolor','g'), hold on;
z=@(dias) polyval(a,dias);
fplot(z,[dias(1),dias(end)],'k-'),hold on;
title('Suiza');
xlabel('Dias');
ylabel('cantPersonas');
grid on
hold on;
legend({'Muertos','CurvaAjusteMuertos','Infectados','CurvaAjusteInfectados','Recuperados','CurvaAjusteRecuperados'},'Location','northwest');