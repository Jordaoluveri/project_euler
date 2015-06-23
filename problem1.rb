# Problem1

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def get_all_multiples(multiple1, multiple2, top)
	sum = 0
	for i in 0...top
		if i%multiple1 == 0 || i%multiple2 == 0
			sum += i
		end
	end
	sum
end

get_all_multiples(3, 5, 1000)