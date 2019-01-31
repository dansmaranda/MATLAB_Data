function [procA] = cleanMatrix(A)
%cleanMatrix1 takes a matrix A as an argument and replaces all the even
%numbers along the ones divisible by 3. This is done by going through each
%element in A and checking if it is divisible by 2 or 3 and setting that
%value to 0. We then return the processed matrix procA which we just
%initiaise with our matrix.


[nbCols, nbRows] = size(A);

for i=1:nbCols
    for j=1:nbRows
        if mod(A(i,j),2)==0
            A(i,j)=0;
        end
%         if mod(A(i,j),3)==0
%             A(i,j)=0;
%         end
    end
end

procA = A;
end