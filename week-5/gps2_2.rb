# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)
=begin
Pseudocode

Create a hash

DEFINE method for adding an items
  ask question for what item you would like to add
    REQUEST INPUT
    REQUEST QUATNTITYTY
    insert input into hash as key/valuse pair

DEFINE method for remove item
  ask question for what item to remove
   Request input of item
  remove key pair from the hash

DEFINE method to update quantaties
REQUEST item
print item quantaty
REQUEST number
update number

Define print list
print list



INITIAL CODE

$grocery_list = Hash.new ()

def add_item(grocery_item, item_amount)
  puts "What item would you like to add?"
  grocery_item="Ice Cream"
  puts "How much would you like to buy?"
  item_amount = 5000
  $grocery_list[grocery_item] = item_amount
end

add_item("Ice Cream", 5000)
p $grocery_list

def remove_item(grocery_item)
  $grocery_list.delete(grocery_item)
end

remove_item("Ice Cream")

p $grocery_list

def change_amount(grocery_item,item_amount)
  $grocery_list[grocery_item] = item_amount
end

change_amount("Ice Cream",200)

p $grocery_list

def print_list
  $grocery_list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

print_list
=end

$grocery_list = Hash.new ()

def add_item
  puts "What item would you like to add?"
  grocery_item = gets.chomp
  puts "How much would you like to buy?"
  item_amount = gets.chomp
  $grocery_list[grocery_item] = item_amount
  puts "Your item was added!"
end


def remove_item
  puts "Which item would you like to remove?"
  grocery_item = gets.chomp
  $grocery_list.delete(grocery_item)
  puts "Your item was removed!"
end


def change_amount
  puts "Which item would you like to change?"
  grocery_item = gets.chomp
  puts "Right now, you have " + $grocery_list[grocery_item] + " on your list."
  puts "How much would you like to buy?"
  item_amount = gets.chomp
  $grocery_list[grocery_item] = item_amount
  puts "Your item was changed!"
end



def print_list
  $grocery_list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

=begin

What did you learn about pseudocode from working on this challenge?
  that I don't suck entirely at it, although my spelling is terrible. I got that it's a really useful tool in a way I hadn't yet.
What are the tradeoffs of using Arrays and Hashes for this challenge
  Hashes were really the only choice since they were paired sets of information. an array couldn't be used to easily change the amount.
What does a method return?
  whatever you tell it to?
What kind of things can you pass into methods as arguments?
  all the things. probably even other methods. probably even themselves, but that might get messy depending on the method and how it's written.
How can you pass information between methods?
  Well we stored the info in a hash. You could also use an array, and databases are a thing although i dont' know how they're used or whether they're called that in ruby.
What concepts were solidified in this challenge, and what concepts are still confusing?
  I get hashes, when I kind of did before but had never used one so only had a conceptual knowledge of what they were even for.

end