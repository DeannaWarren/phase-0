#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.
###
#Instructions
#ou will have 2 classes, NameData and Greetings. NameData will initialize a @name variable with your name. Greetingswill initialize an instance of NameData and include a method to display a salutation to the console.
# It should look something like this:
# greet = Greetings.new
# greet.hello # puts "Hello Student! How wonderful to see you today."
###
class NameData
  attr_accessor :name
  def initialize (name)
    :name = name
  end
end


class Greetings
  attr_accessor :name
  def initialize
    :name
  end
  def hello
    puts "Hello! This is a greeting." + :name
  end
end

NameData.new("deanna")
greet = Greetings.new
greet.hello


# Reflection
=begin
(I am aware my answers are short. I'm trying not to rabbit hole on my reflections anymore.)
R1
What are these methods doing?
 =>creating and changing information.
How are they modifying or returning the value of instance variables?
=> there is a method for each change that takes an argument and makes it equal to the instance variable that can be called.

R2
What changed between the last release and this release?
=> attr replaced the what_is_age method
What was replaced?
=> see above
Is this code simpler than the last?
=> yes.

R3
What changed between the last release and this release?
=> change_my_age was replaced with an attr_writer
What was replaced?
=> see above
Is this code simpler than the last?
=> yes

ALL
What is a reader method?
=>
What is a writer method?
=>
What do the attr methods do for you?
=>
Should you always use an accessor to cover your bases? Why or Why not?
=>
What is confusing to you about these methods?
=>

=end