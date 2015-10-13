# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:a list of values
# Output: a random value from within the list of values
# Steps:
# initialize
#   take list of values and set it equal to a variable to contain them
#   take the number of values and set it equal to number of sides to call on

# sides
#   output number of values

# roll
#   generate a random number between 1 and number of values
#   use that number to call the index in the list of values
#   output the value called from the index


# Initial Solution

# class Die
#   def initialize(values)
#     @values = values
#     @sides = @values.length
#     raise ArgumentError, "Wrong number of Arguments: Cannot Accept Less than One Value" if @sides == 0
#   end

#   def sides #no argument
#     p @sides
#   end

#   def roll
#     roll = Random.new
#     num = roll.rand(@sides) -1
#     output = @values[num]
#     p output
#   end
# end

# Refactored Solution

## I was happy with my solution so I added a feature that if you specify a number for roll, it will roll that many die. I'm a dork, but I saw how so I went for it.

class Die
  def initialize(values)
    @values = values
    @sides = @values.length
    raise ArgumentError, "Wrong number of Arguments: Cannot Accept Less than One Value" if @sides == 0
  end

  def sides #no argument
    p @sides
  end

  def roll (num_die = 1)
    num_die.times do
      roll = Random.new
      num = roll.rand(@sides) -1
      output = @values[num]
      p output
    end
  end
end

# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#   Not really. All I had to do was pass it an array instead of making a
#range, then call an index point. Besides that it's basically identical.

# What does this exercise teach you about making code that is easily changeable or modifiable?
#   It's not as hard as it sounds.

# What new methods did you learn when working on this challenge, if any?
#   n/a

# What concepts about classes were you able to solidify in this challenge?
#   I actually was able to do this fairly easily, which really just solidified,
 # and even showed for the first time, that I understood it. Last weeks was so
#     intimidating, but now I know that I understand.