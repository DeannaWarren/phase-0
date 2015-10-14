# Build a simple guessing game

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudo-code

# Input: an integer
# Output: :high if the guess is larger than the answer, :correct if the guess is equal to the answer, and :low if the guess is lower than the answer,
# Steps:
=begin
  define method initialize
    set answer to variable
  define method guess
    ask for user input, set to variable
    for input equal to answer return correct
    for input less than answer return low
    for input more than answer return high
  define solved? no argument
    if correct = true return true
=end

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess == @answer
      return :correct
    elsif @guess > @answer
      return :high
    else @guess < @answer
      return :low
    end
  end

  def solved?
    @guess == @answer
  end
end




# Re-factored Solution
# This is literally what they are asking I don't know how to make it better.

# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
    Instance variables can be called throughout the class, therefore
    representing a specific attribute of a object. They can be part of
     many methods using those attributes.
When should you use instance variables? What do they do for you?
   They're super cool. Using them means not defining a variable
   over every time a method is made, and even keeps you from having
   to ask for info more times.
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  I'm pretty ok with flow control overall. sometimes It's more complicated when I'm not sure what I'm doing, but if I have decent pseudocode or instructions, I don't struggle with it really.
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  It said it has to do with less processing power. I think it makes sense because it can be used in different ways, and a symbol can be used to reference information quickly. They don't have to be translated from strings and are always unique.
=end