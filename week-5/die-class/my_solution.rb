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
#... i'm happy with my solution



# 4. Reflection
# What is an ArgumentError and why would you use one? --> Argument errors are for telling a user that they didn't do something right and therefore the code won't run properly.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them? --> random was AWESOME.I'm still not 100% sure I understand why it's implemented that way, but it's ok.
# What is a Ruby class? --> a class is a type of object with certain attributes.
# Why would you use a Ruby class? --> a ruby class is awesome for things like dice, that have different actions that can be applied, but are relevent to each other.
# What is the difference between a local variable and an instance variable? --> local is in a method, instance is in a class
# Where can an instance variable be used? --> in class methods