
h = 0.001;       % step size
X = -2*pi:h:2*pi;    % domain
f = sin(X);
Y = diff(f)/h;   % first derivative
Z = diff(Y)/h;   % second derivative

plot(X(:,1:length(Y)),Y,'r',X,f,'b')
[a,b] = findpeaks(f);

grid on 


