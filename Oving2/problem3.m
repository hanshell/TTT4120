B=1;
A=[1 0.9];

[H, w]=freqz(B,A);

plot(w, abs(H));

 plot(angle(H));