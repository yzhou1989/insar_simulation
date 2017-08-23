function [cor]=plot_ss_section(data,tit,strike,dip,length,width,depth)
% Yong Zhou
% zy29@foxmail.com
% 2017-07-25

[~,~,~,c_sp,~]=fault_proj(0,0,strike,dip,length,width,depth);
%c_sp=[-40,0;40,0];

cor=proj_point(c_sp,101);
[x,y]=meshgrid(-100:1:100,-100:1:100);
vq=interp2(x,y,data,cor(:,2),cor(:,1));

figure;
plot(cor(:,3),vq);
xlabel('Distance (km)');ylabel('Static Displacement (m)');

cor=[cor,vq];

fn=strrep(tit,'\','');
saveas(gcf,fn,'fig');
saveas(gcf,fn,'eps');
saveas(gcf,fn,'png');

end
