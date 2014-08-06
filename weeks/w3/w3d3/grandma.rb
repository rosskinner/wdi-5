years = []
count =[]
all_response = []

(1930..1950).each do |year|
  years << year
end

puts "Talk to grandma!"
talk = true;

while talk
  response = gets.chomp
  all_response << response

  if all_response & ['BYE', 'BYE', 'BYE']
    talk == false

    puts "BYE HONEY!"
    Kernal.exit
  end
  if response != 'BYE'
    if response == response.upcase
      puts "NO, NOT SINCE #{years.sample}!"
    else
      puts "HUH?! SPEAK UP, SONNY!"
    end
  end

end