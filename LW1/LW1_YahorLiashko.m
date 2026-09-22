% Yahor Liashko, EDlfu25/2, 22.09.2026 

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Two functions')
xlabel('X-ai')
ylabel('F_1 [-o-]    |    F_2 [-x-]')