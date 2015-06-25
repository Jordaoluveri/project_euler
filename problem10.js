//Problem 10

//The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

//Find the sum of all the primes below two million.

var get_primes_under = function(n){
    primes = [2];
    sum = 2;
    for (var i = 2; i <= n; i++){
        if (i%2 !== 0){
            prime = 1;
            for (var j = 0; j < primes.length; j++){
                if (i%primes[j] === 0){
                    prime = 0;
                    break;
                }   
            }
            if (prime){
                primes.push(i);
                sum += i;
            }
        }
 
    }
    return sum;
};

get_primes_under(2000000);
