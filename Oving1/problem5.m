
n=0:10;
y=[1 3 6 5 3];
x=[1 2 3 0 0 0 0 0 0 0 0];
h2=0.9.^n;

y1=conv(x,h2);
n=0:length(y1)-1;
length(n)
length(y1)
stem(n,y1);