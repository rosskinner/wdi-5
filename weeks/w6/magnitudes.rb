# Write a program that will take a number from 0 to 999,999,999,999 and break it into chunks, adding the magnitude.

# In other words, if the input to the program is 1,234,567,890 then the output should be '1 billion 234 million 567 thousand 890'

# The program must also report any values that are out of range.

require 'pry'

puts "enter a number"
number = gets.chomp

number = number.split("")

if number.length <= 3
  puts "#{number.join("")}"
elsif number.length > 3 && number.length <= 6
  puts "#{number[0..-4].join("")} thousand #{number[-3..-1].join("")}"
elsif number.length > 6 && number.length <= 9
  puts "#{number[0..-7].join("")} million #{number[-6..-4].join("")} thousand #{number[-3..-1].join("")}"
elsif number.length > 9 && number.length <= 12
  puts "#{number[0..-10].join("")} billion #{number[-9..-7].join("")} million #{number[-6..-4].join("")} thousand #{number[-3..-1].join("")}"
else
  puts number.join("")
end