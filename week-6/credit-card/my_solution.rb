# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [Deanna Warren, James Kirkpatrick ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digits integer
# Output: boolean
# Steps:

# CLASS
# initialize class with argument 16 integer
#   check that for length, if not 16, raise error
# run validate


# generate list
#     of single digits from CC number

# double each even-index
#     number (and 0)
#     0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
#     make all numbers single digit (ie 12 becomes 1 , 2)

# sum of all

# IF sum modulus 10 = 0
#       valid number


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(number)
    @number = number
    if number.to_s.length != 16
     raise ArgumentError, "That is not a valid length"
   end
  end

  def make_array
    @list = @number.to_s.split(//)
    @list.each do |int|
      @list[@list.index(int)] = int.to_i
    end
  end

  def double_evens
    counter = 0
    @list.each do |digit|
      if counter % 2 == 0 || counter == 0
        @list[counter] *= 2
      end
      counter +=1
    end
  end

  def isolate_double_digits
    counter = 0
    16.times do
      if @list[counter] > 9
        @list[counter] = @list[counter] % 10 +1
      end
      counter += 1
    end
  end

  def sum_all
    counter = 0
    @sum = 0
    16.times do
      @sum += @list[counter]
      counter +=1
    end
     @sum
  end

  def check_card
    self.make_array
    self.double_evens
    self.isolate_double_digits
    p self.sum_all % 10 == 0
  end

end

# Refactored Solution
#Did not find helpful methods for refactoring. Happy with our solution.

# Reflection

# What was the most difficult part of this challenge for you and your pair?
# => we had some trouble figuring out how to best split the double digit numbers to add them together.
# What new methods did you find to help you when you refactored?
# => I wasn't able to find anything that really improved on anything we were doing.
# What concepts or learnings were you able to solidify in this challenge?
# => I was able to improve on my iteration.
