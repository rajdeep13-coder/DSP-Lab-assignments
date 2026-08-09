% Plot both sine and cosine functions with different styles

x = linspace(0, 2*pi, 100);

plot(x, sin(x), 'r-o', x, cos(x), 'b--*');

xlabel('x');
ylabel('Amplitude');
title('sin(x) and cos(x)');
legend('sin(x)', 'cos(x)');
grid on;

%use help command to get detailed docs