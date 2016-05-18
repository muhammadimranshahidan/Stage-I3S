
% Objectif : Trouver les valeurs maximums pour chaque signal 

figure (1)
load process_Mask.mat
load process_D.mat 
load fil.mat

s1 = dataMaskAC;
s2 = dataD_AC ;

t1 = (0:length(s1)-1)/fe;
t2 = (0:length(s2)-1)/fe;

t3 = 0:1/80:60;
s3 = sin(2*t3);

subplot(311)
[s1p,t1p]= findpeaks(s1,80,'MinPeakDistance',2);
plot(t1,s1,t1p,s1p,'r*');
title('Mask')
ylabel ('Vmask') 
xlabel('t(s)')

subplot(312)
[s2p,t2p]= findpeaks(s2,80,'MinPeakDistance',2);
plot(t2,s2,t2p,s2p,'r*');
title('Accelerometer')
ylabel ('Vacc') 
xlabel('t(s)')

subplot(313)
[s3p,t3p] = findpeaks(s3,80);
plot(t3,s3,t3p,s3p,'r*');
title('Signal sinus')
ylabel ('S(t)') 
xlabel('t(s)')
