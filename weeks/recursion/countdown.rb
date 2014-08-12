def countdown(count) # Iterative version.
  count = 10
  while count > 0
    puts count
    count -= 1
  end
  puts "Blastoff!"
end

countdown(5)

def countdown_recursive(count) #Recursive version.
  if count == 0
    puts "Blastoff!" #Base case
  else
    puts count
    countdown_recursive(count - 1 ) # Move toward the base case.
  end

end

countdown_recursive(3)