function [los_rep]=plot_disp(datafile,tit,stk,ind,strike,dip,length,width,depth)
% plot deformation of InSAR
% datafile input file, computed by edcmp2.exe of Rongjiang Wang
% tit string,title
% stk double, strike for Line of Sight
% ind double, incident angle base on vertical line for Line of Sight
% strike double, strike for fault plane
% dip double, dip for fault plane
% length double, length along strike
% width double, length along dip
%
% Yong Zhou
% zy29@foxmail.com
% 2017-07-25

data_struct=importdata(datafile,' ',3);
data=data_struct.data;

x=data(:,3);
y=data(:,4);
z=data(:,5);
los=xyz2los(x,y,z,stk,ind);

% x_rep=reshape(x,201,201);
% y_rep=reshape(y,201,201);
% z_rep=reshape(z,201,201);
los_rep=reshape(los,201,201);

% pu(x_rep,strcat(tit,'\_x'));
% pu(y_rep,strcat(tit,'\_y'));
% pu(z_rep,strcat(tit,'\_z'));
pu(los_rep,strcat(tit,'\_los'),strike,dip,length,width,depth);

end