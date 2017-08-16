names = ["Matz","Bryson","Dojo","Coding","Mac","John"]
numbers = [1,2,3,4,5,6,7,8,9,10]

#  puts names.at(3)
 
#  puts names.fetch(4)

#  puts numbers.at(4)
 
#  puts numbers.at(1)

#  puts numbers.delete(6)
 
#  puts numbers.delete("John")

#  puts names.reverse
#  puts numbers.reverse

#  puts numbers.sort
#  puts names.sort

# puts names.slice!(1)
# puts "updated names: "
# puts names

# puts numbers.shuffle()

# puts names.join(";")

# puts numbers.join(" ")

# puts numbers.join(names[0])

# names.insert(2, "awesome")

# names.insert(2, "hi")

# puts names

# numbers.insert(6, 1, 2, 3)

# puts numbers

# puts names.values_at(0)
# puts names.values_at(1,4)

puts numbers.values_at(0..4)

puts names.values_at(1,2).join(" is ")