require 'pry'
require 'pry-debugger'

letters = {
  1 => ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T' ],
  2 => ['D', 'G'],
  3 => ['B', 'C', 'M', 'P'],
  4 => ['F', 'H', 'V', 'W', 'Y'],
  5 => ['K'],
  8 => ['J', 'X'],
  10 =>['Q', 'Z']
}


class Scrabble
  attr_accessor :word

  def initialize
  @word = word
  end
end

puts "Type in word to calculate scrabble score: "
scrabble_word = gets.chomp.upcase.split('')

scrabble_word.each do |l|
  p l

  letters.select do |n, letter|
  p n = letter.assoc(l)
  end
end

# letters.select do |n, letter|
#   p n = letter.assoc(l)
# end

binding.pry


