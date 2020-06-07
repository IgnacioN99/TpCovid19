y=xlsread('covid19.xlsx','Argentina','B18:D18')';
dias=[0,2,3,6,8,10,12,20,34,36];
D=@(x)y(1)+y(2)*x+y(3)*x^2
dD=@(x) (D(x+1)-D(x-1))/2%Considero h=1 debido a que mi polinomio se basa en dias, es decir que su distancia entre datos es 1
expe=xlsread('covid19.xlsx','Argentina','B28:C28')';
tablaDatos=zeros(length(dias),3)
I=@(t) expe(1)*exp(expe(2)*t)
for(i=1:length(dias))
  tablaDatos(i,1)=dD(dias(i))
  tablaDatos(i,2)=I(dias(i))
  tablaDatos(i,3)=tablaDatos(i,1)/tablaDatos(i,2)
end
xlswrite('covid19.xlsx',tablaDatos,'Decesos','A3')
