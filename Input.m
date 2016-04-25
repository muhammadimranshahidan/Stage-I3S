% This is fonction to display original signal 

function Input(dataInx,dataIny,dataInz,data_mask,acc,acc_max)

figure(1);

for j = acc:acc_max
    subplot(4,3,j)
    
    X = dataInx(j,1:end);
    Y = dataIny(j,1:end);
    Z = dataInz(j,1:end);
    plot([X' Y' Z']);
    title(['Acc' num2str(j)] );
end 

subplot(4,3,12)
plot(data_mask);
title('Mask' );
