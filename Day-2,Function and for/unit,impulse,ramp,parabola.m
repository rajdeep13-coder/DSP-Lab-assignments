%code to find unit, ramp, impulse and parabola signals

n = 0:1:10;

u = (n >= 0);              % Unit signal         

r = n .* (n >= 0);          % Ramp signal

d = (n == 0);             % Impulse signal

p = (n.^2 / 2) .* (n >= 0);        % Parabolic signal

subplot(2,2,1);
stem(n,u);
xlabel('n');
ylabel('u(n)');
title('Unit Signal');
grid on;

subplot(2,2,2);
stem(n,r);
xlabel('n');
ylabel('r(n)');
title('Ramp Signal');
grid on;

subplot(2,2,3);
stem(n,d);
axis([-5 5 -1 1]);
xlabel('n');
ylabel('delta(n)');
title('Impulse Signal');
grid on;

subplot(2,2,4);
stem(n,p);
xlabel('n');
ylabel('p(n)');
title('Parabolic Signal');
grid on;