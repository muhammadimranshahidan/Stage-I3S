
clear 

load fil.mat
load process_D.mat

[y10,x10,Rr] = calculFreqResp_LapiAlgo(dataD_AC,fe);


% x = (0:length(dataD_AC)-1)/fe;
% y = dataD_AC;
% 
% [ypic,xpic] = findpeaks(y,fe,'MinPeakDistance',2);
% [ypeak,xpeak] =findpeaks(y,1,'MinPeakDistance',2*fe);
% 
% y10 = 0.9*ypic;
% j=1;
% 
% b10 = zeros([size(y10,1) size(y,2)]);
% d10 = zeros([size(y10,1) size(y,2)-1]);
% 
% for i = 1 : length(y10)   
%     b10(i,:) = y >=y10(i);
%     d10(i,:) = diff(b10(i,:));
% end
% 
% i=1;
% x10 = zeros(size(y10,1));
% j10 = zeros(size(y10,1));
% k = find(xpic);
% 
% for j = 1 : length(b10)-1
%     
%     if i <= length(y10)
%         if b10(i,j+1)-b10(i,j)==-1 
%             
%             if j > xpeak(i)
%                 j10(i) = j ;
%                 i=i+1;
%             end
%         end
%        
%     end
% end 
% 
% for i = 1 : length(y10)
%     y10(i)= y(j10(i)); 
%     x10(i)= x(j10(i));
% end
% 
% Tt = diff(x10);
% Rr = 60/mean(Tt);
% 
% 
% plot(x,y,xpic,ypic,'*',x10,y10,'+k')
% ylabel('Vacc')
% xlabel('Temps(s)')
% title('Le point du pic et le point de 10 pourcent au dessous du pic')
% grid on