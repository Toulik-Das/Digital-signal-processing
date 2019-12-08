Am = 2;
Ac = 5;
Fm = 60 ;
Fc = 600;
t  = 0:1/12000:1/12;

M  = Am*cos(2*pi*Fm*t);
C  = Ac*cos(2*pi*Fc*t);

subplot(4,1,1);
plot(t,M);
title('Massage Signal');
subplot(4,1,2);
plot(t,C);
title('Carrier Signal');

b1 = 0.8;
S1 = Ac*cos(2*pi*Fc*t);
b1*sin(2*pi*Fm*t);
subplot(4,1,3);
plot(t,S1)
title('Freq. Modulation(b<1)');

b2 = 5;
S2 = Ac*cos(2*pi*Fc*t);
b2*sin(2*pi*Fm*t);
subplot(4,1,4);
plot(t,S2);
title('Frequency Modulation(b>>1)');