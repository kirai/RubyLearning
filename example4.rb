require 'benchmark'

text = "carlos test 1 chris ojete carlos cads ojete moreno hector chris"
items = ["carlos", "moreno", "ojete"]

p "--------------------------------------------------------------------"
p "Counting each time a word from items appears at text (the total sum)"
p "--------------------------------------------------------------------"

p "Chris Regex based solution"
p text.gsub(/(carlos|moreno|ojete)/).count
time = Benchmark.realtime do 100000.times do text.gsub(/(carlos|moreno|ojete)/).count; end; end
p time

p "Carlos Collect solution"
p text.split(' ').collect{|word| 1 if items.include?(word)}.compact.count
time = Benchmark.realtime do 100000.times do text.split(' ').collect{|word| 1 if items.include?(word)}.compact.count; end; end
p time

p "Hector inject solution"
p text.split(' ').inject(0) { |sum, word| items.include?(word) ? sum + 1 : sum  }
time = Benchmark.realtime do 100000.times do text.split(' ').inject(0) { |sum, word| items.include?(word) ? sum + 1 : sum  }; end; end
p time

p "Carlos find_all solution"
p text.split(' ').find_all{|word| items.include?(word)}.count
time = Benchmark.realtime do 100000.times do text.split(' ').find_all{|word| items.include?(word)}.count; end; end
p time

p "-----------------------------------------------------------"
p "Keeping a count of the appearances of each word in the text"
p "-----------------------------------------------------------"

p "Using group by and collect"
p Hash[text.split(" ").group_by{|elem| elem}.collect{|key, val|  [key, val.size]}]
time = Benchmark.realtime { 10000.times { Hash[text.split(" ").group_by{|elem| elem}.collect{|key, val|  [key, val.size]}] }}
p time

p "Using inject Carlos solution"
p text.split(" ").inject({}) {|hash, key| hash.has_key?(key) ? hash[key] +=1 : hash[key] = 1; hash} 
time = Benchmark.realtime { 10000.times { text.split(" ").inject({}){|hash, key| hash.has_key?(key) ? hash[key] +=1 : hash[key] = 1; hash} }}
p time

p "Using inject Chris solution using boolean || instead of .has_key?"
p text.split(" ").inject({}) {|hash, value| hash[value] ||= 0; hash[value] += 1; hash;}
time = Benchmark.realtime { 10000.times { text.split(" ").inject({}) {|hash, value| hash[value] ||= 0; hash[value] += 1; hash;} } }
p time
