function [cor]=proj_point(se_point,n)

scale=linspace(0,1,n)';
x=se_point(1,1)+scale.*(se_point(2,1)-se_point(1,1));
y=se_point(1,2)+scale.*(se_point(2,2)-se_point(1,2));
dist=sign(x).*sqrt(x.^2+y.^2);

cor=[x,y,dist];

end