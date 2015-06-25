#Problem 9

#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a2 + b2 = c2
#For example, 32 + 42 = 9 + 16 = 25 = 52.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

def get_p
    a = 1
    while a < 1000 do
        b = 1
        while b < 1000 do
            c = 334
            while c < 1000 do
                if a*a + b*b == c*c
                    if a+b+c == 1000
                        return [a,b,c, a+b+c, a*b*c]
                    end
                end
            c +=1
            end
        b += 1
        end
    a +=1
    end
end

get_p