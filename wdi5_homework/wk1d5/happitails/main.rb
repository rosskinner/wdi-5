require 'pry'
require 'pry-debugger'

require_relative 'client.rb'
require_relative 'animal.rb'
require_relative 'shelter.rb'

#Shelter
happi_tails = Shelter.new('Ros', 'Dog')


# Animal
a1 = Animal.new('Spot',2, :male, 'Dog', 'teddy')
a2 = Animal.new('Kitty',4, :female, 'Cat', 'string, ball')
a3 = Animal.new('Bruno',5, :male, 'Dog', 'rubber ducky')
a4 = Animal.new('Bruce',9, :male, 'Monkey', 'car')

# Client
c1 = Client.new('Bill', 27, 1, 'Barns')
c2 = Client.new('Sally', 50, 3, 'Blackie')
c3 = Client.new('Amy', 25, 2, 'Doggy')
c4 = Client.new('Tom', 35, 5,[])
c5 = Client.new('Ros',24, 0, 'Fishy')



clients = [c1, c2, c3, c4, c5]
animals = [a1, a2, a3, a4]
relationship = {} #where clients have animals


puts "Welcome to HappiTails! "

loop do

  puts "-----------------"
  puts "Choose what you want to do:"
  puts "1. Create a client"
  puts "2. Put an animal up for adoption"
  puts "3. Look at animals in the shelter"
  puts "4. Look at clients"
  puts "5. Adopt an animal"
  puts "----------------"
  puts "To exit type --- q"
  user_command = gets.chomp.downcase


  if user_command == "1"
    puts "what is your name?"
    client_name = gets.chomp.capitalize

    puts "what is your age?"
    client_age = gets.chomp.to_i

    puts "How many children do you have?"
    client_children = gets.chomp.to_i

    puts "what pets do you own?"
    client_pets = gets.chomp.split(', ')
    client_pets.map!(&:capitalize)


    client_create = Client.new(client_name, client_age, client_children, client_pets)
    puts client_create.to_s
    clients.push(client_create)


  elsif user_command == "2"

    puts clients.map {|client| client.pets }
    puts "what is the name of the animal?"

    animal_name = gets.chomp.capitalize

    puts "what is their age?"
    animal_age = gets.chomp.to_i

    puts "what is their gender?"
    animal_gender = gets.chomp

    puts "what is the species of animal?"
    animal_species = gets.chomp

    puts "what is their favourite toys?"
    animal_toys = gets.chomp.split(', ')

    animal_create = Animal.new(animal_name, animal_age, animal_gender, animal_species, animal_toys)

    animals.push(animal_create)

    pets_name = clients.map {|client| client.pets }
    pets_name.flatten!
    remove_animal_from_client = pets_name.index animal_name
    binding.pry

    pets_name.delete_at (remove_animal_from_client)
    # end
  elsif user_command == "3"

    list_again = 'yes'
    while list_again == 'yes'

      puts "Here is the list of animals currently in the shelter"


      animals_in_shelter = animals.map {|animal| animal.name }

      puts animals_in_shelter


      puts "Which animal would you like to see?"
      animal_name_shelter = gets.chomp.capitalize
      animal_details = animals_in_shelter.index animal_name_shelter
      puts animals[animal_details]

      puts "Would you like to see the list of animals again?"
      list_again = gets.chomp.downcase
    end


  elsif user_command == "4"
    list_again = 'yes'
    while list_again == 'yes'

      puts "Here is the list of clients at HappiTails?"
      clients_of_shelter = clients.map {|client| client.name }

      puts clients_of_shelter

      puts "Which client would you like to see?"
      client_name_shelter = gets.chomp.capitalize

      client_details = clients_of_shelter.index client_name_shelter
      p client_details

      puts clients[client_details]

      puts "Would you like to see the list of clients again?"
      list_again = gets.chomp.downcase
    end

  elsif user_command == "5"
    puts "Select a client to adopt an animal!"
    clients_of_shelter = clients.map {|client| client.name }
    puts clients_of_shelter

    client_name_shelter = gets.chomp.capitalize
    puts "Select an animal for #{client_name_shelter} to adopt!"
    animals_in_shelter = animals.map {|animal| animal.name } #finds the name of the animal

    puts animals_in_shelter

    animal_name_shelter = gets.chomp  #user selects animal

    #creating new hash with animal names and who they've been adopted by
    client_animal_adopt = (relationship[client_name_shelter] = animal_name_shelter)

    remove_animal = animals_in_shelter.index client_animal_adopt

    puts "#{client_name_shelter} is adopting #{client_animal_adopt}"

    animals.delete_at(remove_animal)

    animals.find {|animal| client_animal_adopt}
    relationship.map { |client, animal|
      client = client_name_shelter
      animal = animal_name_shelter
    }
 binding.pry

  elsif user_command == "q"
    Kernel.ext

  else
    puts "*************"
    puts "Please enter in a valid option"
    puts "*************"

  end
  break if user_command == "q"

end

binding.pry