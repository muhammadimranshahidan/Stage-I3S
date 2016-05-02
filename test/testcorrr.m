



t = 0:0.01:1;

s1 = 4 + sin(10*t);
s2 = 4*sin(10*t);

plot(t,s1,t,s2);

[acor,lag] = xcorr(s1,s2,'coeff');

[~,I] = max(abs(acor));
lagDiff = lag(I);
timeDiff = lagDiff/fe;

figure
plot(lag/fe,acor)
title('Cross correllation - Filtered value - Teta - ')

grid on 