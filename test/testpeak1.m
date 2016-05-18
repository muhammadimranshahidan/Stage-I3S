
load process_D.mat

% pas = 0.01;
% x = 0:pas:3;
% y = sin(2*pi*x);
% subplot(211)
% plot(y)
% [ypic,xpic] = findpeaks(y,1/pas);
% y10 = 0.9*ypic;
% yx = y;
% 
% j = 1;
% for i = 1 : length(y)
%     if y(i)> y10(1)
%         yx(i) = y10(j);
%         if(y(i+1)<y10(j))
%             j=j+1;
%         end
%     end 
% end 
% subplot(212)
% plot(x,y,x,yx);
% [d,c]= findpeaks(yx);
% plot(x,y,x,yx,c*pas,d,'r*');
% 
% yt = 0;
% 
% m = [0 1 3];
% k = 1;
% 
% for i = 1 : length(yx)-1
%     if yx(i) > yx(i+1) && yx(i) == max(yx)
%         m(k) = (i-1)*pas;
%         k = k+1;
%     end 
% end
% 
%  T = diff(m);


pas = 0.01;
x = 0:pas:4;

y = sin (2*pi*x);
for m =   1 : length(x)
    
    y(m) = sin (2*pi*(0.01*m-0.01));
    
    if ( m > 100 )
        y(m) =0.7 * sin (2*pi*(0.01*m-0.01));
    end
    
    if (m >200 )
        y(m) =0.5 * sin (2*pi*(0.01*m-0.01));
    end
    
     if (m >250)
        y(m) =0.95 * sin (2*pi*(0.01*m-0.01));
    end
end

[ypic,xpic] = findpeaks(y,1/pas);


plot(x,y,xpic,ypic,'*')

y10 = 0.9*ypic;
% by10 = zeros([size(y10,1) size(y,2)]);
% d10 = zeros([size(y10,1) size(y,2)-1]);
% % x10 = zeros(size(y10,1));
 
k=1;
  for i =1 : length(y10)
    k=i;
    by10 =  (y >= y10(i) );
    d10 = diff(by10);
    for j=1 :size(d10)
        if(d10(j)==-1)&& i==k
            v(k)=j;
            k=k+1;
        end
    end
  end

% for i =1 : length(y10)
%    
%     for j = 1 : size(d10,2)
%         
%         if d10(i,j)== -1 && i==k
%            
%             v(k) = find(d10(i,j)==-1) ;
%             k=k+1;
%         
%         end
%     end
%     
% end



     
    
    



    
