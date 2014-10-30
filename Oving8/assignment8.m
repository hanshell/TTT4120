%% Problem 2
% c)

ym2=0;
ym1=-0.5;
y0=1.25;
y1=-0.5;
y2=0;
y3=0;

a1=-y1/y0

sigma_1=y0+a1*y1

order2_left=[y0 ym1; y1 y0];
order2_right=[y1 y2];

coefficients_2=-order2_right*order2_left^-1

sigma_2=y0+coefficients_2(1)*y1+coefficients_2(2)*y2

order3_left=[y0 ym1 ym2; y1 y0 ym1; y2 y1 y0];
order3_right=[y1 y2 y3];

coefficients_3=-order3_right*order3_left^-1

sigma_3=y0+coefficients_3(1)*y1+coefficients_3(2)*y2+coefficients_3(3)*y3

%%
% d)

f=0:1/100:2*pi;

sigma=[1.05 1.0119 1.0029];
ak_1=0.4;
ak_2=[0.4762 0.1905];
ak_3=[0.4941 0.2353 0.0941];

power_1=(sigma(1)^2)./(abs((1+ak_1*exp(-j*2*pi*f*1))).^2);

power_function=1.25-cos(2*pi*f);

figure
subplot(3,1,1);
plot(f, power_1, 'color', 'r');
hold on;
plot(f, power_function, 'color', 'b');
xlabel('f');
ylabel('Power density spectrum');
legend('estimated power density', 'calculated power density');
axis([0 1 0 5]);

subplot(3,1,2);
power_2=(sigma(2)^2)./(abs((1+ak_2(1)*exp(-j*2*pi*f*1)+ak_2(2)*exp(-j*2*pi*f*2))).^2);
plot(f, power_2, 'color', 'r');
hold on;
plot(f, power_function, 'color', 'b');
xlabel('f');
ylabel('Power density spectrum');
legend('estimated power density', 'calculated power density');
axis([0 1 0 5]);


subplot(3,1,3);
power_3=(sigma(3)^2)./(abs((1+ak_3(1)*exp(-j*2*pi*f*1)+ak_3(2)*exp(-j*2*pi*f*2)+ak_3(3)*exp(-j*2*pi*f*3))).^2);
plot(f, power_3, 'color', 'r');
hold on;
plot(f, power_function, 'color', 'b');
xlabel('f');
ylabel('Power density spectrum');
legend('estimated power density', 'calculated power density');
axis([0 1 0 5]);

%%
% The more coefficients, the closer the estimate

%% Problem 3

Fs=8000;

x_a=wavread('/home/hanshell/workspace/TTT4120/Oving8/Vowels/a.wav');
x_e=wavread('/home/hanshell/workspace/TTT4120/Oving8/Vowels/e.wav');
x_i=wavread('/home/hanshell/workspace/TTT4120/Oving8/Vowels/i.wav');
x_o=wavread('/home/hanshell/workspace/TTT4120/Oving8/Vowels/o.wav');
x_u=wavread('/home/hanshell/workspace/TTT4120/Oving8/Vowels/u.wav');
x_y=wavread('/home/hanshell/workspace/TTT4120/Oving8/Vowels/y.wav');
x_ae=wavread('/home/hanshell/workspace/TTT4120/Oving8/Vowels/ae.wav');
x_oe=wavread('/home/hanshell/workspace/TTT4120/Oving8/Vowels/oe.wav');
x_aa=wavread('/home/hanshell/workspace/TTT4120/Oving8/Vowels/aa.wav');

lpc_a=lpc(x_a, 10);
lpc_e=lpc(x_e, 10);
lpc_i=lpc(x_i, 10);
lpc_o=lpc(x_o, 10);
lpc_u=lpc(x_u, 10);
lpc_y=lpc(x_y, 10);
lpc_ae=lpc(x_ae, 10);
lpc_oe=lpc(x_oe, 10);
lpc_aa=lpc(x_aa, 10);

sound(x_a, Fs);

a=filter(lpc_a, 1, x_a);
pause(1);
sound(a, Fs);

x_i2=filter(1, lpc_i, a);
pause(1);
sound(x_i2, Fs);

