%Create two row vectors X and Y, each containing 9 elements. Compute the element-wise product of X and Y using the .* operator.

X = 1:9;
Y = 2:10;
Z = X .* Y;

disp('X = ');
disp(X);

disp('Y = ');
disp(Y);

disp('X .* Y = ');
disp(Z);

% NOTE: never forget to use x.*y