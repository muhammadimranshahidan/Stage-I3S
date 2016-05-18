
x = [1 2 3 4 5];
y = [5 7 5 7 5];

plot(x,y);
 findpeaks(y)
[ypic,xpic] = findpeaks(y,1/0.01);
[]

x101 = x(y == ypic(1))

