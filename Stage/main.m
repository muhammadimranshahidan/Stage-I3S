% Recuperation des donnees 
load readacc.mat;

fs = 80;

accx = ax;
accy = ay;
accz = az;
datamask = mask;

cmax = 10;
column = 1;
 
    % Affichage des entrees
    Input(accx,accy,accz,datamask);
    
    %  Filtrage du signal (3 signaux x,y,z)
    fc = 2 ;
    fe = 80;
    ordre = 2;
    %[datOutx,datOuty,datOutz,dataOutMask] = filtre(accx,accy,accz,datamask);
    
    datOutx = filt(accx,ordre,fc,fe);
    datOuty = filt(accy,ordre,fc,fe);
    datOutz = filt(accz,ordre,fc,fe);
    dataOutMask = filt(datamask,ordre,fc,fe);
    
    save output.mat datOutx datOuty datOutz datamask 
        
    %  Affichage du signal filtre (3 signaux x,y,z)
    Output(datOutx,datOuty,datOutz,dataOutMask,column,cmax);
    
    % Algorithme 
    dataAlgo = algorithme(datOutx,datOuty,datOutz,5,7) ;
    
    figure 
    plot (dataAlgo);
    
    figure(3);
    subplot(2,1,1);
    plot((0:numel(dataAlgo)-1)/80,dataAlgo);
    grid on ;
    title('Accelerometre');
    xlabel('t/s');
    ylabel('Vacc');
    
    subplot(2,1,2);
    plot((0:numel(dataOutMask)-1)/80,dataOutMask,'r');
    grid on ;
    title('Masque');
    xlabel('t/s');
    ylabel('Vmask');
 
    
    