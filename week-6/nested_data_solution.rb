# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
puts hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

#number_array.map{|x| x + 5}

for i in 0..number_array.length-1
  if number_array[i].is_a? Array
    for j in 0..number_array[i].length-1
      number_array[i][j] += 5
    end
  else
    number_array[i] += 5
  end
end

# number_array.map {|i|
#   if i.is_a? Array
#     i.map {|j|
#       j+5
#     }
#   else
#     i + 5
#   end
# }
print number_array
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


=begin
  REFLECTION

What are some general rules you can apply to nested arrays?
  Keeping track of what is nested in which is important.
What are some ways you can iterate over nested arrays?
  .map is a way to itterate over arrays, but we weren't able to get it to work easily. However, we used a for loop and .each and .is_a. it's not the prettiest solution, but we had some interesting leads before letting it be.
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  we used .each and for loops because it explictly spelled out what was going on. We really liked the idea of .map, but we couldn't quite figure it out. I'm going to go play with it on my own though.
end