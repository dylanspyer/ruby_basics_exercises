# Reading Error Messages	
# def find_first_nonzero_among(numbers)
#   numbers.each do |n|
#     return n if n.nonzero?
#   end
# end

# # Examples

# find_first_nonzero_among(0, 0, 1, 0, 2, 0) #This is too many arguments
# find_first_nonzero_among(1) #This is passing in an integer.  We can't iterate over integers with `each`.  Needs to be ([1]) instead.


# Weather Forecast	

# def predict_weather
#   sunshine = ['true', 'false'].sample # This needs to be boolean instead of strings.  Strings always evaluate true.

#   if sunshine
#     puts "Today's weather will be sunny!"
#   else
#     puts "Today's weather will be cloudy!"
#   end
# end



# Multiply By Five	
# def multiply_by_five(n)
#   n * 5
# end

# puts "Hello! Which number would you like to multiply by 5?"
# number = gets.chomp # we never convert user's input to an integer, so the result will be a concatenation of the user's input

# puts "The result is #{multiply_by_five(number)}!"


# Pets	
# pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

# pets[:dog] = 'bowser' # assignment changes all the values.  since the value of dog is an array, was can change `=` to shovel `<<` and it will add the new value to the array

# p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}


# Even Numbers	
# numbers = [5, 2, 9, 6, 3, 1, 8]

# even_numbers = numbers.map do |n| # map is good for iterating through an array and doing something to every element, select evaluates a condition so it's better for this
#   n if n.even?
# end

# p even_numbers # expected output: [2, 6, 8]


# Confucius Says	
# def get_quote(person)
#   if person == 'Yoda'
#     return 'Do. Or do not. There is no try.'
#   end

#   if person == 'Confucius'
#     return 'I hear and I forget. I see and I remember. I do and I understand.'
#   end

#   if person == 'Einstein'
#     return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
#   end
# end

# puts 'Confucius says:'
# puts '"' + get_quote('Confucius') + '"'


# The reason 'Einstein' works and the previous ones don't is because the way we've written our if statement:
# For example, if we pass in 'Yoda', person == 'Yoda' evaluates true.  But then the method moves onto evaulate the next 2 if statements, which evaluate false.
# On the final line, 'Yoda' == 'Einstein' evaluates false, and thus returns `nil`.
# We can fix this by combining all the `if` statements into an `if/else` statement.
# Or by explictly using `return` after each `if` statement, which would make it so the lines beneath aren't executed.


# Account Balance	
# Financially, you started the year with a clean slate.

# balance = 0

# # Here's what you earned and spent during the first three months.

# january = {
#   income: [ 1200, 75 ],
#   expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
# }

# february = {
#   income: [ 1200 ],
#   expenses: [ 650, 140, 320, 46.7, 122.5 ]
# }

# march = {
#   income: [ 1200, 10, 75 ],
#   expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
# }

# # Let's see how much you've got now...

# def calculate_balance(month) # first figure out if this works by testing it individually, it does...
#   plus  = month[:income].sum
#   minus = month[:expenses].sum
#   plus - minus
# end

# [january, february, march].each do |month|
#   balance = calculate_balance(month) # then notice that the return value is the last evaluated month's balance.. because we're using assignment.. replace `=` with `+=`
# end

# puts balance


# Colorful Things	
# colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
# things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

# colors.shuffle!
# things.shuffle!

# i = 0
# loop do
#   break if i > colors.length
  
#   if i == 0
#     puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
#   elsif
#     colors[i] == nil || things[i] == nil #added this condition into the break statement, which makes it so array length doesn't matter.  as soon as one return value is nil, we break out of the loop.
#     break
#   else
#     puts 'And a ' + colors[i] + ' ' + things[i] + '.'
#   end
  
#   i += 1
# end


# Digit Product	

# def digit_product(str_num)
#   digits = str_num.chars.map { |n| n.to_i }
  
#   product = 1


#   digits.each do |digit|
#     product *= digit # we're multiplying by 0 because product = 0, so answer is always 0... so we change product to 1
#   end                # ((1 * 1) * (1 * 2) * (1 * 3) * (1 * 4) * (1 * 5))

#   # 1 * 2 * 3 * 4 * 5
#   product            # 120
# end

# p digit_product('12345')
# expected return value: 120
# actual return value: 0


# Warriors and Wizards	
# Each player starts with the same basic stats.

# player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# # Then the player picks a character class and gets an upgrade accordingly.

# character_classes = {
#   warrior: { strength:  20 },
#   thief:   { dexterity: 20 },
#   scout:   { stamina:   20 },
#   mage:    { charisma:  20 }
# }

# puts 'Please type your class (warrior, thief, scout, mage):'
# input = gets.chomp.downcase.to_sym

# player.merge!(character_classes[input]) #two things were wrong: 1 - we were trying to access a symbol with a string and 2 - we were using merge instead of merge! or variable assignment (see below)

# puts 'Your character stats:'
# puts player

# player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# # Then she picks a character class and gets an upgrade accordingly.

# character_classes = {
#   warrior: { strength:  20 },
#   thief:   { dexterity: 20 },
#   scout:   { stamina:   20 },
#   mage:    { charisma:  20 }
# }

# puts 'Please type your class (warrior, thief, scout, mage):'
# input = gets.chomp.downcase

# player = player.merge(character_classes[input.to_sym])

# puts 'Your character stats:'
# puts player