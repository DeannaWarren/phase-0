copperheads = [
"Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair",
"Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo",
"Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un CHoi",
"Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek",
"John Paul Chaufan Field", "Eric Freeburg", "Jeffery George",
"Jamar Gibss", "Paul Gaston Gouron", "Gabrielle Gustilo",
"Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez",
"Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim",
"James Kirkpatrick", "Christopher Lee", "Isaac Lee",
"Joseph Marion", "Kevin Mark", "Bernadette Masciocchi",
"Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill",
"Jeremy Powell", "Jessie Richardson", "David Roberts",
"Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith",
"Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe",
"Daniel Woznicki", "Jay Yee", "Nicole Yee", "Burno Zatta" ]

def sml_groups array
  groups = Hash.new
  repeat = array.length / 5
  counter = 0
  while counter < repeat do
    groups[counter] = [array[0 + (counter * 5)], array[1+ (counter * 5)], array[2+ (counter * 5)], array[3+ (counter * 5)], array[4+ (counter * 5)]]
    counter += 1
  end
  puts groups
end

sml_groups(copperheads)
=begin
What was the most interesting and most difficult part of this challenge? --> Honestly, the first round, I rabbit holed and started figuring out how to make it true in all cases. I'd still like to do that, but when I came back at the end of the week for refactoring (wanted to make sure I had all initial solutions first), the file was gone? So before there was an if block depending on modulos. It was only filled in for modulo == 0, but the idea was there and that's how I would do it.
Do you feel you are improving in your ability to write pseudocode and break the problem down? --> yes
Was your approach for automating this task a good solution? What could have made it even better? Like I said above, an awesome if block would be good.
What data structure did you decide to store the accountability groups in and why? --> a hash with a value of an array seemed like the only choice, to keep track of which group is which and who.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods? ... honestly I didn't refactor, I rewrote, and this one isn't as nice as the first one.

=end