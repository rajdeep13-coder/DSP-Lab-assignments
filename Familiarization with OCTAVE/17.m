% Convert a matrix to a row vector

C = [1 2;
     3 4];

C_row = C(:)';

disp('C = ');
disp(C);

disp('Row vector = ');
disp(C_row);