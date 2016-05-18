

a = [1 2 3 4 5 6 7 8 9 10];
b = [2 9 7 10 2 16 4 7 10 12];

subplot(211)
plot(a,b,d,c,'*');
[c,d] = findpeaks(b);
grid on

y10 = 0.9*c;
yx = b;

j = 1;
for i = 1 : length(b)-1
    if b(i)> y10(1)
        yx(i) = y10(1);
        if(b(i+1)<y10(1))
            j=j+1;
        end
    end 
end 

subplot(212)

plot(a,b,a,yx,d,c,'r*');

grid on 