function []=pu(mat,tit,strike,dip,length,width)
% length width in kilometer

figure;
x=-100:100;
y=-100:100;
imagesc(x,y,mat);
axis xy;
xlabel('y (km)');ylabel('x (km)');

amp=max(max(abs(mat)));
caxis([-amp,amp]);
colorbar;
title(tit);

% add origin
hold on;
plot(0,0,'ko');

% add fault
[~,c_p,c_s,~]=fault_proj(0,0,strike,dip,length,width);
plot(c_p(:,2),c_p(:,1),'k');

% add strike
plot(c_s(:,2),c_s(:,1),'k--');

hold off;

fn=strrep(tit,'\','');
saveas(gcf,fn,'fig');
saveas(gcf,fn,'eps');
saveas(gcf,fn,'png');

end