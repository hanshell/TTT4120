N=10;
alpha=0.9;
R=1000;
[y, Fs]=audioread('piano.wav');

b=zeros(1, (N*R)+1);
a=zeros(1, R+1);

b(1)=1;
b(N*R+1)=-alpha^N;

a(1)=1;
a(R+1)=-alpha;

[H, w]=freqz(b, a);
[h, n]=impz(b, a);

figure
subplot(2,1,1);
plot(w, abs(H));
xlabel('w');
ylabel('|H(w)|');
title('Magnitude response');

subplot(2,1,2);
stem(n, h);
xlabel('n');
ylabel('h(n)');
title('Impulse response');


y2=filter(b, a, y);

sound(y2, Fs);