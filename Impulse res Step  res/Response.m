b=1;
a =[1,-1,0.9];
n =-20:120;

h =impz(b,a,n);
subplot(2,1,1);
stem(n,h);
title('Impulse Response');

x=stepseq(0,-20,120);
s=filter(b,a,x);
subplot(2,1,2)
stem(n,s);
title('Step Response');

p = roots(a);
magp = abs(p);
disp('magp = ');
disp(magp)
if magp<1
    disp('Stable');
else
    disp('Unstable');
end