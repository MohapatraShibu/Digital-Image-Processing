%Practical:- 1A- Perform 2D convolution with two matrices
%Matrix X and Matrix H
%Matrix is defined using square brackets [row 1;row 2 ; row 3,,,].

disp('530_SHIBU');
X = [4,5,6; 7,8,9];
H = [1 ; 1; 1];
Y = conv2(X,H);
disp(H);
disp(X);
disp(Y);