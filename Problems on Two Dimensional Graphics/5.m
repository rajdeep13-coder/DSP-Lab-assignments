%Plot sin and cos using hold on

x = linspace(0, 2*pi, 100);

plot(x, sin(x), 'r');
hold on;

plot(x, cos(x), 'b');

hold off;

xlabel('x');
ylabel('Amplitude');
title('sin(x) and cos(x)');
legend('sin(x)', 'cos(x)');
grid on;