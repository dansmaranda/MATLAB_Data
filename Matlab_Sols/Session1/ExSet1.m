% Ex 1)
% We can see that if we call our function checkNumberDiv3 with two separate
% arugments it returns logical 1 for 6 and logical 0 for 5 , in other words
% it is TRUE that 6 is divisible by 3 and is FALSE that 5 is divisible by 3

display( checkNumberDiv3(6));
display( checkNumberDiv3(5));


% Ex 2)
% Similarly we can see that when we call checkPrimeNumber for 3, 17, 15,
% which are stored in nb1, nb2, nb3 we get what we'd expect, i.e. 3 and 17
% are prime , marked by the logical 1's and 15 isn't marked by the logical
% 0. Note that for this exercise we've displayed everything using an
% array [] , i.e. display ( [ ... , ... , ... ]  )

nb1 = 3;
nb2 = 17;
nb3 = 15;

display( [checkPrimeNumber( nb1 ),checkPrimeNumber( nb2 ), checkPrimeNumber( nb3 ) ]);


% Ex 3)
% In this exercise we reuse the function that we wrote for Ex 1). You
% should always try and reuse previously written or already existing code
% where possible. 
% Note that to display the message e.g '195 is divisible by 3' we've used
% an array in the display and converted numberToCheck at that point to a
% string via [num2str(numberToCheck) ,' is divisible by 3.']. Also note
% that strings are denoted by ''

for numberToCheck = 1:200
    if (mod(numberToCheck, 3) ==0  )
        disp([num2str(numberToCheck) ,' is divisible by 3.']);
    end
end

% Ex 4)
% Again we've just recicled the code from the last exercise but now , when
% we find a number divisible by 3 we add it to the cumulative sum div3Sum  (which
% starts of at 0) and add 1 to the number of occurences div3Count. We then
% get the average by dividing the sum by the number of occurences , i.e div3Avg = div3Sum / div3Count
% and then display the message shown below



div3Sum = 0;
div3Count = 0;
for numberToCheck = 1:200
    if (mod(numberToCheck, 3) ==0  )
        div3Sum = div3Sum + numberToCheck;
        div3Count = div3Count + 1;
    end
end

div3Avg = div3Sum / div3Count;
disp ( ['The sum of numbers divisible by 3 between 1 and 200 is ', num2str(div3Sum),' and their average is ', num2str( div3Avg )]  )

% Ex 5)
% The code recycling continues, now instead of putting the mod(, 3) ==0
% condition we use our previously wrote checkPrimeNumber function and test
% it against 1 which says if a number is prime or not.


for numberToCheck = 2:200
    if (  checkPrimeNumber(numberToCheck) == 1  )
        disp([num2str(numberToCheck) ,' is a prime number.']);
    end
end


% Ex 6)
% This one is a bit more tricky in storing it. When we do find a prime
% number we calculate the function that we want and store it inside
% valToAppend. Afterwards we concatenate it to the existing list of values
% , i.e. listOfVals (which starts of as an empty list [])


listOfVals = [];

for numberToCheck = 2:200
    if (  checkPrimeNumber(numberToCheck) == 1  )
        valToAppend = numberToCheck^2 + sin(numberToCheck) + tan( numberToCheck /2);
        listOfVals = [ listOfVals, valToAppend ];
    end
end


disp( listOfVals )



% Ex 7)
% Let's break this down. First of just by putting tic and toc where we want
% the timer to start and end (displaying the elapsed time) is how we
% measure what is called execution time. To do the previous problem with
% the constructors we do it in 3 steps:
%   1) create a list from 1 to 200 via 1:200 and store it in listToCheck
%   2) create a sublist primeList which containts the prime number dictated
%   by our condition via listToCheck( checkPrimeNumber(listToCheck) ==1 )
%   3) we calculate the list of values using primeList and performing the
%   required operations on it.
% Note that the operations are .^ and ./ rather than ^ and / . This is
% called a element wise operation (i.e. is applyied for each element in the
% array), and we'll cover them in more detail in the next session.

% Also note that the constructor method is faster than using for loops.
% This is due to the inherent optimisation techniques MATLAB comes
% preequiped with when dealing with arrays.

tic

listToCheck = [1:200];
primeList = listToCheck(checkPrimeNumber(listToCheck) == 1);
calcList =(primeList).^2 + sin(primeList) + tan(primeList./2);

toc

%-----------------------------------------------------
tic

listOfVals = [];
for numberToCheck = 2:200
    if (  checkPrimeNumber(numberToCheck) == 1  )
        valToAppend = numberToCheck^2 + sin(numberToCheck) + tan( numberToCheck /2);
        listOfVals = [ listOfVals, valToAppend ];
    end
end

toc
