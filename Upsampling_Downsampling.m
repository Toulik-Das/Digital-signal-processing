n = 0:99;
x=rand(size(n));
y1 = downsample(x,2);
y2 = upsample(y1,2);

subplot(3,1,1);
stem(n,x);

subplot(3,1,2);
stem(1:length(y1),y1);

subplot(3,1,3);
stem(1:length(y2),y2);