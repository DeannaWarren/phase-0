# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

#NOTE- 10/30: This was not completed and was traded in for a easier assignment in the interest of time. This was not submitted and is not functional.


# Pseudocode
=begin
ERROR 1- uninitialized constant Song
>create a type of object called Song

ERROR 2- in `initialize': wrong number of arguments (2 for 0) (ArgumentError)
>give initialize in Song two arguments

ERROR 3- in `<main>': uninitialized constant Playlist (NameError)
>create type of object Playlist

ERROR 4- in `initialize': wrong number of arguments (3 for 0)
>for initialize in Playlist, give 3 arguments

ERROR 5- undefined method `add' for #<Playlist(...)> (NoMethodError)
>add add method to playlist, one argument

ERROR 6- in `add': wrong number of arguments (2 for 1)
>add second argument to add

ERROR 7- undefined method `num_of_tracks' for #<Playlist(...)> (NoMethodError)
>add method num_of_tracks to Playlist

ERROR 8- undefined method `play' for #<Song(...)> (NoMethodError)
>add method play to Song

ERROR 9- undefined method `remove' for #<Playlist(...)> (NoMethodError)
>add method remove to Playlist

ERROR 10- in `remove': wrong number of arguments (1 for 0) (ArgumentError)
> add one argument to remove in Playlist

ERROR 11- undefined method `includes?' for #<Playlist(...)> (NoMethodError)
> add method includes? in Playlist

ERROR 12- in `includes?': wrong number of arguments (1 for 0) (ArgumentError)
> add one argument to includes? in Playlist

ERROR 13- undefined method `play_all' for #<Playlist:0x007f829aa7dd38> (NoMethodError)
> add method play_all in Playlist

ERROR 14- output is "false //false // #<Playlist:0x007fde73830d20>"
>first boolean in driver code is "p my_playlist.num_of_tracks == 5" therefore:
>initialize in Playlist creates array
>add in Playlist pushes new data to array
>have num_of_tracks return length of array

ERROR 15- output is "true // false // #<Playlist:0x007fd9a1274ef8>"
> second boolean in driver code is "p my_playlist.includes?(lying_from_you) == true" therefore:
>includes? will check playlist array for chosen song using include?

ERROR 16- output is "true // true // #<Playlist:0x007fd17b9155d8>"
>display is called but not defined, so returns a weird response.
>define display to show list of songs in array

ERROR 17- true // true // #<Song:0x007fc018a81490> // #<Song:0x007fc018a81418> // #<Song:0x007fc018a813a0> // #<Song:0x007fc018a812d8> // #<Song:0x007fc018a81260>
> ... ok. so song is not returning anything useful.
>make Song return an array containing the title and artist
> still error: change class Song to module, include in Playlist
> module does not have New property, change initialize?
> still not working, return to Class

=end
# Initial Solution

class Song
  def new (one,two)
    @song = [one,two]
  end
  module song
    @song
  end
  def play
  end
end

class Playlist
  include song
  def initialize(songs_passed)
    @this_playlist = []
    songs_passed.each(example)
      @this_playlist.push(@song)
    end
  end
  def add (one,two)
    @this_playlist.push(one,two)
  end
  def num_of_tracks
    @this_playlist.length
  end
  def remove(one)
  end
  def includes?(one)
    @this_playlist.include?(one)
  end
  def play_all
  end
  def display
    puts @this_playlist
  end
end


# Refactored Solution

# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection