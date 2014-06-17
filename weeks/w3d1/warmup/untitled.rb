puts "Talk to Bobby!"

loop do
  response = gets.chomp
  if response.include? "?"
    puts "Sure!"
  elsif response == ""
    puts "Fine. Be that way!"
  elsif response == response.upcase && response != ""
    puts "Woah, chill out!"
  elsif response.split(' ')[0] == "Bro,"
    response.gsub!(/([aeio])/, 'a'=>'4', 'e'=>'3', 'i'=>'1', 'o' =>'0')
    puts response
    if response.chars.first != [/[aeio]/]
      response.chars.first.downcase
      puts response
    end
  else
    puts "Whatever"
  end
end

