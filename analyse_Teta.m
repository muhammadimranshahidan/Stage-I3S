load process_Mask.mat
load process_teta.mat
load fil.mat 

% Original signal and filtered signal of accelerometer - D 
figure (1)
subplot(211)
affich(dataOutTeta,fe,0)
title('Original Acc - Teta ')

subplot(212)
affich(dataTeta_F,fe,0)
title('Filtered Acc - Teta ')

% Acc AC signal and Mask AC signal - D
figure (2)
subplot(211)
affich(dataTeta_AC,fe,0)
title('AC Acc - Teta')

subplot(212)
affich(dataMaskAC,fe,1)
title('Mask AC ')

% Acc Normalised signal and Mask  signal - D
figure (3)
subplot(311)
affich(dataTeta_AC,fe,0)
title('Normalised Acc - Teta ')

subplot(312)
affich(dataMaskAC,fe,1)
title('Mask Normalised ')

subplot(313)
% plot((0:numel(dataMaskAC)-1)/80,[dataTeta_Norm' dataMaskNorm']);

plot((0:numel(dataMaskAC)-1)/80,dataTeta_Norm);
hold on 
plot((0:numel(dataMaskAC)-1)/80,dataMaskNorm);

title('Comparison Accelerometer and Mask')