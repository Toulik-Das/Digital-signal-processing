n = 0:100;
w = -3*pi:0.001:3*pi;

x = [1,2,3];
h = [1,2,1];

y = conv(x,h);

n1=0:length(x)-1;
n2=0:length(h)-1;
n3=0:length(y)-1;

xw = exp(-1j*w'*n1)*x';
hw = exp(-1j*w'*n2)*h';
yw = exp(-1j*w'*n3)*y';

y1 = xw.*hw;
M  = abs(yw);
P  = angle(yw);

M1 = abs(y1);
P1 = angle(y1);

subplot(7,1,1);
stem(n1,x);
grid on;

subplot(7,1,2);
stem(n2,h);

subplot(7,1,3);
stem(n3,y);

subplot(7,1,4);
stem(w,M);

subplot(7,1,5);
stem(w,P);

subplot(7,1,6);
stem(w,M1);

subplot(7,1,7);
stem(w,P1);