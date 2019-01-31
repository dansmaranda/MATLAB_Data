function [ primeTruth ] = checkPrimeNumber( x )
%CHECKPRIMENUMBER takes as a argument a real number x and then checks if it
%is prime or not by checking all the divisors from 2 to sqrt(x), and
%returns true if it doesn't find any , and false if it does


% We assume the number is prime untill proven otherwise
primeTruth = true;


% We go through all the numbers from 2 to sqrt(x)
for i=2:sqrt(x)
    
   % This is the condition that, if we find a divisor (i.e. mod(x, i)==0 )
   % we then now the number is not prime (i.e. return false) and exit the
   % function via the return argument.
   if ( mod(x, i) == 0 )
       primeTruth = false; 
       return
   end
end

end

