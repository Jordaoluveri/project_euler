//Problem 3

//The prime factors of 13195 are 5, 7, 13 and 29.

//What is the largest prime factor of the number 600851475143 ?

var getFactor = function(number){
    var i = 0;
    var primes = [];
    for (i = 2; i <= number; i++){
        while (number%i === 0){
            primes.push(i);
            number = number/i;
        }
    }
    return primes;
};

getFactor(600851475143977);
