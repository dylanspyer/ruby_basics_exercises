# Even or odd?
# Write a loop that prints numbers 1-5 and whether the number is even or odd. Use the code below to get started.
count = 1
loop do
  if count.odd? 
    puts "#{count} is odd"
  else
    puts "#{count} is even"
  end
  count += 1
  break if count > 5
end

# Catch the number
# Modify the following code so that the loop stops if number is equal to or between 0 and 10.
loop do
  number = rand(100)
  puts number 
  break if number.between?(0, 10) 
end
# Here's another way if you didn't know the .between? method:
# loop do
#   number = rand(100)
#   puts number
#   if number >= 0 && number <= 10
#     break
#   end 
# end
# Can also do if (1..10).include? number for the conditional statement

# Conditional loop
process_the_loop = [true, false].sample
if process_the_loop
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end
# This confused me because of the directions and the use of the loop.  You don't need a loop here, which threw me off.

# Get the sum
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer.  Try again!"
  end
end

# Insert numbers
# Modify the code below so that the user's input gets added to the numbers array. Stop the loop when the array contains 5 numbers.
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size >= 5
end
puts numbers

# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i

#   numbers.push(input)
#   break if numbers.size == 5
# end
# puts numbers

# Empty the array
# Given the array below, use loop to remove and print each name from first to last. Stop the loop once names doesn't contain any more elements.
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  name = names.shift
  puts name
  break if names.size == 0
end

# Can also do it like this:
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift #I assigned this to a variable and then `puts` the variable, but this is shorter
  break if names.empty? #Didn't know the .empty? method
end

# If you wanted to change from printing last to first:
loop do
  puts names.pop
  break if names.empty?
end

# Stop counting
# The method below counts from 0 to 4. Modify the block so that it prints the current number and stops iterating when the current number equals 2.
5.times do |index|  
  puts index
  break if index == 2
end

# Only even
# Using next, modify the code below so that it only prints positive integers that are even.
number = 0


until number == 10
  number += 1
  if number % 2 == 0
    puts number
  else
    next
  end
end

# An easier way:
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

# First to Five
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  puts "number a is #{number_a}"
  number_b += rand(2)
  puts "number b is #{number_b}"
  next unless number_a == 5 || number_b == 5
  puts "5 was reached!"

  break
end

# with an if/else:
number_a = 0
number_b = 0

loop do
    number_a += rand(2)
    puts "number a is #{number_a}"
    number_b += rand(2)
    puts "number b is #{number_b}"
    if number_a == 5 || number_b == 5
      puts "5 was reached!"
      break
    end
end

# Greeting
# Given the code below, use a while loop to print "Hello!" twice.
def greeting
  puts 'Hello!'
end

number_of_greetings = 0

while number_of_greetings < 2
  greeting
  number_of_greetings += 1
end

# Their solution (I changed number_of_greetings to start at 0.  I shold have thought to just decrement it instead of increment it):
def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end



