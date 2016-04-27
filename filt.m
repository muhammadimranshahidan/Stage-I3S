
function dataOut = filt(dataIn,ordre,fc,fe)

wc =2*fc/fe; 

[b,a] = butter(ordre,wc);

dataOut = zeros([size(dataIn,1) size(dataIn,2)]);

for i = 1:size(dataIn,1) 

     dataOut(i,:)= filtfilt(b,a,double(dataIn(i,1:end)));
     
end 