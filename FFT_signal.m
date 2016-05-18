
% Cette fonction est pour calculer le fft du signal 


load process_D.mat
load process_Mask.mat
load fil.mat

% tmask =(0:length(dataMaskAC)-1)/fe;
% tacc =(0:length(dataD_AC)-1)/fe;
% 
% FFT_Mask = fft(dataMaskAC,4800);
% FFT_Acc = fft(dataD_AC,4800);
% 
% subplot(211)
% 
% PyMask = FFT_Mask.*conj(FFT_Mask)/4800;
% fm = fe/4800*(0:2400);
% [ymask,xmask] = max(PyMask);
% xm = fm(xmask); 
% plot(fm,PyMask(1:128))
% 
% title('Power spectral density')
% xlabel('Frequency (Hz)')
% 
% subplot(212)
% PyAcc = FFT_Acc.*conj(FFT_Acc)/4800;
% fa = fe/4800*(0:2400);
% [yacc,xacc] = max(PyAcc);
% xa = fa(xacc);
% plot(fa,PyAcc(1:128))
% title('Power spectral density - Accelerometer')
% xlabel('Frequency (Hz)')

RR_acc = calculFreqResp_FFT(dataD_AC,fe)
RR_mask = calculFreqResp_FFT(dataMaskAC,fe)
