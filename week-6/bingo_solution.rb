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

#REMOVED BELOW DISPLAY BECAUSE I DON'T KNOW WHY IT'S THERE
#IT'S NOT IN THE INSTRUCITONS WHY IS IT HERE
# Display a column to the console
  #look at the letter pertaining to the column
  #display the appropriate index from each inner hash

# Display the board to the console (prettily)
  #for each index between 0 and 4, print inner list on new line

# Initial Solution

class BingoBoard

  def initialize(board) # creates new bingo board
    @bingo_board = board
    #add relevent variables below
    @B = ["B",0]
    @I = ["I",1]
    @N = ["N",2]
    @G = ["G",3]
    @O = ["O",4]
    @letters = [@B,@I,@N,@G,@O]
  end

  def caller# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
    bucket = Random.new #call the random method
    @call = Array.new
    @call << [@B,0]#@letters[bucket.rand(0..4)]# choose a letter
    @call << 44#bucket.rand(1..100)# choose a number
    puts "caller"
    p @call
    p "#{@call[0][0]}, #{@call[1]}"
  end

  def checker# Check the called column for the number called.
    puts "checker"
    column = @call[0][1] # column = index matched to letter
    number = @call[1] #number to look for
    @correct_tile = Array.new
    for row in 0..4 do#for each inner array
      puts "checking #{row},#{column}"
      # check the item at index equal to the letter below
       if @bingo_board[row][column] == number
        @correct_tile << row
        @correct_tile << column
        puts "true for #{@correct_tile}"
      end
    end
    if @correct_tile == []
      @correct_tile << "Not Found"
    end
    p @correct_tile
   end

  def mark_correct# If the number is in the column, replace with an 'x'
  # transform found number into string and replace with "x"
    if @correct_tile != "Not Found"
      p @bingo_board[@correct_tile[0]][@correct_tile[1]] = " X"
    end
  end

   def method_next# DO NOT DO THE THING
    # Display a column to the console
  #look at the letter pertaining to the column
  #display the appropriate index from each inner hash
   end

   def method# Display the board to the console (prettily)
    for row in 0..4 do
      print @bingo_board[row][0]
      for place in 1..4 do
        print " , "
        print @bingo_board[row][place]
      end
      puts
    end
   end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.caller
new_game.checker
new_game.mark_correct
new_game.method

#Reflection

