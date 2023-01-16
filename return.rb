# Breakfast, lunch, or dinner
# def meal
#   return 'Breakfast'
# end

# puts meal
# => Breakfast

# Breakfast, lunch or dinner part 2
# def meal
#   'Evening'
# end

# puts meal
# => Evening

# Breakfast, lunch or dinner part 3
# def meal
#   return 'Breakfast'
#   'Dinner'
# end

# puts meal
# => Breakfast

# Breakfast, lunch or dinner part 4
# def meal
#   puts 'Dinner'
#   return 'Breakfast'
# end

# puts meal
# Dinner
# => Breakfast

# Breakfast, lunch or dinner part 5
# def meal
#   'Dinner'
#   puts 'Dinner'
# end

# p meal
# 'Dinner'
# => nil

# Breakfast, lunch or dinner part 6
# def meal
#   return 'Breakfast'
#   'Dinner'
#   puts 'Dinner'
# end

# puts meal
# => Breakfast

# Counting sheep part 1
# def count_sheep
#   5.times do |sheep|
#     puts sheep
#   end
# end

# puts count_sheep

# 0
# 1
# 2
# 3
# 4
# 5

# Counting sheep part 2
# def count_sheep
#   5.times do |sheep|
#     puts sheep
#   end
#   10
# end

# puts count_sheep
# 0
# 1
# 2
# 3
# 4
# 10

# Counting sheep part 3

# def count_sheep
#   5.times do |sheep|
#     puts sheep
#     if sheep >= 2
#       return
#     end
#   end
# end

# p count_sheep
# 0
# 1
# 2
# nil

# Tricky number
# def tricky_number
#   if true
#     number = 1 # variable assignment returns the value we assigned, so return value is 1 since tricky_number with no parameters always evals true
#   else
#     2
#   end
# end

# puts tricky_number