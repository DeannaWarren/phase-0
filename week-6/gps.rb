# Your Names
# 1) Deanna Warren
# 2)Josh Abrams

# We spent [1] hours on this challenge.

# 1. Variable Names X
# 2. Refactor argument Error on 29
# 3. Refactor error counter on 23
# 4. Refactor values_at on 33
# 5.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
#Hash defining food as keys and serving size as values
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

#Iterates through library checking to see if items to make are not equal to items in library. Error counter should return either 1 or 0

  if menu.has_key?(item_to_make) == false
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

#Setting up whether or not you have an even number to the serving size.
  serving_size = menu[item_to_make]
#Returns a remainder after diving order quantity by serving size calculating leftover ingredients
  leftover_ingredients = order_quantity % serving_size

#Returns notification of quantity of items needed and any remaining ingredients if available.
  case leftover_ingredients
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{leftover_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
#   Variable names are important for readability. Counters aren't always needed (even if you love them very much like me.) Challenges about debugging or refacoring others work is very much rife with "But why would you do that?!"
# Did you learn any new methods? What did you learn about them?
#   I learned about values_at. It was a bit confusing, but really I just didn't like it. there are other ways to get at the same thing. However, if that's what you need it's there.
# What did you learn about accessing data in hashes?
#   I solidified the syntax of calling values using keys. I'm not unfamiliar with it but I almost always have to double check that it works.
# What concepts were solidified when working through this challenge?
#   See above. Also that there's a huge amount of possible answers to almost anything. And some of those aren't very pretty even when they work, so fixing those is needed when possible.