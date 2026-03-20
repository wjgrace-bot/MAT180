clear;
clc;
addpath('C:\Users\wgleg\Downloads\attachments');

widths=3:1:23;
rates=linspace(0,.5,15);
[X,Y]=meshgrid(widths,rates);

for i =1:6
subplot(2,3,i);
Z=zeros(size(X));
parfor k=1:numel(X)
    summ=0;
    for j=1:9
        [a,~,~]=Neural(i,X(k),Y(k),10,rand());
        summ=summ+a;
    end
    Z(k)=summ/9;
    disp(k/15);
end
disp(i);
scatter(X(:),Y(:),8,Z(:),'filled');
xlabel('Width');
ylabel('Rate');
clim([.67,.85]);
colormap(turbo);
colorbar;
title(sprintf('%d hidden layers',i));
end