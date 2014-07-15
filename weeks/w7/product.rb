# Write a program that, when given a string of digits, can calculate the largest product for a series of consecutive digits of length n.

# For example, for the input '0123456789', the largest product for a series of 3 digits is 504 (7 * 8 * 9), and the largest product for a series of 5 digits is 15120 (5 * 6 * 7 * 8 * 9).

# For the input '73167176531330624919225119674426574742355349194934', the largest product is 23520.

require 'pry'
input_string = '123456'
input_string = input_string.split('');
product = [];

input_string.map.each_with_index do |num, i|
  num = num.to_i
  num *= input_string[(i + 1).to_i]

  puts num
end
# binding.pry

# puts num