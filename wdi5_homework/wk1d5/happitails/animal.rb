class Animal
  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(name, age, gender, species, toys)
    @name = name
    @age = age
    @gender = gender
    @species = species
    @toys = toys
  end

  def to_s
    "#{@name.capitalize} is a #{age} year old #{gender} #{@species}. #{@name.capitalize}'s favourite toys are: #{toys.join(' and ')}"
  end
end
