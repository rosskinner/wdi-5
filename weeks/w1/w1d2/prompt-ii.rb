# prompt user and read their answer 
print "What is 2 to the 16th power? "
answer = gets.to_i

until (2**16 == answer)
	if (answer > 2**16)
		print "wrong, guess lower! "
	else
		print "Wrong, guess higher! "
	end
	answer = gets.to_i
end

puts "Good job, you're a champ"
