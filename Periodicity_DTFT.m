n = 0:100;
w = -3*pi :0.001 :3*pi;
x = (0.5).^n;

W = exp(-1j*w'*n);
xw = W*x';

Mi = abs(xw);
P = angle(xw);

subplot(3,1,1);
stem(n,x);

subplot(3,1,2);
stem(w,Mi);

subplot(3,1,3);
stem(w,P);