
% cette fonction est pour mesurer la frequence respiratoire avec la mesure
% du FFT
% On mesure la frequence quand l'amplitude est au pic 


function FreqResp = calculFreqResp_FFT(data,fe)

FFT = fft(data,length(data));

Amp = FFT.*conj(FFT)/length(data);
f = fe/length(data)*(0:127);
[~,i] = max(Amp);
FreqResp = 60 * f(i); 

end 