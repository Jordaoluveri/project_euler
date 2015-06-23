$primes = [2]
$factors = []

def getPrimes(number)
    for i in 0..number
        if i%2 != 0 && i != 1
            counter = 0
            prime = 1
            while counter < $primes.length do
                if i%$primes[counter] == 0
                    prime = 0
                    break
                end
                counter += 1
            end
            if prime == 1
                $primes.push(i)
            end
        end
    end
    return $primes
end

def getPrimeFactors(number)
    ceilRoot = Math.sqrt(number).ceil
    getPrimes(ceilRoot)
    counter = 0
    while counter < $primes.length
        if (number/$primes[counter].to_f%1) == 0
            $factors.push($primes[counter])
            number = number/$primes[counter].to_f
            counter = -1
        end
        counter += 1
    end
    return $factors
end

t1 = Time.new()
getPrimeFactors(600851475143)
t2 = Time.new()
delta = t2 - t1
p delta*1000
p $factors