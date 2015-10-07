# Pad an Array

# I worked on this challenge [with Ovi]

# I spent [3] hours on this challenge.


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
=begin

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
    new_array.flatten!
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

=end


# 3. Refactored Solution
  #I did not refactor this, it is my pair's solution. However, it contains literally everything I thought of doing when I got to refactoring and more. It's beautiful.
def pad!(array, min_size, value = nil) #destructive
 if min_size <= array.length then
     return array
 else
  (min_size - array.length).times {array << value}
 end
 return array
end

def pad(array, min_size, value = nil) #non-destructive
 new_array = Array.new
 new_array += array
 if min_size <= new_array.length then
     return new_array
 else (min_size - array.length).times {new_array << value}
 end
 return new_array
end

# 4. Reflection

=begin

--Were you successful in breaking the problem down into small steps?
  I felt pretty happy with my pseudocode
--Once you had written your pseudocode, were you able to easily translate it into
 code? What difficulties and successes did you have?
  It was pretty easy to make into code, although I did have a moment of doubt
  about how to make the destructive vs non-destructive numbers.
--Was your initial solution successful at passing the tests? If so, why do you
think that is? If not, what were the errors you encountered and what did you do
to resolve them?
  it wasn't successful in passing all of the tests. we had some trouble with
  passing the array so that there wasn't a nested array.
--When you refactored, did you find any existing methods in Ruby to clean up your
code?
  refactoring actually lessened the methods! We were able to remove flatten by
  making new_array equal to the original array.
--How readable is your solution? Did you and your pair choose descriptive variable names?
  I think our variable names are descriptive, and the code seems pretty readable,
   but that might be my having had a hand in writing it!
--What is the difference between destructive and non-destructive methods in your
own words?
  A destructive method changes the value of what it is passed to it. A non-
  destructive method takes the value and outputs a changed version without
  changing the original value.

=end