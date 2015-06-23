primes = [2];
factors = [];
var getPrimes = function(number){
    for (var i = 0; i <= number; i++){
         if (i%2 !== 0 && i !== 1){
            counter = 0;
            var prime = 1;
            while (counter < primes.length){
                if (i%primes[counter] === 0){
                    prime = 0;
                    break;
                }
                counter++;
            }
            if (prime){
                primes.push(i);
            }
        }
    }
    return primes;
};

var getPrimeFactors = function (number){
    ceilRoot = Math.ceil(Math.sqrt(number));
    getPrimes(ceilRoot);
    for (var i = 0; i < primes.length; i++){
        if ((number/primes[i])%1 === 0){
            factors.push(primes[i]);
            number = number/primes[i];
            i = -1;
        }
    }
    return factors;
};

var start = new Date().getTime();
getPrimeFactors(600851475143);
var end = new Date().getTime();
var time = end - start;
console.log(time);
console.log(factors);

