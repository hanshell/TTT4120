ub_num=[1.9 -1.9];
ub_den=[2 -1.8];
[h_ub, w]=freqz(ub_num, ub_den);

plot(w, abs(h_ub));
xlabel('Angular frequency')
ylabel('Magnitude response')