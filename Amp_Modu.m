Am = 2;
Ac = 5;
Fm = 60 ;
Fc = 600;
t  = 0:1/12000:1/12;

M  = Am*cos(2*pi*Fm*t);
C  = Ac*cos(2*pi*Fc*t);

subplot(3,1,1);
plot(t,M);
title('Massage Signal');
subplot(3,1,2);
plot(t,C);
title('Carrier Signal');

i  = Am/Ac;
if(i<1)
    S = (1+(i*cos(2*pi.*Fm.*t))).*cos(2*pi.*Fc.*t);
    subplot(3,1,3);
    plot(t,S);
    title('Under Modulation');
elseif(i == 1)
     S = (1+(i*cos(2*pi.*Fm.*t))).*cos(2*pi.*Fc.*t);
     subplot(3,1,3);
     plot(t,S);
     title('Critical Modulation');
elseif(i>1)
    S = (1+(i*cos(2*pi.*Fm.*t))).*cos(2*pi.*Fc.*t);
    subplot(3,1,3);
    plot(t,S);
    title('Over Modulation');
end
    
    