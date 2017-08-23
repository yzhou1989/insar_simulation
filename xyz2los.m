function [los]=xyz2los(x,y,z,strike,ind)
% xyz data to los
% x, y, z can be vector
% strike based on northward
% ind based on vertical line
%
% Yong Zhou
% zy29@foxmail.com
% 2017-07-25

hor=x.*cosd(strike-270)+y.*sind(strike-270);
los=-z.*cosd(ind)-hor.*sind(ind);

end