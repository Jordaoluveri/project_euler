#Problem 5

#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def get_divisible
    n1 = 2520
    while n1 > 0 do
        d = 0
        n2 = 2
        while n2 < 21 do
            if n1%n2 == 0
               d += 1
            else
                break
            end
            if d == 19
                return n1
            end
            n2 += 1
        end
        n1 += 20
    end
    return d
end

get_divisible