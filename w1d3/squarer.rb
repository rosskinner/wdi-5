# require 'pry'
# require 'pry-debugger'

print "enter a number to square: "
number  = gets.to_i
# binding.pry 
number = number * number
puts "The square number is #{ number }"
