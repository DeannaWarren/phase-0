# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# ***************************
# The usual example asks the developer to write a program which prints out each number from 1 to 100. But for multiples of 3 print 'Fizz' instead of the number and for multiples of 5 print 'Buzz'. For numbers which are multiples of both 3 and 5 print 'FizzBuzz'.

# This exercise has a little twist. Write a method called super_fizzbuzz which takes as its input an Array of integers.

# It should return a "fizzbuzzed" Array, i.e., the array is identical to the input with the following substitutions:

# Multiples of 3 should be replaced with the string "Fizz"
# Multiples of 5 should be replaced with the string "Buzz"
# Multiples of 15 should be replaced with the string "FizzBuzz"
# ***************************

# Pseudocode
=begin

create method called super_fizzbuzz which accepts an Array as input
  create a new array
  for each item in the array, place the following into the new array in order
    if divisible by both 5 and 3, place the string "FizzBuzz"
    if divisible by 3, place the string "Fizz"
    if divisible by 5, place the string "Buzz"
    if non of these, place the original value
  return the now full new array

=end
# Initial Solution

# def super_fizzbuzz(array)
#   # create a new array
#   new_array = []
#   # for each item in the array, place the following into the new array in order
#   array.each do |number|
#   #   if divisible by both 5 and 3, place the string "FizzBuzz"
#       if number % 3 == 0 && number % 5 == 0
#         new_array.push("FizzBuzz")
#   #   if divisible by 3, place the string "Fizz"
#       elsif number % 3 == 0
#         new_array.push("Fizz")
#   #   if divisible by 5, place the string "Buzz"
#       elsif number % 5 == 0
#         new_array.push("Buzz")
#   #   if non of these, place the original value
#       else
#         new_array.push(number)
#       end
#     end
#   # return the now full new array REMOVE P
#   p new_array
# end


# Refactored Solution


def super_fizzbuzz(array)
  # create a new array
  new_array = []
  # for each item in the array, place the following into the new array in order
  array.each do |number|
  #   if divisible by both 5 and 3, place the string "FizzBuzz"
      if number % 15 == 0
        new_array.push("FizzBuzz")
  #   if divisible by 3, place the string "Fizz"
      elsif number % 3 == 0
        new_array.push("Fizz")
  #   if divisible by 5, place the string "Buzz"
      elsif number % 5 == 0
        new_array.push("Buzz")
  #   if non of these, place the original value
      else
        new_array.push(number)
      end
    end
  # return the now full new array REMOVE P
  p new_array
end


# Reflection
=begin

What concepts did you review or learn in this challenge?
  > I remembered that / is not % and that I can be a bonehead sometimes.
What is still confusing to you about Ruby?
  >This was actually pretty easy, but I need to finish this week. I plan on coming back to the other assignment on Sat/Sun as I can, but I'd like to finish tonight due to giving blood tomorrow, which leaves me rather fuzzy headed for a day or two.
What are you going to study to get more prepared for Phase 1?
  >I'm going to go back and work on composition because it's really really confusing.

=end
