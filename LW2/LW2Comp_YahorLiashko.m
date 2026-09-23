% Yahor Liashko, EDlfu25/2, 22.09.2026 

A = input('Enter vector A: ');

idx = 1:length(A);

reverse_idx = idx(end:-1:1);

logical_idx = reverse_idx >= 1;

B = [A A(reverse_idx(logical_idx))];

disp('vector B is:');
disp(B);