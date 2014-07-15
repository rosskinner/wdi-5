require 'pry'

x = 10
num_array=[*(1..x)]
x_mult =[]
sum = 0

num_array.map do |n|
 if n % 3 == 0 || n % 5 == 0
  x_mult << n
  sum += n
 end
end

puts x_mult
puts sum
