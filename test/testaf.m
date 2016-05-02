% Load data
load readacc.mat;

fs = 80;

figure
subplot(311);
plot((0:numel(ax)-1)/fs,ax(1,:),'k');
ylabel('Template 1');
grid on
