require 'rspec/autorun'

# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def leap_year?(x)
  if x % 4 == 0 && x % 100 != 0 || x % 400 == 0
    return true
  else
    return false
  end
end


#---------------------
#require_relative "my_solution"

describe 'leap_year?' do
  it 'is defined as a method' do
    expect(defined?(leap_year?)).to eq 'method'
  end

  it 'returns true for years divisible by 4 and not by 100' do
    expect(leap_year?(4)).to be true
  end

  it 'returns true for years divisible by 400' do
    expect(leap_year?(400)).to be true
  end

  it 'returns false for years divisible by 4 and by 100 but not by 400' do
    expect(leap_year?(100)).to be false
  end

  it 'returns false for years not divisible by 4' do
    expect(leap_year?(3)).to be false
  end
end