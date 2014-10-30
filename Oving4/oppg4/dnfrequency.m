L=500;
n=0:1:L-1;
Ax=0.25;
Ay=0.25;
fx=0.04;
fy=0.10;

d=Ax*cos(2*pi*fx*n)+Ay*cos(2*pi*fy*n);

D=fft(d, 2048);

plot(abs(D));
xlabel('Frequency (Hz)')
ylabel('D(f)')
% axis([0 1 0 70]) 