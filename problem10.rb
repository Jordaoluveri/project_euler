#Problem 10

#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

#Find the sum of all the primes below two million.

##########
#This code really sucks and takes a really long time.

def get_primes_under(n)
    primes = [2]
    sum = 2
    i = 2
    while i < n do
       if i %2 != 0
           j = 0
           prime = true
           while j < primes.length do
              if i%primes[j] == 0
                  prime = false
                  break
              end
              j += 1
           end
           if prime
               primes.push(i)
               sum += i
           end
       end
       i += 1
    end
    return sum
end

get_primes_under(2000000)