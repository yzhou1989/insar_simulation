function [xs,ys,zs]=refcor(depth,length,width,strike,dip)
% compute reference cordination for edcmp2.exe
% depth, length, width in meter
% strike, dip, rake in degree
% x is northward, y is eastward, z is downward
% Yong Zhou
% 2017-07-25

xo=0;yo=0;zo=depth;

zs=zo-0.5*width*sind(dip);

x=xo+0.5*length*cosd(strike-180);
y=yo+0.5*length*sind(strike-180);

xs=x+0.5*width*cosd(dip)*cosd(strike-90);
ys=y+0.5*width*cosd(dip)*sind(strike-90);

end