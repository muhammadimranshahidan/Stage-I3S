

clear 
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
[ypeak,xpeak]= findpeaks(y);
plot(x,y,xpic,ypic,'*')

y10 = 0.9*ypic;
j=1;

b10 = zeros([size(y10,1) size(y,2)]);
d10 = zeros([size(y10,1) size(y,2)-1]);

for i = 1 : length(y10)   
    b10(i,:) = y >=y10(i);
    d10(i,:) = diff(b10(i,:));
end

i=1;
x10 = zeros(size(y10,1));
j10 = zeros(size(y10,1));


for j = 1 : length(b10)-1
    
    if i <= length(y10)
        if b10(i,j+1)-b10(i,j)==-1 
            if j > xpeak(i)
                j10(i) = j ;
                x10(i)=x(j);
                i=i+1;
            end
        end
       
    end
end 

for i = 1 : length(y10)
    y10(i)= y(j10(i)); 
end

plot(x,y,xpic,ypic,'*',x10,y10,'+k')




    
  
  