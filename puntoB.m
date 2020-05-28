dias=[0:9];
#Argentina

Muertes=xlsread('covid19.xlsx','Argentina','C2:C11');
Recuperado=xlsread('covid19.xlsx','Argentina','D2:D11');
Infectados=xlsread('covid19.xlsx','Argentina','B2:B11');
figure;
plot(dias,Muertes,'ro-'), hold on;
plot(dias,Infectados,'go-'),hold on;
plot(dias,Recuperado,'bo-'),title('Argentina');
legend('Muertos','Infectados','Recuperados','Location','northwest');
xticks(dias);
xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});
#Brasil
Muertes=xlsread('covid19.xlsx','Brasil','C2:C11');
Recuperado=xlsread('covid19.xlsx','Brasil','D2:D11');
Infectados=xlsread('covid19.xlsx','Brasil','B2:B11');figure;
plot(dias,Muertes,'ro-'), hold on;
plot(dias,Infectados,'go-'),hold on;
plot(dias,Recuperado,'bo-'), title('Brasil');
legend('Muertos','Infectados','Recuperados','Location','northwest');
xticks(dias);
xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});
#Chile
Muertes=xlsread('covid19.xlsx','Chile','C2:C11');
Recuperado=xlsread('covid19.xlsx','Chile','D2:D11');
Infectados=xlsread('covid19.xlsx','Chile','B2:B11');figure;
plot(dias,Muertes,'ro-'), hold on;
plot(dias,Infectados,'go-'),hold on;
plot(dias,Recuperado,'bo-'), title('Chile');
legend('Muertos','Infectados','Recuperados','Location','northwest');
xticks(dias);
xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});
#Suecia
Muertes=xlsread('covid19.xlsx','Suiza','C2:C11');
Recuperado=xlsread('covid19.xlsx','Suiza','D2:D11');
Infectados=xlsread('covid19.xlsx','Suiza','B2:B11');figure;
plot(dias,Muertes,'ro-'), hold on;
plot(dias,Infectados,'go-'),hold on;
plot(dias,Recuperado,'bo-'), title('Suecia');
legend('Muertos','Infectados','Recuperados','Location','northwest');
xticks(dias);
xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});