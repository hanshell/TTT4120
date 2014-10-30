alpha=0.9;
R=6000;

[y, Fs]=audioread('piano.wav');

coefficients=zeros(1, R+1);
coefficients(1)=1;
coefficients(end)=alpha;

[H, w]=freqz(coefficients, 1);
[h, n]=impz(coefficients, 1);

subplot(2,1,1);
plot(w, abs(H));
xlabel('w');
ylabel('|H(w)|');
title('Magnitude response, a=0.5, R=6');

subplot(2,1,2);
stem(n, h);
axis([0 R+5 0 1]);
xlabel('n');
ylabel('x(n)');
title('Unit pulse response, a=0.5, R=6');

y2=filter(coefficients,1, y);

sound(y2, Fs);