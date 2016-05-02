


t = 0:0.1:10;
w0 = 1 ;

S1 = sin(w0*t);
S2 = sin(w0*t);
S3 = sin (3*w0*t);

figure (1)
subplot(211)
plot(S1)
subplot(212)
plot(diff(S1))


