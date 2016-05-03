
load process_Mask.mat 
load process_teta.mat
load process_D.mat 
load fil.mat

s1 = dataMaskAC;
s1norm = dataMaskNorm;
% s2 = dataD_AC;

s2 = dataTeta_AC;
s2norm = dataTeta_Norm;

t1 = (0:length(s1)-1)/fe;
t2 = (0:length(s2)-1)/fe;

figure(1)
subplot(3,1,1)
plot(t1,s1,'r');
grid on
xlabel('Time (s)')
ylabel('Vmask')
title('Mask')

subplot(3,1,2)
plot(t2,s2)
grid on
title('Acc - Teta')
xlabel('Time (s)')
ylabel('Vacc')

subplot(313)
plot(t1,s1norm,'r',t2,s2norm,'b');
xlabel('Time (s)')
ylabel('V')
grid on
title('Mask and Accelerometer - AC value normalised - Teta')

[acor,lag] = xcorr(s1,s2,'coeff');

[~,I] = max(abs(acor));
lagDiff = lag(I);
timeDiff = lagDiff/fe;


figure (2)
plot(lag/fe,acor)
grid on
title('Cross correllation - AC value - Teta - ')


s2al = s2(-lagDiff:end);
t2al = (0:length(s2al)-1)/80;

figure(3)
subplot(3,1,2)
plot(t2al,s2al)
title('Acc aligned')
xlabel('Time (s)')
ylabel('Vacc')
grid on

subplot(3,1,1)
plot(t1,s1,'r')
title('Mask')
ylabel('Vmask')
xlabel('Time (s)')
grid on

s1_norm = s1/max(abs(s1));
s2_norm_align = s2al/max(abs(s2al));

subplot(313)
plot(t1,s1_norm,t2al,s2_norm_align);
grid on
xlabel('Time (s)')
ylabel('V/au')
title('Aligned Signal Mask and Accelerometer Normalised - Teta')

