% This is fonction to display filtered signal 

function Output(dataOutx,dataOuty,dataOutz,data_mask,i,imax)

figure(2);

for j = i:imax
    subplot(4,3,j)
    
    X = dataOutx(j,1:end);
    Y = dataOuty(j,1:end);
    Z = dataOutz(j,1:end);
    plot((0:numel(X)-1)/80,[X' Y' Z']);
    xlabel('t/s');
    ylabel('Vacc');
   
    title(['Acc' num2str(j)] );
end 

subplot(4,3,12)
plot(data_mask);
title('Mask' );
