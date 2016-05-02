% Ceci est une fonction pour filter le signal original
% Le but de ce filtrage est d'enlever le bruit qui pertube le mesure

function [dataOutx,dataOuty,dataOutz,dataOutMask] =  filtre(dataInx,dataIny,dataInz,dataInMask)

fc = 2; %frequence de coupure reel
fe = 80; %frequence d'echantillonage
wc = 2*fc/fe; %frequence de coupure du filtre numerique

[b,a] = butter(2,wc); % filtre butterworth d'ordre 2 
 
dataOutx = zeros([10 size(dataInx,2)]);
dataOuty = zeros([10 size(dataIny,2)]);
dataOutz = zeros([10 size(dataInz,2)]);


for j = 1:10
    
  dataOutx(j,:)= filtfilt(b,a,double(dataInx(j,1:end)));
  dataOuty(j,:) = filtfilt(b,a,double(dataIny(j,1:end)));
  dataOutz(j,:)= filtfilt(b,a,double(dataInz(j,1:end)));
   
end 
   
dataOutMask = filtfilt(b,a,double(dataInMask));
