
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Laboratoire I3S Sophia Antipolis 
% Muhammad Imran Bin Shahidan 
% Sujet : La mesure non invasive de la frequence respiratoire a l'aide d'un
% dispositif a double accelerometre
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
load readacc.mat 

accx = ax;
accy = ay;
accz = az;
datamask = mask;

% Affichage des entrees
figure(1)
Input(accx,accy,accz,datamask);

fc = 2; %`Frequence de coupure
fe = 80;%   Frequence d'echantionnage 80 Hz
ordre = 2 ;

% Algorithme de Lapi - Mesure de la longueur D
[dataOutD,dataOutTeta] = algorithme(accx,accy,accz,5,7) ;
      
% Traitement du signal de la masque
[dataMaskF,dataMaskAC,dataMaskNorm] = dataProcess(datamask,ordre,fc,fe);

% Traitement du signal des accelerometre
[dataD_F,dataD_AC,dataD_Norm] = dataProcess(dataOutD,ordre,fc,fe);
 

% Analyse du signal D et signal de la masque
figure (2)
Analyse_Signal(dataD_Norm,dataMaskNorm,fe);

% Cross Corellation entre  masque et  accelerometre
[CrCo, Time] = calcul_CrossCorellation(dataMaskAC,dataMaskNorm,dataD_AC,dataD_Norm,fe);

% Calcul de la frequence respiratoire en utilisant la methode de LAPI
figure(6)
subplot(211)
[y10_A,x10_A,Rr_Acc] = calculFreqResp_LapiAlgo(dataD_AC,fe);
title('Accelerometre')

subplot(212)
[y10_M,x10_M,Rr_M] = calculFreqResp_LapiAlgo(dataMaskAC,fe);
title('Mask')

% Calcul de la frequence respiratoire en utilisant le FFT 
RR_acc = calculFreqResp_FFT(dataD_AC,fe);
RR_mask = calculFreqResp_FFT(dataMaskAC,fe);
    

   

