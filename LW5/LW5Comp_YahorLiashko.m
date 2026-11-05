% Yahor Liashko, EDlfu25/2, 05.11.2026, variant 5
clc; clearvars;
format compact;

x = input('Enter x: ');
y = input('Enter y: ');

for i = 1:20
    A = randi(10, x, y);

    m = randi(x);
    n = randi(y);

    A(m,n) = NaN;

    disp(A);
    pause(2);
end
