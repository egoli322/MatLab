% Yahor Liashko, EDlfu25/2, 24.09.2026 

t = 0:0.005:2;

A = 6;
f = 2;
sigma = 1.5;

U1 = 4;
U2 = 2;

s0 = A * cos(2*pi*f*t);
n = sigma * randn(size(t));
s = s0 + n;

sf = s;
sf(abs(sf) < U2) = 0;

[max_original, max_index] = max(s);
[min_original, min_index] = min(s);

t_max = t(max_index);
t_min = t(min_index);

selected_indices = find(s > U1);

figure;

tiledlayout(1,2);

nexttile;

plot(t, s, 'b-', 'LineWidth', 2);
hold on;

plot(t, sf, 'r:', 'LineWidth', 2);

yline(U1, 'k--', 'U1 = 4 V', 'LineWidth', 1.5);

yline(U2, '--', 'U2 = 2 V', ...
    'Color', [0.5 0 0.5], 'LineWidth', 1.5);

title('Original and Filtered Signals');
xlabel('Time (s)');
ylabel('Voltage (V)');

legend('Original signal', 'Filtered signal', ...
    'U1 threshold', 'U2 threshold', ...
    'Location', 'northeast');

grid on;

xlim([min(t), max(t)]);
ylim([min([s, sf, U1, U2]) - 1, ...
      max([s, sf, U1, U2]) + 1]);

hold off;

nexttile;

stem(t(selected_indices), s(selected_indices), ...
    'b.', 'LineWidth', 1.5, 'MarkerSize', 10);

hold on;

plot(t_max, max_original, 'go', ...
    'MarkerSize', 9, 'LineWidth', 2);

plot(t_min, min_original, 'ro', ...
    'MarkerSize', 9, 'LineWidth', 2);

yline(U1, 'k--', 'U1 = 4 V', 'LineWidth', 1.5);

title('Signal Samples Exceeding U1');
xlabel('Time (s)');
ylabel('Voltage (V)');

legend('Selected signal samples', ...
    'Maximum voltage', ...
    'Minimum voltage', ...
    'U1 threshold', ...
    'Location', 'northeast');

grid on;

xlim([min(t), max(t)]);
ylim([min([s, U1]) - 1, ...
      max([s, U1]) + 1]);

hold off;