brothers = ['groucho marx', 'harpo marx', 'chico marx', 'gummo marx']

brothers.each do |b|
  p b.upcase
end

brothers.each { |b| p b.upcase }

brothers.each do |brother|
  unless brother =='chico marx'
    p brother.split(' ').map(&:capitalize).join(' ')
  else
    p brother
  end
end

3.times do
  puts "Happy birthday to you"
end
puts "Happy birthday Rodrigo"
puts "Happy birthday to you"

10.downto(1) do |i|
  puts i
end
  puts "Blast off!"

(10..1).each do |i|
puts i
end
puts "Blast off! "

squares = []
[1,2,3,9].each do |n|
  squares << (n*n)
end
p squares

fullnames = []
["Groucho", "Harpo", "Chico", "Zeppo"].each do |name|
  fullnames << "#{ name } Marx"
end
p fullnames

#As about but using map() to reduce the amount of code we write
squares = [1,2,3,9]. map do |n| #map is an iterator. you don't need to append the array by assigning
  n * n
end
p squares

fullnames = ["Groucho", "Harpo", "Chico", "Zeppo"].map do |name|
  "#{ name } Marx "
end
p fullnames


brothers = ["Groucho", "Harpo", "Chico", "Zeppo"]
brothers.shuffle.each_with_index do |brother_name, index| # suffle will move things arround within the array
    puts "#{brother_name} is #{index + 1} of Joel's favourite Marx brother"
end

nums = [1, 3, 6, 8, 11, 15, 20, 23]
evens = nums.select do |n| #select or reject. so if this is true then do this code. but if its reject. if this code is true don't do this code
  n.even? # Select the numbers for which this test is true.
end
p evens

odds = nums.reject do |n|
  n.even?
end
p odds

s = "this is the coolest thing in the whole world".split(' ').each do |w|
  if w.length.odd?
    puts w.upcase
  else
    puts w.downcase
  end
end.join(' ')

p s

