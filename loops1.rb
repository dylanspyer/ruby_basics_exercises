# Exercise 1 
# modify the loop to stop after the first iteration
# loop do
#   puts 'Just keep printing...'
# end
loop do
  puts 'Just keep printing...'
  break
end

# Exercise 2
# modify so that each loops stops afte the first iteration
# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#   end
# end

# puts 'This is outside all loops.
loop do
  puts 'This is the outer loop.'
  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops'

# Exercise 3
# Modify the following loop so it iterates 5 times instead of just once.
iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
#   if iterations > 5
#     break
#   end
# end

# or

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end
#If the break statement is moved up one line so it runs before iterations is incremented, what would need to be changed?

iterations = 0
loop do
  break if iterations >= 5
  iterations += 1
  puts "Number of iterations = #{iterations}"
end

# Exercise 4
# Modify the code below so the loop stops iterating when the user inputs 'yes'.
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  puts 'Try again.  Answer "yes"!'
end

# Exercise 5
# Modify the code below so "Hello!" is printed 5 times.
# say_hello = 0

# while say_hello
#   puts 'Hello!'
#   say_hello += 1
#   break if say_hello >= 5
# end

# another way:
say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  if count >= 5
    say_hello = false
  end
end

# another way using a method:
5.times do
  puts "Hello!"
end

# Exercise 6
count = 0
 while count < 5
   p rand(1..99)
   count += 1
 end

 ## Another way:
 numbers = []
 while numbers.size < 5 #array.size is a new method to me, it's the array equivalent of string.length
  numbers << rand(100) #rand returns a number from 0 to one less than the argument it's passed, so in this case 0 to 99 inclusive
 end
 puts numbers

# Exercise 7
# This outputs a countdown from 10 to 1.  Modify so it counts 1 to 10 instead:
# count = 10

# until count == 0
#   puts count
#   count -= 1
# end

count = 1
until count == 11 # this could also be until count > 10, that would probably be less confusing
  puts count
  count += 1
end

# Exercise 8
# Use until to print each array element:
numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end
# I couldn't get this one.  I couldn't come up with line 132, because I couldn't remember how to reference array elements.
# numbers[count] if count = 0 is 7 because numbers[0] is 7... then increment the count variable up by 1 until count == the size of the array

# Exercise 9
for i in 1..100
  if i % 2 != 0
    puts i
  end 
end

# You can also do it this way:
for i in 1..100
  puts i if i.odd? #I forgot you could do .odd? to check if something is odd
end

# Exercise 10
friends = ['Sarah', 'John', 'Hannah', 'Dave']
for i in friends
  puts "Hello, #{i}!"
end
# Reminder - for doesn't have its own scope.  So if you tried to access `i` after you ran the code above, `i` would be `Dave`




