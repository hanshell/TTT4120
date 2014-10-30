file=load('signals.mat');
x=file.x;
y=file.y;

ryx=xcorr(y, x);

plot(ryx);
xlabel('l');
ylabel('ryx(l)');
title('Correlation between y and x');