lines = {
  :N =>['TS', '34th', '28th', '23rd', 'US', '8th'],
  :L =>['8th', '6th', 'US', '3rd', '1st'],
  6 => ['GC', '33rd', '28th', '23rd', 'US', 'AP']
}

user = 'yes'

while user == 'yes'
puts "What line would you like to take (N, L or 6)?"
user_line_index = gets.chomp
puts "What is your first stop? "
user_start = gets.chomp
puts "What line is your destination on (N, L or 6)?"
end_user_line = gets.chomp
puts "What is your end destination? "
user_end = gets.chomp

p user_line_index = user_line_index.to_sym
p end_user_line = end_user_line.to_sym

intersection1 = lines[user_line_index].index 'US'
intersection2 = lines[end_user_line].index 'US'


start_station = lines[user_line_index].index user_start
end_station = lines[user_line_index].index user_end

single_line_range = start_station..end_station


if user_line_index == end_user_line
  if start_station < end_station
    p trip = lines[user_line_index][single_line_range]
  else
    p trip = lines[user_line_index][single_line_range.reverse]
  end
  puts "The number of stops in your trip is #{ trip.length } "
else
  if start_station < intersection1
    trip = lines[user_line_index][start_station...intersection1]
    p trip
  elsif user_end < intersection1
    trip = lines[user_line_index][user_end...intersection1]
    p trip
  elsif start_station < intersection2
    trip2 = lines[end_user_line][start_station..intersection2]
    p trip2
  elsif user_end < intersection2
    trip2 = lines[end_user_line][user_end..intersection2]
    p trip2
  elsif start_station > intersection1
    trip = lines[user_line_index][intersection1...start_station]
    p trip
  elsif start_station > intersection2
    trip2 = lines[end_user_line][intersection2..start_station]
    p trip2
  elsif user_end > intersection1
    trip = lines[user_line_index][intersection1...user_end]
    p trip
  elsif user_end > intersection2
    trip2 = lines[end_user_line][intersection2..user_end]
    p trip2
  end

  p trip.length
  p trip2.length
 puts "The number of stops in your trip is #{ trip.length + trip2.length } "
end

puts "would you like to plan another trip (Yes/No)? "
  user = gets.chomp.downcase

  if user != 'yes'
    Kernel.exit
  end
end
