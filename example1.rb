#
#  Adds all the natural numbers below 1000 that are multiples of 3 OR 5
#

# "Traditional" solution
sum = 0
for i in 0..999
  if (((i%3)==0) || ((i%5)==0)) then 
    sum+=i
  end
end

p sum

# One line solution

p (0..999).inject(0) { |sum, x| (x%3).zero? || (x%5).zero? ? sum+x : sum }


