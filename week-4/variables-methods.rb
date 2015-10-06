#Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.
puts "Hello! What is your First Name?"
first_name=gets.chomp
puts "That's a nice name! How about your last name?"
last_name=gets.chomp
puts "Hey, do you have a Middle name in there somewhere?"
middle_name=gets.chomp
puts "So your name is " + first_name + " " + middle_name + " " + last_name + ", huh? That's a great name!!"
#Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.
puts "What is your favorite number, " +first_name+ "?"
user_choice = gets.chomp.to_i
bigger_better= user_choice + 1
puts first_name +", " + user_choice.to_s + " is your favorite? Well my favorite is " + bigger_better.to_s + " which is bigger and therefore better!"

=begin
How do you define a local variable?
    a variable called within a method
How do you define a method?
  say def for define, give it a name, give it something to do, end it, call when needed
What is the difference between a local variable and a method?
  local variable is used within a method, a method is the means, variable is the ends to the means.
How do you run a ruby program from the command line?
  ruby file_name.rb
How do you run an RSpec file from the command line?
  rspec spec_file_name.rb (is relative linked to ruby file)
What was confusing about this material? What made sense?
I honestly don't remember becauase I forgot to do this for ages sorry

https://github.com/DeannaWarren/phase-0/blob/master/week-4/address/my_solution.rb
https://github.com/DeannaWarren/phase-0/blob/master/week-4/math/my_solution.rb



=end