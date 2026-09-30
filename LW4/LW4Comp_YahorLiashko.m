% Yahor Liashko, EDlfu25/2, 30.09.2026, variant 5

x = -2:0.05:2;
y = -2:0.05:2;

[X, Y] = meshgrid(x, y);

Z = 1 - (X.^2 + Y.^2);

figure('Name', 'Additional Task - Variant 5', 'NumberTitle', 'off');

surf(X, Y, Z, 'FaceColor', 'b', 'EdgeColor', 'none');

alpha(0.5);

title('z(x,y) = 1 - (x^2 + y^2)');
xlabel('X');
ylabel('Y');
zlabel('Z');

grid on;
axis tight;
view(3);