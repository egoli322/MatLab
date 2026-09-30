% Yahor Liashko, EDlfu25/2, 30.09.2026, variant 5

x = (2*rand(1,200)-1).*sqrt(pi/2);
y = (2*rand(1,200)-1).*sqrt(pi/2);

x = sort(x);
y = sort(y);

[X,Y] = meshgrid(x,y);
Z = sin(X.^2 + Y.^2);

figure('Name','Laboratory Work 4 - Task 1a','NumberTitle','off');

surf(X,Y,Z,'FaceColor',[0.2 0.6 0.8]);
shading interp;
colormap winter;

xlabel('X');
ylabel('Y');
zlabel('Z');
title('f(x,y) = sin(x^2 + y^2)');
view(50,30);
grid on;


x = -2:0.1:1;
y = -2:0.1:1;

[X,Y] = meshgrid(x,y);
Z = 1 - 2*X.^2 - 3*Y.^2;

figure('Name','Laboratory Work 4 - Task 1b','NumberTitle','off');

surf(X,Y,Z,'FaceColor',[0.8 0.4 0.3]);
shading interp;
colormap autumn;

xlabel('X');
ylabel('Y');
zlabel('Z');
title('f(x,y) = 1 - 2x^2 - 3y^2');
view(60,30);
grid on;