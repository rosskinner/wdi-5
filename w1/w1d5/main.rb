require 'pry'
require 'pry-debugger'
require_relative 'guesser.rb'

game = Guesser.new(15)

puts "Welcome to the guessing game! "
puts "please guess the secret number which is less than #{game.max_guess}"

user_guess = gets.chomp.to_i
until (game.try(user_guess))
  puts "wrong! Try again"
  user_guess = gets.chomp.to_i
end
puts "you guessed it!"

binding.pry

