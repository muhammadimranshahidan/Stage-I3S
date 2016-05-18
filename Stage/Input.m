% This is fonction to display original signal 

function Input(dataInx,dataIny,dataInz,data_mask)

figure(1);

for j = 1:10
    subplot(4,3,j)
    X = dataInx(j,1:end);
    Y = dataIny(j,1:end);
    Z = dataInz(j,1:end);
    plot((0:numel(X)-1)/80,[X' Y' Z']);
    xlabel('t/s');
    ylabel('Vacc');
    title(['Acc' num2str(j)] );
end 

subplot(4,3,12)
plot(data_mask);
title('Mask' );
