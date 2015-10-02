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