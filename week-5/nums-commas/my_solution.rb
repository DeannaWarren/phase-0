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

def seperate_comma(integer)
  digits = Array.new
  string_maker = Array.new
  s_integer = integer.to_s
  digits += s_integer.split ("")
  num_fix = digits.length
  x = num_fix / 3
  y = num_fix % 3
  if num_fix <= 3
    string_maker << digits
  elsif y == 0
    string_maker << digits[0] + digits[1] + digits[2]
    counter = 1
    (x-1).times do
      string_maker << ","
      string_maker << digits[0 +(3 * counter)]
      string_maker << digits[1 +(3 * counter)]
      string_maker << digits[2 +(3 * counter)]
      counter += 1
    end
  elsif y == 1
    string_maker << digits[0]
    counter = 0
    (x).times do
      string_maker << ","
      string_maker << digits[1 +(3 * counter)]
      string_maker << digits[2 +(3 * counter)]
      string_maker << digits[3 +(3 * counter)]
      counter += 1
    end
  elsif y == 2
    string_maker << digits[0] + digits[1]
    counter = 0
    x.times do
      string_maker << ","
      string_maker << digits[2 +(3 * counter)]
      string_maker << digits[3 +(3 * counter)]
      string_maker << digits[4 +(3 * counter)]
      counter += 1
    end
  end
  p string_maker.join
end

seperate_comma(100000000000000000)

# 2. Refactored Solution
#notes to self from chap 10 WGR: check out [.each_char, .join, .split]



# 3. Reflection