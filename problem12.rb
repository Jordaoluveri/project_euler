#Problem 12

# The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28.

# What is the value of the first triangle number to have over five hundred divisors?

def get_tri
    s = 1
    triangle = 1
    while triangle > 0 do
       i = 1
       divisors = 0;
       while i <= Math.sqrt(triangle) do
          if triangle%i == 0
             divisors += 2 
          end
          if divisors > 500
             return triangle, divisors
          end
          i += 1 
       end
       s += 1
       triangle += s
    end
    
end

get_tri