% Yahor Liashko, EDlfu25/2, 24.09.2026 


x = 0:0.5:2*pi;
y = sin(x) + cos(x).^2;

figure;
plot(x, y, 'ro', 'MarkerFaceColor', 'y', 'MarkerSize', 6);

title('f(x) = sin(x) + cos^2(x)');
xlabel('x');
ylabel('f(x)');
legend('sin(x) + cos^2(x)', 'Location', 'best');
grid on;




x = 0.01:0.01:2;

figure;

plot(x, x.^exp(1), 'LineWidth', 1.5);
hold on;

plot(x, x.^(2*x), 'LineWidth', 1.5);
plot(x, x.^(3*x), 'LineWidth', 1.5);

xlim([0 2]);
ylim([0 1.2]);

title('Comparison of functions');
xlabel('x');
ylabel('f(x)');

legend('x^e', 'x^{2x}', 'x^{3x}', 'Location', 'best');

grid on;
hold off;



x = -2*pi:0.2:2*pi;
y = x.^3 + sin(x);

figure;

quiver(x, zeros(size(x)), zeros(size(x)), y);

xlabel('x');
ylabel('y');
title('Vector representation of y = x^3 + sin(x)');
grid on;




figure;

bar(x, y);

xlabel('x');
ylabel('y');
title('Bar representation of y = x^3 + sin(x)');
grid on;