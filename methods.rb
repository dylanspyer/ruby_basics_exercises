# Print me part 1
# def print_me
#   puts "I'm printing within the method!"
# end

# print_me

# Print me part 2
# def print_me
#   "I'm printing the return value!"
# end

# puts print_me

# Greeting through methods part 1

# def hello
#   "Hello"
# end

# def world 
#   "World"
# end

# puts "#{hello} #{world}"

# Greeting thorugh methods part 2

# def hello 
#   "Hello"
# end

# def world 
#   "World"
# end

# def greet
#   "#{hello} #{world}"
# end

# puts greet

# Make and model

# def car(make, model)
#   puts "#{make} #{model}"
# end

# car('Buick', 'Regal')

# Day or night
# daylight = [true, false].sample

# def time_of_day(boolean) # changed the parameter to boolean to demonstrate scope, rather than naming it daylight (which would be a different variable than daylight outside of method)
#   if boolean
#     puts "It's day!"
#   else
#     puts "It's night!"
#   end
# end

# time_of_day(daylight)

# Naming animals
# def dog(name)
#   return name
# end

# def cat(name)
#   return name
# end

# puts "The dog's name is #{dog('Spot')}."
# puts "The cat's name is #{cat('Kitty')}."

# Name not found
# def assign_name(name='Bob')
#   name
# end


# puts assign_name('Kevin') == 'Kevin'
# puts assign_name == 'Bob'

# Multiply the sum
# def add(a, b)
#   a + b
# end

# def multiply(a, b)
#   a * b
# end

# puts add(2, 2) == 4
# puts add(5, 4) == 9
# puts multiply(add(2, 2), add(5, 4)) == 36

# Random sentence
# names = ['Dave', 'Sally', 'George', 'Jessica']
# activities = ['walking', 'running', 'cycling']

# def name(names)
#   names.sample
# end

# def activity(activities)
#   activities.sample
# end

# def sentence(name, activity)
#   "#{name} likes #{activity}"
# end


# puts sentence(name(names), activity(activities))
