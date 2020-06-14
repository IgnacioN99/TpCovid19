
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
## @deftypefn {} {@var{retval} =} polinomio (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Nacho <Nacho@NACH-DESKTOP>
## Created: 2020-06-04

function tabla = polinomio (datos,tipo,colorPunto,colorLinea)
  %incompleto
  dias=[0,2,3,6,8,10,12,20,34,36];
  a=polyfit(dias,datos,2)
 
  plot(dias,datos,colorPunto,'markersize',4,'markerfacecolor','r'), hold on;
  z=@(dias) polyval(a,dias);
  
  fplot(z,[dias(1),dias(end)],colorLinea),hold on;
  tabla={tipo,'a0','a1','a2'; '',a(3),a(2),a(1)}
  hold on;
endfunction
