# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 2

def my_array_modification_method!(source, thing_to_modify)
  message = Array.new
  source.each do |x|
    if x.is_a?(Numeric)
      message << x.to_i + thing_to_modify.to_i
    elsif
      message << x
    end
  end
  source.replace(message)
  return source
end


def my_hash_modification_method!(source, thing_to_modify)
  source.each do |key,value|
    source[key] = value + thing_to_modify
  end
  p source
end


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.

# -- .each --
#   .each is a way to itterate an array or hash for each value inside it.
#   placing it on the array/hash itself, or on a variable/local variable name
#   for one, allows it to be called. it's called with an element in this fashion:
#       array.each do |element|
#         ### do something with element here
#       end
#   and that's how you use .each.

# --.is_a?()--
#   I'm going to start by passing you a link, b/c I still don't really understand
#   all of this:
#       http://stackoverflow.com/questions/10558504/can-someone-explain-the-class-superclass-class-superclass-paradox
#   So the basic conceit of .is_a?(Class) is  to ask an element if it's a certain
#   type of thing/ member of a specific class. I used Numeric because it's a
#   Superclass containing the classes of float and integer, but I'm not super
#   comfortable with that concept yet. Just know you can ask if something is
#   in a certain class, and so far Numeric (or Integer or Float) and String
#   are the most relevent.
#   Oh, it returns boolean, that's why I called it as the argument on an if
#   statement.

# --.to_i--
#     we've covered .to_i before, it attempts to turn the object handed to it
#     into an integer. it can convert a float into an integer, and a string
#     ainto an integer if that string contains only numbers. If the string
#     contains numbers and number characters it will parse together an
#     output of the numbers (ignoring any whitespace) until the first
#     non-numeric character and then stops parsing. Any numerics
#     after the non-numeric will be ignored.


# --.replace--
#     This takes the hash/array that it is called on and replaces it's
#     contents with the contents of an array that is the argument. The
#     original values are destroyed.

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
# researching is hard, but it's easier when you know what specific you're researching and the extra research to teach helps me understand what i'm using.