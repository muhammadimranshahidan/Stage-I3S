% Recuperation des donnees 
load readacc.mat;

accx = ax;
accy = ay;
accz = az;
datamask = mask;

cmax = 10;
column = 1;
 
    % Affichage des entrees
    Input(accx,accy,accz,datamask,column,cmax);
    
    %  Filtrage du signal (3 signaux x,y,z)
    [datOutx,datOuty,datOutz,dataOutMask] = filtre(accx,accy,accz,datamask);
    save output.mat datOutx datOuty datOutz datamask 
    %  Affichage du signal filtre (3 signaux x,y,z)
    Output(datOutx,datOuty,datOutz,dataOutMask,column,cmax);
    
    % Algorithm 
    
    D = sqrt((datOutx(5,:)-datOutx(6,:)) .^2+(datOuty(5,:)-datOuty(6,:)) .^2+(datOutz(5,:)-datOutz(6,:)) .^2);
    dD = diff(D);
    teta =2*acos(sqrt(1-D .^2/4));
    dteta = diff(teta);
    
    figure (2);
    subplot(2,1,1)
    plot(dteta(1,2*80:16*80));
    subplot(2,1,2)
     plot(dataOutMask(1,2*80:16*80));
    
    
    
    
    
    