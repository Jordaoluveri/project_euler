# Problem3

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def getFactor(number)
    primes = []
    counter = 2
    while counter <= number do
      while number%counter == 0 do
          primes.push(counter)
          number /= counter
      end
      counter += 1
   end
   return primes
end

getFactor(600851475143)
