MAX_GUESS = 100
# Display a prompt for the user
puts "I am thinking of an integer between 0 and #{ MAX_GUESS }... what number am I thinking of? "

# Obtain the user's input and interpret it as an integer.
answer = gets.to_i

# Generate a random number between 0 and 10
secret = rand(MAX_GUESS)

# Use a while loop to let the user guess again until he/she gets the answer right.
until answer == secret
	if answer > secret
		print "Nope, guess lower: "
	else
		print "Nope, guess higher: "
	end
  answer = gets.to_i
end

# Display a congratulatory response
puts "that's it!  How'd you know?!"