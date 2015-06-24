#Problem4

#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is
#9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

def get_palindrome
    palin = 0;
    n1 = 999
    while counter > 99 do
        n2 = n1
        while n2 > 99 do
            n = n2*n1
            if (n.to_s == n.to_s.reverse)
                if n > palin
                palin = n
                multiples = [n1,n2]
                end
            end
            n2 -= 1
        end
        n1 -= 1 
    end
    return [palin, multiples]
end

get_palindrome