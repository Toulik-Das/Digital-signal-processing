rng default
t = linspace(-pi,pi,100);
x =sin(t);

y = x+0.25*rand(size(t));
ws = 5;

b =(1/ws)*ones(1,ws);
a =1;
z = filter(b,a,y);
subplot(2,1,1);
plot(t,x);
grid on;

subplot(2,1,2);
plot(t,y);
hold on
plot(t,z);
grid on;
