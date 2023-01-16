# User input
# puts "Type anything you want"
# user_input = gets.chomp
# puts user_input

# Your age in months
# puts "What is your age in years?"
# age_in_years = gets.chomp.to_i
# puts "Wow! You are #{age_in_years * 12} months old!"
# Note that if you don't convert age_in_years to an interger, Ruby will concatenate the answer 12 times because it thinks it's a string

# Print something part 1
# puts "Do you want me to print something? (y/n)"
# user_input = gets.chomp.to_s
# if user_input == "y"
#   puts "something"
# end

# a little shorter this way:
# puts '>> Do you want me to print something? (y/n)'
# choice = gets.chomp
# puts 'something' if choice == 'y'

# modified to handle both upper and lower case:
# puts '>> Do you want me to print something? (y/n)'
# choice = gets.chomp
# puts 'something' if choice == 'y' || choice == 'Y' 

# Print something part 2
# puts '>> Do you want me to print something? (y/n)'
# choice = gets.chomp
# if choice == 'y' || choice == 'Y'
#   puts 'something'
# elsif choice == 'n' || choice == 'N'
# else puts "Try again.  Answer y or n!"
# end
#can also use a loop:
# choice = nil
# loop do
#   puts ">> do you want me to print something? (y/n)"
#   choice = gets.chomp.downcase
#   break if ['y', 'n'].include?(choice)
#   puts '>> invalid input, try again'
# end
# puts 'something' if choice == 'y'

# Launch school printer part 1
# loop do
#   puts "How many times do you want to hear how great Launch School is?  My suggestion is AT LEAST 3...Enter a number:"
#   times_to_print = gets.chomp.to_i
#   if times_to_print >= 3
#     times_to_print.times {puts "Launch School is great!"}
#     break
#   else
#     puts "No, no you can do better than that, try 3 or more!"
#   end
# end
# Their solution...:
# It only breaks out of the first loop if user enters 3 or more.
# The while loop prints "Launch School..." and decrements the user input until user input == 0
# A little more confusing that my solution imo
# number_of_lines = nil
# loop do
#   puts '>> How many output lines do you want? Enter a number >= 3:'
#   number_of_lines = gets.to_i
#   break if number_of_lines >= 3
#   puts ">> That's not enough lines."
# end

# while number_of_lines > 0
#   puts 'Launch School is the best!'
#   number_of_lines -= 1
# end

# Passwords
# PASSWORD = "whatuP!"
# loop do
#   puts "Enter your password"
#   password_attempt = gets.chomp
#   if password_attempt == PASSWORD
#     puts "Welcome!"
#     break
#   else
#     puts "Try again!"
#   end
# end

# User name and password
# PASSWORD = "whatuP!"
# USER_NAME = "LaunchSchool"
# loop do
#   puts "Enter your user name:"
#   username_attempt = gets.chomp
#   puts "Enter your password:"
#   password_attempt = gets.chomp
#   break if username_attempt == USER_NAME && password_attempt == PASSWORD
#   puts "Try again!"
# end

# puts "Welcome!"

# Dividing numbers

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end


# numerator = nil
# loop do
#   puts "Enter the numerator:"
#   numerator = gets.chomp
#   if valid_number?(numerator) == false
#     puts "Enter a valid number"
#     next
#   end
#   break
# end

# denominator = nil
# loop do
#   puts "Enter the denominator:"
#   denominator = gets.chomp
#   if denominator == "0"
#     puts "You can't divide by 0, silly"
#     next
#   elsif valid_number?(denominator) == false
#     puts "Enter a valid number"
#     next
#   end
#   break
# end

# puts "#{numerator} divided by #{denominator} equals #{(numerator.to_i / denominator.to_i)}"
#  Their solution:
# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# numerator = nil
# loop do
#   puts '>> Please enter the numerator:'
#   numerator = gets.chomp

#   break if valid_number?(numerator)
#   puts '>> Invalid input. Only integers are allowed.'
# end

# denominator = nil
# loop do
#   puts '>> Please enter the denominator:'
#   denominator = gets.chomp

#   if denominator == '0'
#     puts '>> Invalid input. A denominator of 0 is not allowed.'
#   else
#     break if valid_number?(denominator)
#     puts '>> Invalid input. Only integers are allowed.'
#   end
# end

# result = numerator.to_i / denominator.to_i
# puts "#{numerator} / #{denominator} is #{result}"
# Launch school printer part 2

# loop do
#   puts "How many times do you want to hear how great Launch School is?  My suggestion is AT LEAST 3...Enter a number (Q to quit):"
#   times_to_print = gets.chomp
#   break if times_to_print.to_s == 'Q' || times_to_print.to_s == 'q' # The reason you have to call .to_s or .to_i every time you need to access times_to_print is
#   if times_to_print.to_i >= 3                                       # Because you don't modify it up front on line 168 when you set the assignment.
#     times_to_print.to_i.times {puts "Launch School is great!"}      # And neither to_s or to_i are destructive
#     next
#   else
#     puts "No, no you can do better than that, try 3 or more! (Q to quit):"
#   end
# end
# Their solution:

# loop do
#   input_string = nil
#   number_of_lines = nil

#   loop do
#     puts '>> How many output lines do you want? ' 
#          'Enter a number >= 3 (Q to Quit):'

#     input_string = gets.chomp.downcase
#     break if input_string == 'q'

#     number_of_lines = input_string.to_i
#     break if number_of_lines >= 3

#     puts ">> That's not enough lines."
#   end

#   break if input_string == 'q'

#   while number_of_lines > 0
#     puts 'Launch School is the best!'
#     number_of_lines -= 1
#   end
# end

# Opposites attract

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end


# first_operand = nil
# second_operand = nil

# loop do


#   loop do
#     puts "Please enter a positive or negative integer (you must enter one of each!):"
#     first_operand = gets.chomp
#     if valid_number?(first_operand)
#       break
#     else
#       puts "Invalid input.  Try again."
#       next
#     end
#   end

#   loop do
#     puts "Please enter a positive or negative integer (you must enter one of each!):"
#     second_operand = gets.chomp
#     if valid_number?(second_operand)
#       break
#     else
#       puts "Invalid input.  Try again."
#       next
#     end
#   end

#   case
#   when first_operand.to_i > 0 && second_operand.to_i > 0
#     puts "Sorry. One integer must be positive, one must be negative."
#     puts "Please start over."
#     next
#   when first_operand.to_i < 0 && second_operand.to_i < 0
#     puts "Sorry. One integer must be positive, one must be negative."
#     puts "Please start over."
#     next
#   else break
#   end

# end

# puts "#{first_operand} + #{second_operand} is #{first_operand.to_i + second_operand.to_i}"
# Their solution:
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"




