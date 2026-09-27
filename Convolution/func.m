%Using conv function to perform linear convolution of two sequences x[n] and h[n]
x = [2, 1, 2, 1];
h = [1, 0, 1, 0];

% Linear convolution using built-in function
y = conv(x, h);

% Display output
disp('Linear Convolution y[n]:');
disp(y);

% Plotting
clf;
subplot(3, 1, 1); stem(0:length(x)-1, x); title('x[n]'); grid on;
subplot(3, 1, 2); stem(0:length(h)-1, h); title('h[n]'); grid on;
subplot(3, 1, 3); stem(0:length(y)-1, y); title('y[n] = conv(x, h)'); grid on;