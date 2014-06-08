class Client
  attr_accessor :name, :age, :children, :pets

  def initialize(name, age, children, pets)
    @name = name
    @age = age
    @children = children
    @pets = pets
  end

  def to_s
    "#{@name.capitalize} is a #{@age} year old with #{@children} children and has: #{pets.join(' and ')} as pets"
  end
end

