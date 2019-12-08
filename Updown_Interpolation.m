n = 0:0.001:1;
xn = sin(2*pi*32*n)+1.5*sin(8*pi*42*n);
yn = interp(xn,2);

subplot(2,1,1);
stem(n,xn);

subplot(2,1,2);
stem(1:length(yn),yn);