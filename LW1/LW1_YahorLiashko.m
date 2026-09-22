% Yahor Liashko, EDlfu25/2, 22.09.2026 

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Two functions')
xlabel('X-ai')
ylabel('F_1 [-o-]    |    F_2 [-x-]')



N = 5; 
v = N+1:0.5:N+4;
A = [
    N:N+2;
    N+3:N+5;
    N+6:N+8
    ];

a = A(3,2);
b = A(2:3,1:2); 
c = [A(1,1) A(1,3) A(3,1) A(3,3)];

v2 = v(1:3);

B = [A; v2];