require "pry"

puts "Put in binary"
binary = gets.chomp

binary = binary.split("")
binary.reverse!
calc_binary = []

binary.each_with_index do |b, i|
  b = b.to_i
  calc_binary << b * 2 ** i
end

calc  = calc_binary.inject {|sum,num| sum + num}
puts calc



