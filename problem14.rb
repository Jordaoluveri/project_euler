# Problem 14

#The following iterative sequence is defined for the set of positive integers:

#n → n/2 (n is even)
#n → 3n + 1 (n is odd)

#Using the rule above and starting with 13, we generate the following sequence:

#13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

#Which starting number, under one million, produces the longest chain?

def get_collatz(num)
    partial = num
    sequence = 1
    while partial != 1 do
        if partial%2 == 0
            partial /= 2
            sequence += 1
        else
            partial = partial*3 + 1
            sequence += 1
        end
    end
     return sequence
end

def get_longest_chain
    longest = 1
    number = 0
    counter = 1
    while counter < 1000000 do
       sequence = get_collatz(counter)
       if sequence > longest
          longest = sequence
          number = counter
       end
       counter  += 1
    end
    return [number, longest]
end

get_longest_chain()