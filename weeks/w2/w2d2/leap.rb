
if year_to_check%4 == 0 && year_to_check%100 != 0 && year_to_check%400 != 0
  puts "#{year_to_check} is a leap year"
else
  puts "#{year_to_check} is not a leap year"
end