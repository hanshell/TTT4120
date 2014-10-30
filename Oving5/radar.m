file=load('signals.mat');
x=file.x;
y=file.y;

figure
subplot(2,1,1);
plot(x);
xlabel('n');
ylabel('x(n)');
title('Emitted signal');
sublot(2,1,2);
plot(y);
title('Received signal');