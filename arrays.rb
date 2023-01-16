# New Pet
# pets = ['cat', 'dog', 'fish', 'lizard']

# my_pet = pets[2]
# puts "I have a pet #{my_pet}"

# More Than One
# pets = ['cat', 'dog', 'fish', 'lizard']

# my_pets = pets[2..3]
# puts my_pets
# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}"

# Free the Lizard
# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# my_pets.delete("lizard")
# p my_pets
#can also use the #pop method since lizard is the last element in the my_pets array.. my_pets.pop

# One Isn't Enough
# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# my_pets.pop
# my_pets << pets[1]
# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}"
# What Color Are You?
# colors = ['red', 'yellow', 'purple', 'green']
# colors.each { |color| puts "I'm the color #{color}!"}

# Doubled
# numbers = [1, 2, 3, 4, 5]
# doubled_numbers = numbers.map { |num| num * 2 }
# p doubled_numbers

# Divisible by Three
# numbers = [5, 9, 21, 26, 39]
# divby3_array = []
# numbers.select do |num| 
#   if num % 3 == 0
#     divby3_array << num
#   end
# end
# p odd_array

# divisible_by_3 = numbers.select do |num|
#                    num % 3 == 0
#                  end
# p divisible_by_3

# Important difference between #map and #select --> #map returns a new array with each element transformed based on the block's return value
#                                               --> #select returns a new array containing elements selected only if the block's return value evals true
# If you need to do something to all the elements, use map
# If you need to test (or select) all the elements that meet some condition, use select 

# Favorite Number (Part 1)
# [['Dave', 7], ['Miranda', 3], ['Jason', 11]]


# Favorite Number (Part 2)
# favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
# p favorites.flatten
# p favorites
# favorites.flatten!
# p favorites

# Are We The Same?
# array1 = [1, 5, 9]
# array2 = [1, 9, 5]

# p (array1 <=> array2) == 0
# can also just use array1 == array2