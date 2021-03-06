def user_input
		n1 = input_return("What is your first number?")
		n2 = input_return("What is your second number?")	
		return [n1, n2]
end

def input_return(message)
	number = nil
	while number == nil
		print message
		begin
			number = Float(gets.chomp)
		rescue
			puts "You screwed up! Put a number"
		end
	end
	number
end

def start
	print "What would you like to do: (c)alculate, (m)ortagage, (b)mi, (t)rip?"
	response = gets.chomp
	case response
		when 'c'
			calc
		when 'm'
			mortgage
		when 'b'
			bmi
		when 't'
			trip
		when 'q'
			Kernel.exit
		else
			puts "Not valid"
		end
	end

def mortage
	p = input_return("What is the Principal of the loan?")
	i = input_return("What is the interest rate?")
	n = input_return("What are the number of payments?")
	m = p((i(1+1) ** n)/(((1 +i) ** n) -1))

	puts "Your monthly payments on your mortgage are #{m}."
end

def calc
	print "Would you like to do a (b)asic or (a)dvanced calculation?"
	response = gets.chomp
	case response
		when 'b'
			basic_calc
		when 'a'
			advanced_calc
		else 
			puts "Not valid"
	end
end

def basic_calc
	
	running = true
	while running
	print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "	
		response = gets.chomp.downcase

		case response
			when 'a'
				answer = add(user_input)
				puts "The answer is #{answer}"
			when 's'
				answer = subtract(user_input)
				puts "The answer is #{answer}"
			when 'm'
				answer = multiply(user_input)
				puts "The answer is #{answer}"
			when 'd'
				answer = divide(user_input)
				puts "The answer is #{answer}"
			when 'c'
				advanced_calc
			when 'q'
				running = false
			else 
			puts "Not valid"	
		end
	# while response != 'q'
	# 	response = read_choice

	end
	calc
end

def advanced_calc

	running = true
	while running
		print "(p)ower, (s)qrt: "
		response = gets.chomp.downcase
		case response
		when 'p'
			puts "The answer is #{power(user_input)}"
		when 's'
			print "What is the number?"
			puts "The square root is #{sqrt(gets.to_i)}"
		when 'q'
			running = false
		else 
			puts "Not valid"
		end
	end
	calc
end


def add(array)
	array[0] + array[1]
end

def subtract(array)
	array[0] - array[1]
end

def multiply(array)
	array[0] * array[1]
end

def divide(array)
	array[0] / array[1]
end

def power(array)
	array[0] ** array[1]

end

def sqrt(n)
	n ** 0.5
end





# response = read_choice
start
