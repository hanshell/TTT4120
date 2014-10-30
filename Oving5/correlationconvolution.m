file=load('signals.mat');
x=file.x;
y=file.y;

x_reverse=fliplr(x);
rxx=conv(y, x_reverse);
stem(rxx);
xlabel('l');
ylabel('ryx(l)');
title('Cross-correlation between y(n) and x(n)');