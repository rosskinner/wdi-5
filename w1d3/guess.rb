# Display a prompt for the user
MIN_NUMBER = 0
MAX_NUMBER = 10

user = 'yes'

while user == 'yes'

	print "I am thinking of an integer between 0 and 10... what number am I thinking of? "

	# Generate a random number between 0 and 10
	secret = rand(MIN_NUMBER..MAX_NUMBER)

	# Obtain the user's input and interpret it as an integer.
	answer = gets.to_i


	# Use a while loop to let the user guess again until he/she gets the answer right.
	# When the answer is not correct ask user to guess again
	while answer != secret
		# if
		if answer < 0 || answer > MAX_NUMBER
			puts "Read the prompt, yo. Choose an integer between 0 and 10! "
		else
			if answer > secret
				puts "Womp womp - wrong answer. Guess lower... "
			else
				puts "Womp womp - wrong answer. Guess higher... "
			end	
		end
		print "What number am I thinking of? "
		answer = gets.to_i 
	end
	 
	puts "that's it!  How'd you know?! "
	puts "would you like to play again (Yes/No)? "
	user = gets.chomp.downcase

	if user != 'yes'
		Kernel.exit
	end
end