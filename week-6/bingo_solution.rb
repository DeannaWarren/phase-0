# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

=begin
TABLE OF CONTENTS (so much code)
Pseudocode - line X
Initial Solution- line X
Refactored Solution- line X
Reflection- line X
=end

# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #call the random method
  # choose a letter from a list of letters (b i n g o) using random
  # choose a number from a range 1-100 using random

# Check the called column for the number called.
  #for each item in the array (so each array within the main one)
    # check the item at index equal to the letter ie 0 for b ect

# If the number is in the column, replace with an 'x'
  # transform found number into string and replace with "x"

#REMOVED BELOW METHOD BECAUSE I DON'T KNOW WHY IT'S THERE
#IT'S NOT IN THE INSTRUCITONS WHY IS IT HERE
# Display a column to the console
  #look at the letter pertaining to the column
  #display the appropriate index from each inner hash

# Display the board to the console (prettily)
  #for each index between 0 and 4, print inner list on new line

# Initial Solution

# class BingoBoard

#   def initialize(board) # creates new bingo board
#     @bingo_board = board
#     #add relevent variables below
#     @B = ["B",0]
#     @I = ["I",1]
#     @N = ["N",2]
#     @G = ["G",3]
#     @O = ["O",4]
#     @letters = [@B,@I,@N,@G,@O]
#   end

#   def caller# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#     bucket = Random.new #call the random method
#     @call = Array.new
#     @call << [@B,0]#@letters[bucket.rand(0..4)]# choose a letter
#     @call << 50#bucket.rand(1..100)# choose a number
#     puts "caller"
#     p @call
#     p "#{@call[0][0]}, #{@call[1]}"
#   end

#   def checker# Check the called column for the number called.
#     puts "checker"
#     column = @call[0][1] # column = index matched to letter
#     number = @call[1] #number to look for
#     @correct_tile = Array.new
#     for row in 0..4 do#for each inner array
#       puts "checking #{row},#{column}"
#       # check the item at index equal to the letter below
#        if @bingo_board[row][column] == number
#         @correct_tile << row
#         @correct_tile << column
#         puts "true for #{@correct_tile}"
#       end
#     end
#     p @correct_tile
#    end

#   def mark_correct# If the number is in the column, replace with an 'x'
#   # transform found number into string and replace with "x"
#     if @correct_tile != []
#       @bingo_board[@correct_tile[0][1]][@correct_tile[1]] = "X"
#     end
#   end

#    def method# Display the board to the console (prettily)
#     for row in 0..4 do
#       print @bingo_board[row][0]
#       for place in 1..4 do
#         print " , "
#         print @bingo_board[row][place]
#       end
#       puts
#     end
#    end

# end

# Refactored Solution

class BingoBoard
  #mostly cleaning up my notes and fixing method names

  def initialize(board)
    @bingo_board = board
    @letters = [["B",0],["I",1],["N",2],["G",3],["O",4]]
  end

  def call
    bucket = Random.new
    @call = Array.new
    @call << @letters[bucket.rand(0..4)]
    @call << bucket.rand(1..100)
    p "#{@call[0][0]}, #{@call[1]}"
  end

  def check
    column = @call[0][1]
    number = @call[1]
    @correct_tile = Array.new
    for row in 0..4 do
      puts "checking #{row},#{column}"
       if @bingo_board[row][column] == number
        @correct_tile << row
        @correct_tile << column
        puts "true for #{@correct_tile}"
      end
    end
    if @correct_tile != []
      @bingo_board[@correct_tile[0][1]][@correct_tile[1]] = "X"
    end
   end

   def display
    for row in 0..4 do
      print @bingo_board[row][0]
      for place in 1..4 do
        print " , "
        print @bingo_board[row][place]
      end
    end
   end

end


#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
    I'm slowly getting more comfortable with pseudocoding, and it wasn't as difficult as I thought it would be.
What are the benefits of using a class for this challenge?
    I'm not sure how else you really would do this challenge. I suppose with heavy use of symbols and the like. But this seems neater
How can you access coordinates in a nested array?
    Honestly, that was one that gave me trouble. Refer to the entire nested element as a single index, and then index within that until you've reached your desired value. See above for specifics, I did it a lot.
What methods did you use to access and modify the array?
    Questions like this bug me because it's literally right there. I mostly used for and if loops, and I think this was the project I was going to look into each_with_index on, but it's a bit late now and I'm happy with it as a MVP so that's water under the bridge.
How did you determine what should be an instance variable versus a local variable?
    If I needed it outside of that method or not.
What do you feel is most improved in your refactored solution?
    I realized I could do a nested array istead of listing small arrays for each letter and then a variable holding all of them. So that was cool.
=end