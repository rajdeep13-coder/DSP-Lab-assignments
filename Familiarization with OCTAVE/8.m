%Create a row vector Z with elements 2, 4, 6, and 8. Then create a complex vector E by adding an imaginary part to Z. Finally, compute the conjugate transpose and transpose of E.

Z = [2 4 6 8];
E = Z + 1i*Z;    %can also be written as E = Z + j*Z or use complex function E = complex(Z, Z)
A = E';
F = E.';

disp('E = ');
disp(E);

disp('A = conjugate transpose of E = ');
disp(A);

disp('F = transpose of E = ');
disp(F);

% for normal transpose E' 
% and for complex conjugate transpose do E.'