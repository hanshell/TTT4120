a=-0.9;
n=0:50;
l=-50:50;
f=-0.5:0.01:0.5;

x=a.^n;
rxx=(a.^abs(l))/(1-(a^2));
Sxx=(1./(1-(2*a*cos(2*pi*f))+a^2));

figure

subplot(3,1,1);
plot(n, x);
title('Input signal');
xlabel('n');
ylabel('x(n)');

subplot(3,1,2);
plot(l, rxx);
xlabel('l');
ylabel('rxx(l)');
title('Autocorrelation function');

subplot(3,1,3);
plot(f, Sxx);
xlabel('Frequency (f)');
ylabel('Sxx');
title('Energy density spectrum');