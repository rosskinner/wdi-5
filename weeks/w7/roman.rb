# Write a function to convert from normal numbers to Roman Numerals
require 'pry'
roman = {1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 =>'C', 500 => 'D', 1000 => 'M'}

input = 12
num_array = []

input = input.to_s.split('')
length = input.length

input.map do |num|
  num = num.to_i
  num_array << num
end

num_array.map do |num|
  # binding.pry
  ones = roman[num_array[-1]]
  if ones
    puts ones
  end
  if !ones && num < 5
    count = 5
    ones = 1
    while num != 1
      ones_count = count - num  #3
      ones = 1
      count = count - ones_count
      ones = roman[ones]  #roman[1]
      puts ones
    end
  end
end