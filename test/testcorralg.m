
t = 0:0.01:10;

s1 = sin(10*t);
s2 = cos(10*t);

subplot(2,1,1)
plot(t,s1)
title('s_1')

subplot(2,1,2)
plot(t,s2)
title('s_2')
xlabel('Time (s)')

[acor,lag] = xcorr(s2,s1);

[~,I] = max(abs(acor));
lagDiff = lag(I);
timeDiff = lagDiff;

figure
plot(lag,acor)
a3 = gca;
a3.XTick = sort([-3000:1000:3000 lagDiff]);


s1al = s1(-lagDiff:end);
t1al = (0:length(s1al)-1)/100;

subplot(2,1,1)
plot(t1al,s1al)
title('s_1, aligned')

subplot(2,1,2)
plot(t,s2)
title('s_2')
xlabel('Time (s)')

figure
plot(t,s2,t1al,s1al)
