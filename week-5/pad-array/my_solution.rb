
# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? an array, a minimum number of objects in array, and a "padded" default value.
# What is the output? (i.e. What should the code return?) an array of at least the minimum number of objects, filled where needed with the padded value
# What are the steps needed to solve the problem?

=begin

define destructive method with three arguments (an array, a minimum number of objects in array, and a "padded" default value optional.)
  IF the number of objects in the array is less than the minimum number
    make array equal to  array with padded value to make minimum number true
  ENDIF

define non destructive method with three arguments (an array, a minimum number of objects in array, and a "padded" default value optional.)
  IF the number of objects in the array is less than the minimum number
    return array with padded value to make minimum number true
  ENDIF

=end


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length || value == 0 then
    p array
  else
    diff = min_size - array.length
    diff.times {array << value}
    p array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  if min_size <= array.length || value == 0 then
    new_array = Array.new
    new_array << array
    p new_array
  else
    diff = min_size - array.length
    new_array = Array.new
    new_array << array
    diff.times {new_array << value}
    new_array.flatten!
    p new_array
  end
end

  array = [10,15, "Icecream"]

  p array.object_id

  pad(array,0)

  p array.object_id



# 3. Refactored Solution



# 4. Reflection
