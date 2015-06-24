//Problem 5

//2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

//What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

var get_divisible = function(){
    for (var i = 2520; i > 0; i+=20){
        var d = 0;
        for (var j = 2; j <= 20; j++){
            if (i%j === 0){
                d += 1;
            }else{
                break;
            }
            if (d === 19){
                return i;
            }
        }
    }

};

get_divisible();