y=xlsread('covid19.xlsx','Argentina','B18:D18')';
D=@(x)y(1)+y(2)*x+y(3)*x^2
dD=@(x) (D(x+1)-D(x-1))/2%Considero h=1 debido a que mi polinomio se basa en dias, es decir que su distancia entre datos es 1
dD(0)