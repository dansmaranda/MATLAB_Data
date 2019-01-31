function [genMatrix1, genMatrix2] = genSpecialMatices( n )
%GENSPECIALMATICES takes as arguments a number n. Given n we then check if
%it is an integer via the rem(n, 1) == 0 condition (which probes if the
%remainder in division wih 1 is 0) and proceeds to he matrix generation, or
%displaying a message otherwise.



if rem(n,1)==0
    
    %We create two 10x10 matrices filled with 0's
    genMatrix1=zeros(n);
    genMatrix2=zeros(n);
    
    
    for i=1:n
        for j=1:n
            
            % For the matrix with 1 on the edges, this is done by checking
            % if the matrix indices are either 1, or n
            if i==1 || j==1 || i==n || j==n
                genMatrix1(i,j) = 1;
            end
            
            % For the matrix with 1 on the diagonals, we put the 1's by
            % checking if the matrix indices are either equal or sum up to
            % n+1 
            if i==j || i+j-1==n
                genMatrix2(i,j) = 1;
            end
        end
    end
    
else
    disp('n needs to be an integer!')
end

end

