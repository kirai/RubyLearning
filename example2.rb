#
# Description: calculates Fibonacci sequence for the first 30 terms
#              accumulates all the even numbers from the previous sequence into sum
#

fib = (0..30).inject([1,1]) {|fib, i| fib << fib[i] + fib[i+1]}
p fib.inject(0) { |sum, x| ((x%2)==0) ? sum+x : sum }
