
% C'est un analyse pour comparer les valeurs de D et les valeurs de Teta (valeurs normalisees)
% Le signal du masque (spirometre) est utilise pour comparer ses valeurs
% obtenues

load process_teta.mat 
load process_Mask.mat 
load process_D.mat
load fil.mat 

teta = dataTeta_Norm;
D = dataD_Norm;
Mask = dataMaskNorm;


tTeta = (0:length(teta)-1)/fe;
tD = (0:length(D)-1)/fe;
tMask = (0:length(Mask)-1)/fe;

figure (1)
plot(tTeta,teta,'b',tD,D,'r',tMask,Mask,'g');
xlabel('Temps(s)')
ylabel('V(a.u)')
legend('Teta','D','Mask')
title(' Acc(Teta) - Acc(D) - Mask ')
