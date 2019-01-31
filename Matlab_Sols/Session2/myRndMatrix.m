function [ outRndMatrix ] = myRndMatrix( n, a, b )
%MYRNDMATRIX takes as arguments: 
%   - n (an integer) that specifies the square matrix size
%   - a, b two real numbers with a<b that specify the bounds between which
%     we generate the random integers
% The resulting random matrix is then passed out via outRndMatrix


outRndMatrix = randi([a b],n,n);
end

