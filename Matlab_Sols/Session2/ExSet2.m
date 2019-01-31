% Ex 1-2)
% For this recall how matrix algebra works, how the dimensions of matrices
% play into it and what the / operator does(i.e. corresponds to solving a
% system of equations) of the form Ax = B

M = [1, 2, 3;
      4, 5, 6];
N = [1, 2;
      3, 4;
      5, 6];
  
O = [1, 2, 3; 
      4, 5, 6;
      7, 8, 9];
P = [1, 2 
      3, 4];
  
disp(M*N)
disp(N*M)
% N*O <<< This will not work since the matrix dimensions don't agree.
disp(O*N)
% O*P <<< This will not work since the matrix dimensions don't agree.
disp(P*M)
% M*P <<< This will not work since the matrix dimensions don't agree.
% M/N <<< This will not work since the matrix dimensions don't agree.
disp(M/O)


% Ex 3-7)
% To view any of the outputs for the different exercises uncomment the one
% you want and comment out the rest. DONT COMMENT OUT A = myRndMatrix(10, 2, 10);


A = myRndMatrix(10, 2, 10);

% image(A)
% 
% image(A)
% colorbar
% 
% image(A, 'CDataMapping', 'scaled')
% colorbar

subplot(2,1, 1)
imagesc(A)
colorbar

subplot(2, 1, 2)
imagesc(inv(A))
colorbar

matrixBit(A)
disp(cleanMatrix(A))

% Ex 12)
C = cleanMatrix(myRndMatrix(10, 1, 10));
subplot(3,1, 1)
imagesc(C)
colorbar

subplot(3, 1, 2)
imagesc(inv(C))
colorbar

subplot(3, 1, 3)
imagesc(C*inv(C))
colorbar

% Ex 13)

[M1,M2] = genSpecialMatices(10);
subplot(3, 1, 1)
imagesc(M1)
colorbar

subplot(3, 1, 2)
imagesc(M2)
colorbar

subplot(3, 1, 3)
imagesc(M1 + M2)
colorbar

% Ex 14)
removeRGB('Penguins.jpg', 'red')
