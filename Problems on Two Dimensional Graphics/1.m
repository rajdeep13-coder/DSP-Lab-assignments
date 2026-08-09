% Plot the sine function

x = linspace(0, 2*pi, 30);
y = sin(x);

plot(x,y);

xlabel('x');
ylabel('sin(x)');
title('Plot of y = sin(x)');
grid on;
