
clear 

load fil.mat
load process_D.mat
load process_Mask.mat

subplot(211)
[y10_A,x10_A,Rr_Acc] = calculFreqResp_LapiAlgo(dataD_AC,fe);
subplot(212)
[y10_M,x10_M,Rr_M] = calculFreqResp_LapiAlgo(dataMaskAC,fe);