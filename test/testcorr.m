
t = 0:0.1:10;
w0 = 1 ;

S1 = 5+ sin(w0*t+0.01);
S2 = sin(w0*t);
S3 = sin (3*w0*t);

figure (1)
plot(t,[S1' S2' S3']);

corrS1S2norm = sum(S1 .*S2)/(sqrt(sum(S1 .^2) .*sum(S2 .^2)));