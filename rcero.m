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
## @deftypefn {} {@var{retval} =} rcero (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Nacho <Nacho@NACH-DESKTOP>
## Created: 2020-06-12

function tabla = rcero (rango)
  beta=[0.05 0.9]
  gama=[0.05 0.5]
  r0Min=@(t) beta(1)/(gama(2)+t)
  r0Max=@(t) beta(2)/(gama(1)+t);
  alfa=xlsread('covid19.xlsx','Decesos',rango)
  tabla=zeros(length(alfa),2)
  for(i=1:length(alfa))
    tabla(i,1)=r0Max(alfa(i))
    tabla(i,2)=r0Min(alfa(i))
  endfor
  figure;
  plot(alfa,r0Min(alfa),'-ko')
  hold on;
  plot(alfa,r0Max(alfa),'-ro')
endfunction
