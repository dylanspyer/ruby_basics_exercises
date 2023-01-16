# First Car
# car = {
#   type: 'sedan', 
#   color: 'blue', 
#   mileage: 80_000
# }


# Adding the Year
# car = {
#   type:    'sedan',
#   color:   'blue',
#   mileage: 80_000,
# }
# car[:year] = 2004
# p car


# Broken Odometer
# car = {
#   type:    'sedan',
#   color:   'blue',
#   mileage: 80_000,
#   year:    2003
# }

# car.delete(:mileage)
# p car


# What Color?
# car = {
#   type:    'sedan',
#   color:   'blue',
#   year:    2003
# }

# puts car[:color]

# Labeled Numbers
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# numbers.each { |k, v| puts "a #{k} number is #{v}"}


# Divided by Two
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# halved_array = numbers.map do |k, v|
#                  v / 2
#                end

# p halved_array



# Low, Medium, or High?
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# p numbers.select { |k, v| v < 25}


# Low or Nothing
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# low_numbers = numbers.select! do |key, value|
#                  value < 25
#                end

# p low_numbers
# p numbers
# This creates what is called an 'alias'.  Both low_numbers and numbers point to the same hash.  Same way Clark kent and Superman point to the same human.

# Multiple Cars
big_hash = 
{ 
car: {
         type: 'sedan',
         color: 'blue',
         year: 2003,
     },
truck: 
     { 
        type: 'pickup',
        color: 'red',
        year: 1998,
     }
}

p big_hash[:car]



# Which Collection?
car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}

car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]

p car

