%Plot sinx, cosx, 2*sinx, sinxcosx, and sinx/cosx using subplot

x = linspace(0, 2*pi, 100);

% 1. sin(x)
subplot(3,2,1);
plot(x, sin(x));
title('sin(x)');
xlabel('x');
ylabel('Amplitude');
grid on;

% 2. cos(x)
subplot(3,2,2);
plot(x, cos(x));
title('cos(x)');
xlabel('x');
ylabel('Amplitude');
grid on;

% 3. 2*sin(x)
subplot(3,2,3);
plot(x, 2*sin(x));
title('2sin(x)');
xlabel('x');
ylabel('Amplitude');
grid on;

% 4. sin(x)*cos(x)
subplot(3,2,4);
plot(x, sin(x).*cos(x));
title('sin(x)cos(x)');
xlabel('x');
ylabel('Amplitude');
grid on;

% 5. sin(x)/cos(x)
subplot(3,2,5);
plot(x, sin(x)./cos(x));
title('sin(x)/cos(x)');
xlabel('x');
ylabel('Amplitude');
grid on;