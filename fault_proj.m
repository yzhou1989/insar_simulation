function [cor,cor_p,cor_s,cor_sp]=fault_proj(xo,yo,strike,dip,length,width)
% projection fault plane on horizontal plane
% xo,yo, length, width in kilometer
% strike, dip in degree
% 
% Yong Zhou
% zy29@foxmail.com
% 2017-07-25

width_proj=width*cosd(dip);

% top left point
x1=xo+0.5*length*cosd(strike-180)+0.5*width_proj*cosd(strike-90);
y1=yo+0.5*length*sind(strike-180)+0.5*width_proj*sind(strike-90);
% top right point
x2=xo+0.5*length*cosd(strike)+0.5*width_proj*cosd(strike-90);
y2=yo+0.5*length*sind(strike)+0.5*width_proj*sind(strike-90);
% bottom right point
x3=xo+0.5*length*cosd(strike)+0.5*width_proj*cosd(strike+90);
y3=yo+0.5*length*sind(strike)+0.5*width_proj*sind(strike+90);
% bottom left point
x4=xo+0.5*length*cosd(strike-180)+0.5*width_proj*cosd(strike+90);
y4=yo+0.5*length*sind(strike-180)+0.5*width_proj*sind(strike+90);

% left point of strike line
x5=xo+2.5*length*cosd(strike-180);
y5=yo+2.5*length*sind(strike-180);
% right point of strike line
x6=xo+2.5*length*cosd(strike);
y6=yo+2.5*length*sind(strike);

% left point of strike pendicular line
x7=xo+4*length*cosd(strike-90);
y7=yo+4*length*sind(strike-90);
% right point of strike pendicular line
x8=xo+4*length*cosd(strike+90);
y8=yo+4*length*sind(strike+90);

cor=[x1,y1;x2,y2;x3,y3;x4,y4];
cor_p=[x1,y1;x2,y2;x3,y3;x4,y4;x1,y1];
cor_s=[x5,y5;x6,y6];
cor_sp=[x7,y7;x8,y8];

end