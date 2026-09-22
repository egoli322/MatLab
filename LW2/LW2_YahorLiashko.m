% Yahor Liashko, EDlfu25/2, 22.09.2026 

v1 = (-pi/2 : pi/4 : 2*pi)';
v2 = tan(v1);
v3 = v1 ./ v2;

Z = randn(2,3);
Zt = Z';

A = randn(3,1);
B = [Zt A];
D = det(B);

t = 0:0.005:2;
A = 6;

f = 2;
sigma = 1.5;

U1 = 4;
U2 = 2;

s0 = A * cos(2*pi*f*t);
n = sigma * randn(size(t));
s = s0 + n;

selected = s(s > U1);

sf = s;
sf(abs(sf) < U2) = 0;

N = numel(s);
N_selected = numel(selected);

Umin = min(sf);
Umax = max(sf);