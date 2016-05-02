
function [datafilter,dataAC,dataNorm] = dataProcess(dataIn,ordre,fc,fe)

    datafilter = filt(dataIn,ordre,fc,fe);
    
    dataAC = datafilter - mean(datafilter);
    
    dataNorm = dataAC/max(abs(dataAC));
    
end 