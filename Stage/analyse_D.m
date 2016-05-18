
load process_Mask.mat
load process_D.mat
load fil.mat 

% Original signal and filtered signal of accelerometer - D 
figure (1)
subplot(211)
affich(dataOutD,fe,0)
title('Original Acc - D ')

subplot(212)
affich(dataD_F,fe,0)
title('Filtered Acc - D ')

% Acc AC signal and Mask AC signal - D
figure (2)
subplot(211)
affich(dataD_AC,fe,0)
title('AC Acc - D')

subplot(212)
affich(dataMaskAC,fe,1)
title('Mask AC ')

% Acc Normalised signal and Mask  signal - D
figure (3)
subplot(311)
affich(dataD_AC,fe,0)
title('Normalised Acc - D ')

subplot(312)
affich(dataMaskAC,fe,1)
title('Mask Normalised ')

subplot(313)
plot((0:numel(dataMaskAC)-1)/80,[dataD_Norm' dataMaskNorm']);
title('Comparison Accelerometer and Mask')







