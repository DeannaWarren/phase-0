# Add it up!

require 'rspec/autorun'

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [ with: Jeremy Powell].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array values
# Output: sum of array values
# Steps to solve the problem.


#1- add numbers of array

def total(array)
  counter = 0
  answer = array[counter].to_i + array[counter + 1].to_i
  while counter < array.count
    counter += 1
    answer += array[counter + 1].to_i
  end
  return answer
end



def sentence_maker(argument)
  #argument[0].capitalize!
  #argument[last]
  sentance = argument.join (" ")
  p sentance.capitalize + "."
end

#2- add strings to become sentence.
#take this thing, and smash it into the other thing
#Caps string, add .

# 1. total initial solution



# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution



# 6. sentence_maker refactored solution


#-------------------------RSPEC
describe 'total' do
  let(:array_1) { [1, 2, 3, 4, 5, 5, 7] }
  let(:array_2) { [4, 4, 5, 5, 6, 6, 6, 7] }

  it "is defined as a method" do
    expect(defined? total).to eq 'method'
  end

  it "requires a single argument" do
    expect(method(:total).arity).to eq 1
  end

  it "returns the correct total of array 1" do
    expect(total(array_1)).to eq 27
  end

  it "returns the correct total of array 2" do
    expect(total(array_2)).to eq 43
  end
end

describe 'sentence_maker' do
  let(:first_sentence) {["all", "my", "socks", "are", "dirty"]}
  let(:second_sentence) {["alaska", "has", "over", 586, "thousand", "miles"]}

  it "is defined as a method" do
    expect(defined? sentence_maker).to eq 'method'
  end

  it "requires a single argument" do
     expect(method(:sentence_maker).arity).to eq 1
  end

  it "returns the grammatically correct sentence of the first sentence" do
    expect(sentence_maker(first_sentence)).to eq "All my socks are dirty."
  end

  it "returns the grammatically correct sentence of the second sentence" do
    expect(sentence_maker(second_sentence)).to eq "Alaska has over 586 thousand miles."
  end
end