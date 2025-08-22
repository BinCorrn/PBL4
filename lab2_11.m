b = 1;         
a = [1, -1, 0.9];

n = -20:100;

[h, nh] = impz(b, a, length(n)); 
subplot(2,1,1);
stem(nh, h, 'filled');
title('Impulse Response h(n)');
xlabel('n'); ylabel('h(n)');
grid on;
[s, ns] = stepz(b, a, length(n));
subplot(2,1,2);
stem(ns, s, 'filled');
title('Step Response s(n)');
xlabel('n'); ylabel('s(n)');
grid on;

sum_abs_h = sum(abs(h));
if sum_abs_h < inf
    disp('The system is stable.');
else
    disp('The system is not stable.');
end