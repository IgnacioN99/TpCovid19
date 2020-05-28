#Creo un polinomio de Grado n=4 con polyfit(Supongo a mayor N mas exactitud(?))
dias=[0:9];
printf("Ecuacion tipo y=a0+a1*x+a2*x^2+a3*x^3+a4*x^4\n")
#Argentina
printf("Argentina \n");
#Muertes
y=xlsread('covid19.xlsx','Argentina','C2:C11')';
printf("An de Muertes\n");
a=polyfit(dias,y,2)
figure;
plot(dias,y,'rx','markersize',4,'markerfacecolor','r'), hold on;
z=@(dias) polyval(a,dias);
xticks(dias);
xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});
fplot(z,[dias(1),dias(end)],'b-'),hold on;
legend('Muertos','Curva de ajuste de grado 4','location','northwest');
title('Muertes Argentina');
xlabel('Dias');
ylabel('Muertos');
grid on
hold off;

###Infectados
##y=xlsread('covid19.xlsx','Argentina','B2:B11')';
##printf("An de Infectados\n");
##a=polyfit(dias,y,4)
##figure;
##plot(dias,y,'rs','markersize',4,'markerfacecolor','r'), hold on;
##z=@(dias) polyval(a,dias);
##xticks(dias);
##xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});
##fplot(z,[dias(1),dias(end)],'b-'),hold on;
##legend('Infectados','Curva de ajuste de grado 4','location','northwest');
##title('Infectados Argentina');
##xlabel('Dias');
##ylabel('Infectados');
##grid on;
##hold off;
##
###Recuperados
##y=xlsread('covid19.xlsx','Argentina','D2:D11')';
##printf("An de Recuperados\n");
##a=polyfit(dias,y,4)
##figure;
##plot(dias,y,'gs','markersize',4,'markerfacecolor','r'), hold on;
##z=@(dias) polyval(a,dias);
##xticks(dias);
##xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});
##fplot(z,[dias(1),dias(end)],'b-'),hold on;
##legend('Recuperados','Curva de ajuste de grado 4','location','northwest');
##title('Recuperados Argentina');
##xlabel('Dias');
##ylabel('Recuperados');
##grid on
##hold off;
##
##
##printf("Chile \n");
##
###Chile
##
###Muertes
##y=xlsread('covid19.xlsx','Chile','C2:C11')';
##printf("An de Muertes\n");
##a=polyfit(dias,y,4)
##figure;
##plot(dias,y,'rx','markersize',4,'markerfacecolor','r'), hold on;
##z=@(dias) polyval(a,dias);
##xticks(dias);
##xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});
##fplot(z,[dias(1),dias(end)],'b-'),hold on;
##legend('Muertos','Curva de ajuste de grado 4','location','northwest');
##title('Muertes Chile');
##xlabel('Dias');
##ylabel('Muertos');
##grid on
##hold off;
##
###Infectados
##y=xlsread('covid19.xlsx','Chile','B2:B11')';
##printf("An de Infectados\n");
##a=polyfit(dias,y,4)
##figure;
##plot(dias,y,'rs','markersize',4,'markerfacecolor','r'), hold on;
##z=@(dias) polyval(a,dias);
##xticks(dias);
##xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});
##fplot(z,[dias(1),dias(end)],'b-'),hold on;
##legend('Infectados','Curva de ajuste de grado 4','location','northwest');
##title('Infectados Chile');
##xlabel('Dias');
##ylabel('Infectados');
##grid on;
##hold off;
##
###Recuperados
##y=xlsread('covid19.xlsx','Chile','D2:D11')';
##printf("An de Recuperados\n");
##a=polyfit(dias,y,4)
##figure;
##plot(dias,y,'gs','markersize',4,'markerfacecolor','r'), hold on;
##z=@(dias) polyval(a,dias);
##xticks(dias);
##xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});
##fplot(z,[dias(1),dias(end)],'b-'),hold on;
##legend('Recuperados','Curva de ajuste de grado 4','location','northwest');
##title('Recuperados Chile');
##xlabel('Dias');
##ylabel('Recuperados');
##grid on
##hold off;
##
##
###Brasil
##printf("Brasil\n");
###Muertes
##y=xlsread('covid19.xlsx','Brasil','C2:C11')';
##printf("An de Muertes\n");
##a=polyfit(dias,y,4)
##figure;
##plot(dias,y,'rx','markersize',4,'markerfacecolor','r'), hold on;
##z=@(dias) polyval(a,dias);
##xticks(dias);
##xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});
##fplot(z,[dias(1),dias(end)],'b-'),hold on;
##legend('Muertos','Curva de ajuste de grado 4','location','northwest');
##title('Muertes Brasil');
##xlabel('Dias');
##ylabel('Muertos');
##grid on
##hold off;
##
###Infectados
##y=xlsread('covid19.xlsx','Brasil','B2:B11')';
##printf("An de Infectados\n");
##a=polyfit(dias,y,4)
##figure;
##plot(dias,y,'rs','markersize',4,'markerfacecolor','r'), hold on;
##z=@(dias) polyval(a,dias);
##xticks(dias);
##xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});
##fplot(z,[dias(1),dias(end)],'b-'),hold on;
##legend('Infectados','Curva de ajuste de grado 4','location','northwest');
##title('Infectados Brasil');
##xlabel('Dias');
##ylabel('Infectados');
##grid on;
##hold off;
##
###Recuperados
##y=xlsread('covid19.xlsx','Brasil','D2:D11')';
##printf("An de Recuperados\n");
##a=polyfit(dias,y,4)
##figure;
##plot(dias,y,'gs','markersize',4,'markerfacecolor','r'), hold on;
##z=@(dias) polyval(a,dias);
##xticks(dias);
##xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});
##fplot(z,[dias(1),dias(end)],'b-'),hold on;
##legend('Recuperados','Curva de ajuste de grado 4','location','northwest');
##title('Recuperados Brasil');
##xlabel('Dias');
##ylabel('Recuperados');
##grid on
##hold off;
##
##
###Suiza
##printf("Suiza\n")
###Muertes
##y=xlsread('covid19.xlsx','Suiza','C2:C11')';
##printf("An de Muertes\n");
##a=polyfit(dias,y,4)
##figure;
##plot(dias,y,'rx','markersize',4,'markerfacecolor','r'), hold on;
##z=@(dias) polyval(a,dias);
##xticks(dias);
##xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});
##fplot(z,[dias(1),dias(end)],'b-'),hold on;
##legend('Muertos','Curva de ajuste de grado 4','location','northwest');
##title('Muertes Suiza');
##xlabel('Dias');
##ylabel('Muertos');
##grid on
##hold off;
##
###Infectados
##y=xlsread('covid19.xlsx','Suiza','B2:B11')';
##printf("An de Infectados\n");
##a=polyfit(dias,y,4)
##figure;
##plot(dias,y,'rs','markersize',4,'markerfacecolor','r'), hold on;
##z=@(dias) polyval(a,dias);
##xticks(dias);
##xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});
##fplot(z,[dias(1),dias(end)],'b-'),hold on;
##legend('Infectados','Curva de ajuste de grado 4','location','northwest');
##title('Infectados Suiza');
##xlabel('Dias');
##ylabel('Infectados');
##grid on;
##hold off;
##
###Recuperados
##y=xlsread('covid19.xlsx','Suiza','D2:D11')';
##printf("An de Recuperados\n");
##a=polyfit(dias,y,4)
##figure;
##plot(dias,y,'gs','markersize',4,'markerfacecolor','r'), hold on;
##z=@(dias) polyval(a,dias);
##xticks(dias);
##xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});
##fplot(z,[dias(1),dias(end)],'b-'),hold on;
##legend('Recuperados','Curva de ajuste de grado 4','location','northwest');
##title('Recuperados Suiza');
##xlabel('Dias');
##ylabel('Recuperados');
##grid on
##hold off;