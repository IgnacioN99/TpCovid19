dias=[{'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/03','03/05'}]
x=[0,2,3,6,8,10,12,20,34,36];
#Argentina
fprintf('Argentina\n')
Infectados=xlsread('covid19.xlsx','Argentina','B2:B11')';
xlswrite('covid19.xlsx',exponencial(Infectados),'Argentina','A27')
title('Ajuste exponencial Argentina')
hold off


###Chile
fprintf('Chile\n')
Infectados=xlsread('covid19.xlsx','Chile','B2:B11')';
xlswrite('covid19.xlsx',exponencial(Infectados),'Chile','A27')
title('Ajuste exponencial Chile')
hold off
##
###Suiza
fprintf('Suiza\n')
Infectados=xlsread('covid19.xlsx','Suiza','B2:B11')';
xlswrite('covid19.xlsx',exponencial(Infectados),'Suiza','A27')
title('Ajuste exponencial Suiza')
hold off
##
###Brasil
fprintf('Brasil')
Infectados=xlsread('covid19.xlsx','Brasil','B2:B11')';
xlswrite('covid19.xlsx',exponencial(Infectados),'Brasil','A27')
title('Ajuste exponencial Brasil')
hold off
