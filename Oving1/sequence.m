Fs=8000;
F1=6000;
f1=F1/Fs;
n=0:1000;

x=cos(2*pi*f1*n);


soundsc(x, Fs);