% Recuperation des donnees 
load readacc.mat;

accx = ax;
accy = ay;
accz = az;
datamask = mask;

    % Algorithme 
    fc = 2;
    fe = 80;
    ordre = 2 ;
    
    save fil.mat fc fe ordre
    
    [dataOutD,dataOutTeta,dataOutdTeta] = algorithme(accx,accy,accz,5,7) ;
    
    
    % Measure Vacc using D 
    [dataMaskF,dataMaskAC,dataMaskNorm] = dataProcess(datamask,ordre,fc,fe);
    save process_Mask.mat datamask dataMaskF dataMaskAC dataMaskNorm
    
    % Measure Vacc using 
    [dataD_F,dataD_AC,dataD_Norm] = dataProcess(dataOutD,ordre,fc,fe);
    save process_D.mat  dataOutD dataD_F dataD_AC dataD_Norm  
    
    [dataTeta_F,dataTeta_AC,dataTeta_Norm] = dataProcess(dataOutTeta,ordre,fc,fe);
    save process_teta.mat  dataOutTeta dataTeta_F dataTeta_AC dataTeta_Norm
    
    [datadTeta_F,datadTeta_AC,datadTeta_Norm] = dataProcess(dataOutdTeta,ordre,fc,fe);
    save process_dteta.mat  dataOutdTeta datadTeta_F datadTeta_AC datadTeta_Norm 
   
    
   
%       figure (1)
%       subplot(2,1,1);
%       affich(dataOut,fe,0);
%       title('Accelerometer')    
%       
%     dataAlgoF = filt(dataAlgo,2,fc,fe);
%     dataMaskF = filt(datamask,2,fc,fe);
    
%     dataAlgoAC = dataAlgoF - mean(dataAlgoF);
%     dataMaskAC = dataMaskF - mean(dataMaskF);
%     
%     dataAlgoNorm = dataAlgoAC/max(abs(dataAlgoAC));
%     dataMaskNorm = dataMaskAC/max(abs(dataMaskAC));
    
%     subplot(2,1,2);
%     plot((0:numel(dataAlgoAC)-1)/80,dataAlgoAC);
%     affich(dataAccF,fe,0);
%     title('Accelerometer Filtered')
%   
%     figure(2)
%     subplot(2,1,1);
%     affich(dataAccAC,fe,0);
%     title('Accelerometer AC')
%     
%     subplot(2,1,2);
%     affich(dataMaskAC,fe,1);
%     title('Mask AC')
%    
%     figure(3)
%     subplot(3,1,1);
%     affich(dataAccNorm,fe,0);
%   	title('Accelerometer Normalised AC')
%     
%     subplot(3,1,2);
%     affich(dataMaskNorm,fe,1);
%     title('Mask Normalised AC')
%    
%     subplot(3,1,3);
%     plot((0:numel(dataMaskAC)-1)/80,[dataAlgoNorm' dataMaskNorm']);
%     title('Comparison Accelerometer and Mask')
%     
%     
%     figure(4)
%     xcorr(dataAlgoNorm,dataMaskNorm);
    
    
    
    
    
    
    
    
    
    
    
   
 
    
    