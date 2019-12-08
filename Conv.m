x = [1,7,2,9,2,3,1];
h = [1,2,1];

n = length(x);
m = length(h);

X = [x,zeros(1,m)];
H = [h,zeros(1,n)];

for i = 1:n+m-1
    y(i)=0;
    for j = 1:n
        
        if(i-j+1> 0)
            y(i) = y(i)+X(j)*H(i-j+1);
        else
            
        end
    end
end
y

subplot(3,1,1);
stem(1:n , x ,'r');

subplot(3,1,2);
stem(1:m , h ,'b');

subplot(3,1,3);
stem(1:(n+m-1) , y , 'g');