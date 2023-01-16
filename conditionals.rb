# Unpredictable weather part 1
# sun = ['visible', 'hidden'].sample
# if sun == 'visible'
#   puts "The sun is so bright"
# else
#   puts "Can't see the sun"
# end
# Unpredictable weather part 2
# sun = ['visible', 'hidden'].sample
# unless sun == 'visible'
#   puts "The clouds are blocking the sun!"
# else
#   puts "The sun is so bright"
# end
# Unpredictable weather part 3
# sun = ['visible', 'hidden'].sample
# puts "The sun is so bright" if sun == 'visible' 
# puts "The clouds are blocking the sun" unless sun == 'visible'

# True or false
# boolean = [true, false].sample

# boolean ? puts("I'm true!") : puts("I'm false!")

# Truthy number
# number = 7

# if number
#   puts "My favorite number is #{number}." # this will print because number = 7 evaluates true
# else
#   puts "I don't have a favorite number."
# end

# Stoplight part 1
# stoplight = ['green', 'yellow', 'red'].sample
# case stoplight
# when 'green'
#   puts "Go!"
# when 'yellow'
#   puts "Slow!"
# when 'red'
#   puts "Stop!"
# end  



# Stoplight part 2
# stoplight = ['green', 'yellow', 'red'].sample

# if stoplight == 'green'
#   puts "Go!"
# elsif stoplight == 'yellow'
#   puts "Slow!"
# else 
#   puts "Stop!"
# end
# case statement is better here because we compare multiple values to the same case.  We compare stoplight to 3 different values.

# Sleep alert
# status = ['awake', 'tired'].sample

# alert = if status == 'awake'
#           "Be productive!"
#         else
#           "Go to sleep!"
#         end

# puts alert

# Cool numbers

# number = rand(10)

# if number == 5
#   puts '5 is a cool number!'
# else
#   puts 'Other numbers are cool too!'
# end

# Stoplight part 3
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end