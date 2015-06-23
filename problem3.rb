# Problem3

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def getFactor(number)
    primes = []
    for i in 2..number
      while number%i == 0 do
          primes.push(i)
          number = number/i
      end
   end
   @primes = primes
   return primes
end

getFactor(600851475143)
