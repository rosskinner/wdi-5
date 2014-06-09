class Shelter
  attr_accessor :clients, :animals_in_shelter

  def initialize(clients, animals_in_shelter)
    @clients = [clients]
    @animals_in_shelter = [animals_in_shelter]

  end

  def to_s
    "#{@client} has #{@animals_clients}, these animals are remaining in the shelter #{@animals_in_shelter}"
  end
end

