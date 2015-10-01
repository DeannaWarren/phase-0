#What does puts do?
puts simply writes what follows it to the console.
#What is an integer? What is a float?
An integer is a whole number, while a float is a number including decimal points.
#What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Dividing by floats gives you a accurate answer for solutions that fall between integers. Integer division rounds down the number to a whole number, thereby giving you the last whole number that gives you what you need. This can be important in things like finding out how many times you can drive to the store on a single tank of gas. Part of a trip wouldn't be helpful, so the float would be superfluous.

```puts 'The number of hours in a year is '
puts 24*365

puts 'The number of minutes in a decade is '
puts (((60*24)*365)*10)```

-[4.2.1](https://github.com/DeannaWarren/phase-0/blob/master/week-4/defining-variables.rb)
-[4.2.2](https://github.com/DeannaWarren/phase-0/blob/master/week-4/simple-string.rb)
-[4.2.3](https://github.com/DeannaWarren/phase-0/blob/master/week-4/basic-math.rb)

#How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby handles the basic mathmatics by using either integers or floats and ... doing the math? I'm afraid I don't understand the question.
#What is the difference between integers and floats?
Integers are whole numbers and floats are numbers that include (either implicitly or explicitly) decimal digits. i.e. 3 vs 3.000
#What is the difference between integer and float division?
Integer division will always result in a integer answer, to the nearest lower integer (long division without the remainder). Float division is the proper answer that results in a di
#What are strings? Why and when would you use them?
Strings are not numbers. Like, anything that isn't numbers. This answer is a string. Generally speaking, a string is used to print words to the console, and to edit numbers (for example, place a decimal point in a money amount mathmatically calculated using integers and pennies into a recognizable amount.)
#What are local variables? Why and when would you use them?
Local variables are used in a specific instance/peice of code. For example the variable My_Name will be different for each input the code recieves, and also for each different code it is used in.
#How was this challenge? Did you get a good review of some of the basics?
I like this challenge because it was a direct reference to my abilities and good practice.