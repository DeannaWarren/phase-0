# Smallest Integer

# I worked on this challenge [by myself,

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  list_of_nums.sort!
  return list_of_nums[0]
end

#I am going to come back on my own to this challenge if I have time, but it is sunday and two hours in, I looked for methods.