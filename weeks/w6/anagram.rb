require 'pry'

word_array = []

puts "enter a word"
word = gets.chomp

puts "enter words to check if anagram"
check_array = gets.chomp

check_array = check_array.split(' ')
word = word.split('')

check_array.map do |w|
  w = w.split('')
  word_array << w
end

word_array.each do |word_check|
  if (word - word_check).empty?
    puts "#{word_check.join("")} is an anagram for #{word.join("")}"
  end
end
