
clear

load process_Mask.mat 
load process_D.mat 
load fil.mat

[CrCo, Time] = calcul_CrossCorellation(dataMaskAC,dataMaskNorm,dataD_AC,dataD_Norm,fe);