
function affich(dataIn,fs,type)
    
    if type == 0
        plot((0:numel(dataIn)-1)/fs,dataIn,'b');
        ylabel('Vacc');
        xlabel('t/s');
       
    else 
        plot((0:numel(dataIn)-1)/fs,dataIn,'r');
        ylabel('Vmask');
        xlabel('t/s');
    end 
    
    grid on ;
end
