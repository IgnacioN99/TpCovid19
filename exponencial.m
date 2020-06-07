## Copyright (C) 2020 Nacho
##
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} exponencial (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Nacho <Nacho@NACH-DESKTOP>
## Created: 2020-06-06


function tabla = exponencial (Infectados)
  figure
  dias=[{'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/03','03/05'}]
  x=[0,2,3,6,8,10,12,20,34,36];
  p=polyfit(x,log(Infectados),1);
  fprintf('exponente B= %2.3f\n',p(1));
  fprintf('coeficiente A = %3.3f\n',exp(p(2)));
  plot(x,Infectados,'ro','markersize',4,'markerfacecolor','r');hold on;
  z=@(x) exp(p(2))*exp(x*p(1));
  tabla={'Funcion exponencial','A','B';'',exp(p(2)),p(1)}
  fplot(z,[x(1),x(end)],'k-')
  xticks(x)
  xticklabels(dias)
  xlabel('Dias')
  ylabel('Personas')
  grid on
  legend({'Infectados','Ajuste Exponencial'},'Location','northwest')
endfunction
