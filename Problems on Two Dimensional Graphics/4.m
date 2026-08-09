% Plot sinx and cosx using grid lines and labels

x = linspace(0, 2*pi, 100);

plot(x, sin(x), x, cos(x));

xlabel('x');
ylabel('Amplitude');
title('Sine and Cosine Functions');

legend('sin(x)', 'cos(x)');

grid on;