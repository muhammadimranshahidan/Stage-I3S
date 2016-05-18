load process_Mask.mat
load process_dteta.mat
load fil.mat 

% Original signal and filtered signal of accelerometer - D 
figure (1)
subplot(211)
affich(dataOutdTeta,fe,0)
title('Original Acc - dTeta ')

subplot(212)
affich(datadTeta_F,fe,0)
title('Filtered Acc - dTeta ')

% Acc AC signal and Mask AC signal - D
figure (2)
subplot(211)
affich(datadTeta_AC,fe,0)
title('AC Acc - dTeta')

subplot(212)
affich(dataMaskAC,fe,1)
title('Mask AC ')

% Acc Normalised signal and Mask  signal - D
figure (3)
subplot(311)
affich(datadTeta_AC,fe,0)
title('Normalised Acc - dTeta ')

subplot(312)
affich(dataMaskAC,fe,1)
title('Mask Normalised ')

subplot(313)
plot((0:numel(dataMaskAC)-1)/80,datadTeta_Norm);
hold on
plot((0:numel(dataMaskAC)-1)/80,dataMaskNorm);
%plot((0:numel(dataMaskAC)-1)/80,[datadTeta_Norm' dataMaskNorm']);
title('Comparison Accelerometer and Mask')