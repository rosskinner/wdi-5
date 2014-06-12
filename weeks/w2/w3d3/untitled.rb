
class Robot
  attr_reader :name, :reset


  def initialize
    @name = "#{letters}#{numbers}"
    @reset = "#{letters}#{numbers}"
    @instruction_count = @name.count(2)

  end

  def letters
    (0..2).map {('A'..'Z').to_a[rand(27)]}.join

  end

  def numbers
    (0..2).map {(0..9).to_a[rand(10)]}.join

  end


end

puts "Robot 1: "
robot1 = Robot.new
 puts robot1.name
 puts robot1.name
 puts robot1.name

puts "Robot 2: "
robot2 = Robot.new
puts robot2.name
puts robot2.name
puts robot2.name

puts "Reset Robot 1"
puts robot1.reset
