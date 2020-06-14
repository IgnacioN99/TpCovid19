#Creo un polinomio de Grado n=4 con polyfit(Supongo a mayor N mas exactitud(?))
dias=[0,2,3,6,8,10,12,20,34,36];
x=[{'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/03','03/05'}]
printf("Ecuacion tipo y=a0+a1*x+a2*x^2")
#Argentina
printf("Argentina \n");
#Muertes
y=xlsread('covid19.xlsx','Argentina','C2:C11')';
figure;
xlswrite('covid19.xlsx',polinomio(y,'Muertes','rx','k-'),'Argentina','A17')
hold on;

#Infectados
y=xlsread('covid19.xlsx','Argentina','B2:B11')';
xlswrite('covid19.xlsx',polinomio(y,'Infectados','bx','r-'),'Argentina','A20')
hold on;

#Recuperados
y=xlsread('covid19.xlsx','Argentina','D2:D11')';
xlswrite('covid19.xlsx',polinomio(y,'Recuperados','gx','b-'),'Argentina','A24')
xticks(dias)
xticklabels(x)
title('Argentina');
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
figure;
y=xlsread('covid19.xlsx','Chile','C2:C11')';
xlswrite('covid19.xlsx',polinomio(y,'Muertes','rx','k-'),'Chile','A17')
hold on;

#Infectados
y=xlsread('covid19.xlsx','Chile','B2:B11')';
xlswrite('covid19.xlsx',polinomio(y,'Infectados','bx','r-'),'Chile','A20')
hold on;

#Recuperados
y=xlsread('covid19.xlsx','Chile','D2:D11')';
xlswrite('covid19.xlsx',polinomio(y,'Recuperados','gx','b-'),'Chile','A24')
title('Chile');
xticks(dias)
xticklabels(x)
xlabel('Dias');
ylabel('cantPersonas');
grid on
hold on;
legend({'Muertos','CurvaAjusteMuertos','Infectados','CurvaAjusteInfectados','Recuperados','CurvaAjusteRecuperados'},'Location','northwest');

###Brasil
printf("Brasil\n");
#Muertes
y=xlsread('covid19.xlsx','Brasil','C2:C11')';
figure;
y=xlsread('covid19.xlsx','Brasil','C2:C11')';
xlswrite('covid19.xlsx',polinomio(y,'Muertes','rx','k-'),'Brasil','A17')
hold on;

#Infectados
y=xlsread('covid19.xlsx','Brasil','B2:B11')';
xlswrite('covid19.xlsx',polinomio(y,'Infectados','bx','r-'),'Brasil','A20')
hold on;

#Recuperados
y=xlsread('covid19.xlsx','Brasil','D2:D11')';
xlswrite('covid19.xlsx',polinomio(y,'Recuperados','gx','b-'),'Brasil','A24')
title('Brasil');
xticks(dias)
xticklabels(x)
xlabel('Dias');
ylabel('cantPersonas');
grid on
hold on;
legend({'Muertos','CurvaAjusteMuertos','Infectados','CurvaAjusteInfectados','Recuperados','CurvaAjusteRecuperados'},'Location','northwest');
##Suiza
printf("Suiza\n")
#Muertes
y=xlsread('covid19.xlsx','Suiza','C2:C11')';
figure;
xlswrite('covid19.xlsx',polinomio(y,'Muertes','rx','k-'),'Suiza','A17')
hold on;

#Infectados
y=xlsread('covid19.xlsx','Suiza','B2:B11')';
xlswrite('covid19.xlsx',polinomio(y,'Infectados','bx','r-'),'Suiza','A20')
hold on;

#Recuperados
y=xlsread('covid19.xlsx','Suiza','D2:D11')';
xlswrite('covid19.xlsx',polinomio(y,'Recuperados','gx','b-'),'Suiza','A24')
title('Suiza');
xticks(dias)
xticklabels(x)
xlabel('Dias');
ylabel('cantPersonas');
grid on
hold on;
legend({'Muertos','CurvaAjusteMuertos','Infectados','CurvaAjusteInfectados','Recuperados','CurvaAjusteRecuperados'},'Location','northwest');
