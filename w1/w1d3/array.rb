nums = [6,5,4,3,2,1]
p nums[0] # prints whatever is at this index
p nums[1]
p nums.first
p nums.last
nums.push 505
p nums.pop
nums << 808 # This is "appending 808 to the array"

p nums

strings =["Welcome", "to"]
strings << "array country" # addds array strings to the end of the array

p strings.shift #removes the first in the array. Removes "Welcome"
strings.unshift ["Say", "hello"] #adds string to the start of the array
p strings[0][1].upcase

strings.flatten!
strings.reverse!

p strings.pop
strings << "I"
strings.push "say"

p strings.delete_at 1 # Deletes this value at this index

p strings

bros = []
p bros.length
bros[1001] = 'groucho' #there are 1002 items in this array. all other values in this array are 'nill'
p bros.length

ints = [1, 2, 3, 4, 5, 6, 7, 8, 9,10]
p (1..10).to_a #generates an array with numbers 1 to 10
p (1...10).to_a #does not include end number

lottery_numbers = [132456,12345,12345657,456776857]
p lottery_numbers.sample #picks something random
p lottery_numbers.sample 2 #gives to numbers

#POSITION OF ARRAY
works = ["Dubliners", "Portrait", "Ulysses", "Finnegans"]
p works #pretecate with a ? asks a true or false question
p works.include? "Portrait" # asking if "Portrait" is park of my works array
p works.include? "Giacomo"

p works.index "Portrait"
index = works.index "Ulysses"
p works[index]

a = ["Groucho", "Groucho", "Harpo", "Groucho", "Harpo"]
p a.uniq! #gets rid of duplicates
p a
