function [] = matrixBit( A )
%MATRIXBIT takesas an argument the matrix A and sisplays the 1st row and
%column , the last row and column and every element.
% To display an entire row/column we use : , and use size to get the number
% of rows/columns and then use them as an indicator . Similarly we use a
% nested for loop to display each element in A via A(i,j)

% Note that this function doesn't return anything.

[nbOfCols , nbOfRows] = size(A);
disp(A)
disp( A(1 , :) )
disp( A(: , 1) )

disp( A(: , nbOfRows) )
disp( A(nbOfCols , : ) )

for i=1:nbOfCols
   for j=1:nbOfRows
      disp( A(i,j) ) 
   end
end



end

