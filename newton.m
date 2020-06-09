

function coef = newton (x,y)
  M=zeros(length(x),length(x)+1);
  M(:,1)=x;
  M(:,2)=y;
  for j=1:length(x)-1 %columna
      for k=1:length(x)-j %fila
        M(k,j+2)=(M(k,j+1)-M(k+1,j+1))/(M(k,1)-M(k+j,1)); %realiza las operaciones y gurada datos en la matriz
      end
  end
  coef=(M(1,2:(length(x)+1)))';%matriz con los a
endfunction
