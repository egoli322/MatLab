clc,clearvars;

global x y

x = 0:0.2:2*pi;

calculate_signal

plot(x,y, 'r:s')
grid on
xlabel('x')
ylabel('sin(x) + cos(x)')

whos global