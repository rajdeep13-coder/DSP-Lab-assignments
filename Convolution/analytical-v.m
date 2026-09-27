x = [2, 1, 2, 1];
h = [1, 0, 1, 0];
N = length(x) + length(h) - 1;
y = zeros(1, N);

% Analytical solution for linear convolution
for n = 1:N
    for k = 1:length(x)
        if (n - k + 1 >= 1) && (n - k + 1 <= length(h))
            y(n) = y(n) + x(k) * h(n - k + 1);
        end
    end
end

disp('Result y:'); disp(y);

% Compact plotting
clf;
subplot(3,1,1); stem(0:length(x)-1, x); title('x[n]');
subplot(3,1,2); stem(0:length(h)-1, h); title('h[n]');
subplot(3,1,3); stem(0:N-1, y); title('y[n]');