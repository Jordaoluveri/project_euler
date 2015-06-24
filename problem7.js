//Problem 7

//By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

//What is the 10 001st prime number?

var prime = function(n){
    primes = [2];
    p = 0;
    for (var i = 3; p < n; i++){
        if (i%2 !== 0){
            counter = 0;
            var prime = 1;
            while (counter <primes.length){
                if (i%primes[counter] === 0){
                    prime = 0;
                    break;
                }
                counter++;
            }
            if(prime){
                primes.push(i);
            }
        }
    }
    return primes[n-1];
};

prime(10);
