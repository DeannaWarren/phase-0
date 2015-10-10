# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output: a random number between 1 and the number of sides
# # Steps:
# turn single argument into instance variable

# takes an argument for how many sides a die must have
#     output array of all integers between 1 and number of sides?
 #     (possibly a range instead, research)

# for the array/range of numbers given by sides
#    pick a RANDOM number to output


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#   end

#   def sides #no argument
#     @sides = (1..@sides).to_a
#   end

#   def roll #no argument
#     this = Random.new
#     this.rand(@sides)
#   end
# end
class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError, "WTF How can you have less than one side on a die?" if @sides < 1
  end

  def sides #no argument
    p @sides
  end

  def roll #no argument
    something = Random.new
    num = something.rand(@sides) +1
    p num
  end
end


# 3. Refactored Solution







# 4. Reflection