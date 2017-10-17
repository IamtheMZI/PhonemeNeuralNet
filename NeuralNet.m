%% Copyright (C) 2017 Muhammad Zian Ilahee%% %% This program is free software; you can redistribute it and/or modify it%% under the terms of the GNU General Public License as published by%% the Free Software Foundation; either version 3 of the License, or%% (at your option) any later version.%% %% This program is distributed in the hope that it will be useful,%% but WITHOUT ANY WARRANTY; without even the implied warranty of%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the%% GNU General Public License for more details.%% %% You should have received a copy of the GNU General Public License%% along with this program.  If not, see <http://www.gnu.org/licenses/>.%% -*- texinfo -*- %% @deftypefn {Function File} {@var{updated_weight} =} nn (@var{input}, @var{weight}, @var{output}, @var{learning_rate})%%%% @seealso{}%% @end deftypefn%% Author: Muhammad Zian Ilahee <iamthemzi@iamthemzi-server>%% Created: 2017-04-29% While iteration is less than or equal to 50 %    	Learning rate = 0.6% 	For input in n // i1=1 1 0 0,i2=0 0 1 1,i3= 1 0 0 0,i4=1 0 0 1%  		update weight% While iteration is between 51 and 75 %    	Learning rate = 0.5% 	For input in n // i1=1 1 0 0,i2=0 0 1 1,i3= 1 0 0 0,i4=1 0 0 1%  		update weight% While iteration is between 76 and 100 %    	Learning rate = 0.1% 	For input in n // i1=1 1 0 0,i2=0 0 1 1,i3= 1 0 0 0,i4=1 0 0 1%  		update weight% Declaration of Function% Usage: input is a 1xn vector%        weight is a nxp vector%        output is a 1xp vector%        learning_rate is a 1x1 vector% It returns the updated weight as updated_weight which is a 1xn vectorfunction [final_weight] = NeuralNet(input,weight,output)  inc = 1; % counter  while inc <=100 %counts upto 100    if (inc <= 50) % when counter is less than 50       ln = 0.6;    elseif (inc >50 && inc < 76)      ln = 0.5;    else      ln = 0.1;    end    weight = update_weight_once(input,weight,output,ln);    inc = inc + 1;  end  final_weight = weight;    find_distance(input, final_weight, output, 0.6);end