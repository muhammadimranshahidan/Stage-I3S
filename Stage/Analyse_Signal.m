
% C'est une fonction pour analyser le signal D et le signal de la masque 

function  Analyse_Signal(dataD_Norm,dataMaskNorm,fe)

D = dataD_Norm;
Mask = dataMaskNorm;

tD = (0:length(D)-1)/fe;
tMask = (0:length(Mask)-1)/fe;


plot(tD,D,'r',tMask,Mask,'g');
xlabel('Temps(s)')
ylabel('V(a.u)')
legend('D','Mask')
title('Acc(D) - Mask ')

end