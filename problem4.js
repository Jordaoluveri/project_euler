//Problem 4

//A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is //9009 = 91 × 99.

//Find the largest palindrome made from the product of two 3-digit numbers.

var getPalindrome = function() {
    var big = 0;
    var products = [];
    for (var i = 999; i > 99; i--){
        for (var j = i; j > 99; j--){
            var number = (j*i).toString();
            if (number === number.split('').reverse().join('')){
                    if (number > big){
                    big = +number;
                    products = [j,i];
                }
            }
        }
    }
    return [big, products];
};

getPalindrome();
