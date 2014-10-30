lb_num=[0.1 0.1];
lb_den=[2 -1.8];
[h_lb, w]=freqz(lb_num, lb_den);

plot(w, abs(h_lb));
xlabel('Angular frequency')
ylabel('Magnitude response')