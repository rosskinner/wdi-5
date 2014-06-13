
require 'pry'
require'pry-debugger'

class School
  attr_accessor :name, :score, :school, :student
  attr_reader :db, :grade


  def initialize(school)
    @school = school
    @db = {}
  end

  def add(name, grade)
    @db[grade] = [] unless @db[grade]
    @db[grade] << name
  end

  def grade(score)
    @db[score]
  end

  def sort
    @db.sort
  end
end


puts "Enter School"
school = gets.chomp
3.times do
puts "Enter name: "
name_student= gets.chomp
puts "Enter grade: "
student_grade = gets.chomp.to_i


school = School.new(school)
school.add(name_student,student_grade)



p school.db
end
p school.db
p school.grade(2)
p school.sort




