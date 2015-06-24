//Problem 6
//The sum of the squares of the first ten natural numbers is,

//12 + 22 + ... + 102 = 385
//The square of the sum of the first ten natural numbers is,

//(1 + 2 + ... + 10)2 = 552 = 3025
//Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 
//3025 − 385 = 2640.

//Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

var get_difference = function(number){
    sum = 0;
    square = 0;
    for (var i = 1; i <= number; i++){
        sum += Math.pow(i,2);
        square += i;
    }
    square = Math.pow(square,2);
    return (square-sum);
};

get_difference(100);
