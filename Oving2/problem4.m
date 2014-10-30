Fs=6000

n=0:Fs-1;
x1=cos(2*pi*1000/Fs*n);

sound(x1, Fs);