require 'pry'
require 'pry-debugger'

require_relative 'year.rb'


y1 = Year.new(1994)

create_year = 0

puts "what year do you want to check?"
year_to_check = gets.chomp.to_i

create_year = Year.new(year_to_check).leap?

puts "#{create_year }"



binding.pry