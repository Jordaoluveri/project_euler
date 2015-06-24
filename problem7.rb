#Problem 7

#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the 10 001st prime number?

def get_primes(n)
    primes = [2]
    pp = 0
    i = 3
    while pp < n do
       if  i%2 != 0
           counter = 0
           prime = 1
           while counter < primes.length do
               if (i%primes[counter] == 0)
                   prime = 0
                   break;
               end
               counter += 1
           end
           if prime == 1
              primes.push(i)
              pp +=1
           end
       end
       i+=1
    end
    return primes[n-1]
end

get_primes(10001)


