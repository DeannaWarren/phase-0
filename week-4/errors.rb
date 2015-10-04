# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."

# # This error was analyzed in the README file.
# # # --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# # This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
## error.rb

# 2. What is the line number where the error occurs?
#170

# 3. What is the type of error message?
  #syntax error

# 4. What additional information does the interpreter provide about this type of error?
  # unexpected end of input- expecting keyword end

# 5. Where is the error in the code?
  #The error was that the line 14 while loop never resolved into an end.

# 6. Why did the interpreter give you this error?
  #When the interperter wanted a keyword 'end' it looked through the entire document without finding it, so It sent an error and cited the last line of code as the last place to look for 'end'

# # --- error -------------------------------------------------------

# south_park

# # 1. What is the line number where the error occurs?
# 41
#
# 2. What is the type of error message?
# name error
#
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method
# #
# # 4. Where is the error in the code?
# south_park is being called but doesn't mean anything to the computer
# #
# # 5. Why did the interpreter give you this error?
# #Because south_park hasn't been defined.

# --- error -------------------------------------------------------

# cartman()

# # 1. What is the line number where the error occurs?
# 59
# #
# # 2. What is the type of error message?
# NoMethodError
# #
# # 3. What additional information does the interpreter provide about this type of error?
# undefined method for 'cartman'
# #
# # 4. Where is the error in the code?
#   cartman has not been defined
# #
# # 5. Why did the interpreter give you this error?
#   #the computer doesn't know how to read it since it's undefined

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# # 1. What is the line number where the error occurs?
# 82
# #
# # 2. What is the type of error message?
# Argument Error
# #
# # 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments
# #
# # 4. Where is the error in the code?
# there is an argument passed when cartman_phrase doesn't accept one
# #
# # 5. Why did the interpreter give you this error?
# #It doesn't know what to do with the information

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# # 1. What is the line number where the error occurs?
# 105
# #
# # 2. What is the type of error message?
# argument error
# #
# # 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments
# #
# # 4. Where is the error in the code?
# method is not passed an argument when it requires one
# #
# # 5. Why did the interpreter give you this error?
# #it doesn't know what to do with the method when passed nil



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# # 1. What is the line number where the error occurs?
# 130
# #
# # 2. What is the type of error message?
# Argument error
# #
# # 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments
# #
# # 4. Where is the error in the code?
# only one variable is passed when two are required
# #
# # # 5. Why did the interpreter give you this error?
# the interperter cannot fill in the second variable
# #

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# # 1. What is the line number where the error occurs?
# 150
# #
# # 2. What is the type of error message?
# TypeError
# #
# # 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# #
# # 4. Where is the error in the code?
# This asked five to be multiplied by a string amount of times, which makes no sense
# #
# # 5. Why did the interpreter give you this error?
# because it doesn't make sense so the computer hates it's life and says NOPE
# #

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# # 1. What is the line number where the error occurs?
# 170
# #
# # 2. What is the type of error message?
# Zero Division Error
# #
# # 3. What additional information does the interpreter provide about this type of error?
# divided by zero
# #
# # 4. Where is the error in the code?
# you can't divide by zero
# #
# # 5. Why did the interpreter give you this error?
# even computers cannot divide by zero
# #

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# # 1. What is the line number where the error occurs?
# 191
# #
# # 2. What is the type of error message?
# Load Error
# #
# # 3. What additional information does the interpreter provide about this type of error?
# cannot load file
# #
# # 4. Where is the error in the code?
# it doesn't exist
# #
# # 5. Why did the interpreter give you this error?
# it couldn't find the relative file that was being looked for.
# #


# --- REFLECTION -------------------------------------------------------
# # Write your reflection below as a comment.

# Which error was the most difficult to read?
# The first error was the most difficult because I thought the error was with the whole file not a specific case.

# How did you figure out what the issue with the error was?
#   That one I had to ask for help with because I thought that the entire excersize was broken, but once someone let me know it wasn't the file itself I was able to find it and understand.

# Were you able to determine why each error message happened based on the code?
#   Yep!

# When you encounter errors in your future code, what process will you follow to help you debug?
#   I'll look for the line to start, and if that doesn't yeild clues to that error message, I will use what it wants to find the error. Then fix it.