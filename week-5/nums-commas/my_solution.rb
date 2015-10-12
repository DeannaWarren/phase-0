# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? --> The Input is an integer, but will be taken as a string. It's going to look funny if you put in words.
# What is the output? (i.e. What should the code return?) --> it should return a number with properly formatted commas, aka 1,000 for 1000
# What are the steps needed to solve the problem?
=begin

Define a Method that Takes an Integer- main Method
  create an empty container
  put the input into the container as seperate digits
  count the digits in the containter
    Do integer division of the number of digits and 3, to find out how many commas are needed. Assign to variable x
    Take the modulus of the number of digits and 3, to find out how many digits before first comma. assign to variable y
  IF the modulus returned 0 and the number of digits isn't 0
    print print the first three numbers in the container. then print a comma and next three numbers in containter, repeated by one less than the number of digits divided by three.
  ELSEIF the modulus returned 1
    Print the first number in the containter.print a comma and next three numbers in containter, repeated by the number of digits divided by three.
  ELSEIF
    Print the first two numbers in the container. print a comma and next three numbers in containter, repeated by the number of digits divided by three.
  ELSE
    return a statement that there was no input
  END IF
=end

# 1. Initial Solution

# def seperate_comma(integer)
#   digits = Array.new
#   string_maker = Array.new
#   s_integer = integer.each
#   digits += s_integer.split ("")
#   num_fix = digits.length
#   x = num_fix / 3
#   y = num_fix % 3
#   if num_fix == 0
#     puts "There is no number!"
#   elsif num_fix <= 3
#     string_maker << digits
#   elsif y == 0
#     string_maker << digits[0] + digits[1] + digits[2]
#     counter = 1
#     (x-1).times do
#       string_maker << ","
#       string_maker << digits[0 +(3 * counter)]
#       string_maker << digits[1 +(3 * counter)]
#       string_maker << digits[2 +(3 * counter)]
#       counter += 1
#     end
#   elsif y == 1
#     string_maker << digits[0]
#     counter = 0
#     (x).times do
#       string_maker << ","
#       string_maker << digits[1 +(3 * counter)]
#       string_maker << digits[2 +(3 * counter)]
#       string_maker << digits[3 +(3 * counter)]
#       counter += 1
#     end
#   elsif y == 2
#     string_maker << digits[0] + digits[1]
#     counter = 0
#     x.times do
#       string_maker << ","
#       string_maker << digits[2 +(3 * counter)]
#       string_maker << digits[3 +(3 * counter)]
#       string_maker << digits[4 +(3 * counter)]
#       counter += 1
#     end
#   end
#   p string_maker.join
# end

# 2. Refactored Solution
def seperate_comma(integer)
  digits = Array.new
  string_maker = Array.new
  s_integer = integer.to_s
  digits += s_integer.each_char.to_a
  num_fix = digits.length
  repeat = num_fix / 3
  remainder = num_fix % 3
  if num_fix == 0
    puts "There is no number!"
  elsif num_fix <= 3
    string_maker << digits
  elsif remainder == 0
    string_maker << digits[0] + digits[1] + digits[2]
    counter = 1
    (repeat-1).times do
      string_maker << ","
      string_maker << digits[0 +(3 * counter)]
      string_maker << digits[1 +(3 * counter)]
      string_maker << digits[2 +(3 * counter)]
      counter += 1
    end
  elsif remainder == 1
    string_maker << digits[0]
    counter = 0
    repeat.times do
      string_maker << ","
      string_maker << digits[1 +(3 * counter)]
      string_maker << digits[2 +(3 * counter)]
      string_maker << digits[3 +(3 * counter)]
      counter += 1
    end
  elsif remainder == 2
    string_maker << digits[0] + digits[1]
    counter = 0
    repeat.times do
      string_maker << ","
      string_maker << digits[2 +(3 * counter)]
      string_maker << digits[3 +(3 * counter)]
      string_maker << digits[4 +(3 * counter)]
      counter += 1
    end
  end
  p string_maker.join
end

seperate_comma(3000000)
# 3. Reflection
#refactor inc to_a and edits to readability with variables
=begin

What was your process for breaking the problem down? What different approaches did you consider? --> I  wanted to just be able to insert the commas, but I'm not sure what kind of structure to use to do that. I have an idea that I don't have time to implement but I shall share here, which is to split it into an array using slice and negative indices so that I just have to rejoin it with commas. but I'm running behind, so I'll have to come back to that on my own time.
Was your pseudocode effective in helping you build a successful initial solution? --> It worked pretty good but it was difficult to write in the first place
What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how? -->  I used to_a instead of split, and that didn't change much. Then again, like I said, I might be able to make this much shorter, but I'm out of time.
How did you initially iterate through the data structure?  --> Mostly I just used times. not very interesting.
Do you feel your refactored solution is more readable than your initial solution? Why? --> yes. Instead of x and y i used descriptive variables. I feel that is I did my secondary solution it would be much shorter and more concise.

end