# Learning the difference between .each and .collect and .inject

text = "how are you"

#With each, it just loops, and the returning data is just the splited text array
p text.split.each{|a|puts a; "hello"}

#With collect you can decide the returning array
p text.split.collect{|a|puts a; a + " hello"}

#Same solution with inject (You start with an empty array and start data to it)
p text.split.inject([]){|b,a|puts a; b << a + " hello"}

# With inject you have more flexibility, we can decide to return a hash with our own custom keys instead of an array
p text.split.inject({}){|b,a|puts a; b[a] = a + " hello"; b}

