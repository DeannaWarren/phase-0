# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Daniel]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array of stuff
# What is the output? (i.e. What should the code return?) an array, containing most frequent appearing values
# What are the steps needed to solve the problem?

=begin
define a method to do the thing that takes an array
  create a new hash with array values as keys
  feed the array into hash, add one to value for each instance
  check which values from key/value pair are highest
  place those keys into new array
  return the new array
=end


# 1. Initial Solution
# def mode array
#   hash = Hash.new(0)
#   array.each do |x|
#     hash[x] += 1
#   end
#   new_array=Array.new
#   hash.each do |k, v|
#     if v == hash.values.max
#       new_array << k
#     end
#   end
#   return new_array
# end


# 3. Refactored Solution

def mode array
  hash = Hash.new(0)
  array.each do |x|
    hash[x] += 1
  end
  new_array=Array.new
  hash.each do |key, value|
    if value == hash.values.max
      new_array << key
    end
  end
  return new_array
end

mode [1,2,2,2,2,2,3,3,3,3,3]

# 4. Reflection
### Which data structure did you and your
 pair decide to implement and why?--->We
 decided to use a hash that funneled into
  an array for display.
### Were you more successful breaking this
 problem down into implementable pseudocode
  than the last with a pair?--> We did an
  awesome job breaking this down, considering
  we were very uncertain of how to accomplish\
   some of those steps.
### What issues/successes did you run into when
 translating your pseudocode to code?--> we had a
 difficult time discovering how to translate
  some of the ideas. max was an awesome one
   that took a minute to figure out implementation.
### What methods did you use to iterate through
the content? Did you find any good ones when
you were refactoring? Were they difficult to
implement.--> we had a little trouble getting
 the hang of ordering methods onto hash, but
 we got there. We tried a bunch of things
 refactoring, but we weren't able to neatly change
  anything without just tearing it down and redoing
  it, and that wasn't working.