
% C'est une fonction pour mesurer le cross correlation entre deux signaux
% L'objectif de cette fonction est de trouver la similarite entre deux
% signaux et aussi mesurer le retard d'un signal par rapport a l'autre

function  [Max,timeDiff] = calcul_CrossCorellation(data1,data1norm,data2,data2norm,fe)
    
t1 = (0:length(data1)-1)/fe;
t2 = (0:length(data2)-1)/fe;

figure(3)
subplot(3,1,1)
plot(t1,data1,'r');
grid on
xlabel('Time (s)')
ylabel('Vmask')
title('Mask')

subplot(3,1,2)
plot(t2,data2)
grid on
title('Acc - D ')
xlabel('Time (s)')
ylabel('Vacc')

subplot(313)
plot(t1,data1norm,'r',t2,data2norm,'b');
xlabel('Time (s)')
ylabel('V')
grid on
title('Mask and Accelerometer - AC value normalised - D')

[acor,lag] = xcorr(data1,data2,'coeff');

[Max,I] = max(abs(acor));
lagDiff = lag(I);
timeDiff = lagDiff/fe;


figure (4)
plot(lag/fe,acor)
grid on
title('Cross correllation - AC value - D - ')


data2al = data2(-lagDiff:end);
t2al = (0:length(data2al)-1)/80;

figure(5)
subplot(3,1,2)
plot(t2al,data2al)
title('Acc aligned')
xlabel('Time (s)')
ylabel('Vacc')
grid on

subplot(3,1,1)
plot(t1,data1,'r')
title('Mask')
ylabel('Vmask')
xlabel('Time (s)')
grid on

data1_norm = data1/max(abs(data1));
data2_norm_align = data2al/max(abs(data2al));

subplot(313)
plot(t1,data1_norm,t2al,data2_norm_align);
grid on
xlabel('Time (s)')
ylabel('V/au')
title('Aligned Signal Mask and Accelerometer Normalised - D ')


end