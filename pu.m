function []=pu(mat,tit,strike,dip,length,width,depth)
% length width in kilometer

figure;
x=-100:100;
y=-100:100;
imagesc(x,y,mat);
axis xy;
xlabel('y (km)');ylabel('x (km)');
colorbar;
colormap jet;
amp=max(max(abs(mat)));
caxis([-amp,amp]);
title(tit);

% add origin
hold on;
plot(0,0,'ko');

% add fault
[~,c_p,c_s,~,c_l]=fault_proj(0,0,strike,dip,length,width,depth);
plot(c_p(:,2),c_p(:,1),'k');

% add strike
plot(c_s(:,2),c_s(:,1),'k--');

% add line of intersection
plot(c_l(:,2),c_l(:,1),'r-');

hold off;

fn=strrep(tit,'\','');
saveas(gcf,fn,'fig');
saveas(gcf,fn,'eps');
saveas(gcf,fn,'png');

end
