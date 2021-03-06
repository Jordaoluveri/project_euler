//Problem 12

// The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28.

// What is the value of the first triangle number to have over five hundred divisors?

var get_tri = function(){
    s = 1;
    for (var triangle = 1; triangle > 0; s++, triangle +=s){
        divisors = 0;
        for (var i = 1; i <= Math.sqrt(triangle); i++){
            if (triangle%i === 0){
                divisors += 2;
                if (divisors> 500){
                    return [triangle, divisors];
                }
            }
        }
    }
};

get_tri();

