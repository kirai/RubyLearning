#
# Description: finds the largest prime factor for a given number 
#

num = 600851475143

#Traditional solution (Calculate prime numbers by hand and check divisors)

maxDiv = Math.sqrt(num) #The largest prime factor of a number cannot be larger than the square root of the number 
largestPrimeFactor = 0
primes = [1]

for i in 2..maxDiv
  if i.even? #Filter even numbers
    next
  end
  
  for j in 2..(i/2) #Check divisors
    if (i % j) == 0
      break 
    end
  end
  
  if j == (i/2) #Is prime!
    primes << i
    p i
  end 
end  

primes.sort.reverse.each do |p| # Factorizing
  if ((num%p) == 0) 
    largestPrimeFactor = p  # We only need the largest factor
    break
  end
end

p largestPrimeFactor

#One liner solution
require 'mathn'
p 600851475143.prime_division.last[0]

