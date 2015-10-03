# Factorial

# I worked on this challenge [ with: Jeremy Powell].


# Your Solution Below

require 'rspec/autorun'

def factorial(number)
  if number == 0
    return 1
  else
    counter = number
    while counter > 1
      counter -= 1
      number = number * counter
    end
  end
  return number
end

#PSEUDOCODE

#define factorial
#take number and multiply by one less
# take product and multiply by one less
# when numbeer =1 break
# end


# counter = number

# number * (number -1)
# counter = counter - 1
# when counter == 0 break

##array-
# take input as top range
#multiply all values in array range


# def count_between(list_of_integers, lower_bound, upper_bound)
#   p list_of_integers.count { |x| x >= lower_bound && x <= upper_bound}
# end

# list = count_between(array, 1, number)




#-----------------------------------------RSPEC
# describe 'factorial' do
#   it "returns 1 with 0 as an argument" do
#     expect(factorial(0)).to eq 1
#   end

#   it "returns 1 with 1 as an argument" do
#     expect(factorial(1)).to eq 1
#   end

#   it "calculates 10!" do
#     expect(factorial(10)).to eq 3628800
#   end

#   it "calculates 20!" do
#     expect(factorial(20)).to eq 2432902008176640000
#   end

#   it "is divisible by 1000 if given an argument >= 1000" do
#     num = 1000 + rand(10000)
#     expect((factorial(1000) % 1000)).to be_zero
#   end
# end