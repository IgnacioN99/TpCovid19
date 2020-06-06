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
## @deftypefn {} {@var{retval} =} grafico (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Nacho <Nacho@NACH-DESKTOP>
## Created: 2020-06-04

function null = grafico (Muertes,Infectados,Recuperados,pais)
dias=[0,2,3,6,8,10,12,20,34,36];
plot(dias,Muertes,'ro-'), hold on;
plot(dias,Infectados,'go-'),hold on;
plot(dias,Recuperados,'bo-'), title(pais);
legend('Muertos','Infectados','Recuperados','Location','northwest');
xticks(dias);
xticklabels({'28/03','30/03','31/03','03/04','05/04','07/04','09/04','17/04','01/05','03/05'});
grid off
endfunction
