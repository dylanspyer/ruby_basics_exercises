# Exercise 1
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# 7 because assignment operators don't mutate variables, they bind the variable to a new object.

# Exercise 2
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# 7 because local a outside the method cannot be changed by local a within the scope of my_value method.  Methods are self contained.

# Exercise 3
a = 7

def my_value(b)
  a = b # this initializes a new local variable a, local to the my_value method... it doesn't reassign the other local variable a
end

my_value(a + 5)
puts a

# 7

# Exercise 4
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# Xyzzy I got this one wrong, actual output is Xy-zy
# Even though this looks close to the first few examples, it's different because strings are mutable.  
# The method String#[] is a mutating method - it modifies the string.
# I should have recognized that String#[] is a method and then looked it up in the Ruby docs

# Exercise 5
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
# a = "Xyzzy" because assignment operators don't mutate variables.  We assign a completely to string to `b`.
# Assignment doesn't change the value of an object, it create a NEW object and store a reference to that object in the variable on the left.
# Unlike in the example above where we call a method that destructively modifies the argument.

# Exercise 6
a = 7

def my_value(b)
  b = a + a 
end

my_value(a)
puts a
# 7.  Assignment doesn't mutate the variable `a`.
# Got this one wrongish.  puts a does return 7, but my_value(a) returns an error because:
# `a` is undefined within the scope of my_value...
# I've been confusing global variables since I learned JS first.  In ruby, global variables are denoted with a $.  
# Just because it's outside of a method, doesn't make it a global variable
# It would be different if this were a block, proc, or lamba.  Local variables can be seen with those.
# Also if you used global variables, it wouldn't produce an error, but the value of $a in that case would still be 7.

# Exercise 7
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# 3
# Blocks don't create their own scope.  
# When you iterate through the array and assign `a` to element, the local variable `a` actually does get reassigned with each iteration

# Exercise 8
array = [1, 2, 3]

array.each do |element|
  a = element
  puts a
end

puts a
# 3
# It's the same thing as a above except you initally defining `a` within the block itself
# Wrong.  Error for undefined local variable `a`.  Why?
# a is definied within the context of the block, however, because it's a defined inside of the block, it's not available outside of the block.
# blocks can reassign outer variables, but you can't access variables initialized within blocks from outside of the block.
# Need to think through these more because the answer seems straightforward when I read the explanation

# Exercise 9
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
# 7
# You're modifying the array, and |a| is local to the block
# Answer was right, explanation was wrong.
# This is an example of shadowing.  Shadowing occurs when a block arugment hides a local vairable that is defined outside the block.
# Each doesn't the return value of its block, it simply returns the original array that it was called on

# Exercise 10
a = 7
array = [1, 2, 3]

def my_value(ary) #method my_value with parameter `ary`
  ary.each do |b| 
    a += b # a = a + b
  end
end

my_value(array)
puts a
# I think this is an error.
# Correct but didn't say the error: undefined method `+' for nil:NilClass (NoMethodError)
def my_value(ary, a)
  ary.each do |b|
    a += b
    puts a
  end
end
# this works because we can access a local variable initalized outside of a method by passing in that variable as an argument
# 8 (8 = 7 + 1) new `a` is 8
# 10 (10 = 8 + 2) new `a` is 10... 2 is the second element in the array
# 13 (13 = 10 + 3) new `a` is 13... 3 is the third element in the array
# => [1, 2, 3] because each doesn't alter the array

# Exercise 11

