% Plot both sine and cosine functions

x = linspace(0, 2*pi, 100);

plot(x, sin(x), x, cos(x));

xlabel('x');
ylabel('Amplitude');
title('sin(x) and cos(x)');
legend('sin(x)', 'cos(x)');
grid on;