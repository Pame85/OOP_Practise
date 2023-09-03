# Assignment : 
# Create a Ruby class called Person with attributes name and age. 
# 1. Include a method to compare ages of two people.

require 'colorize'

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def compare_age(other_person)
    if self.age > other_person.age
      "#{self.name} is older than #{other_person.name}"
    elsif self.age < other_person.age
      "#{self.name} is younger than #{other_person.name}"
    else
      "#{self.name} and #{other_person.name} are of the same age"
    end
  end
end

person1 = Person.new("Alice", 25)
person2 = Person.new("Bob", 18 )

puts "The comparison is : #{person1.compare_age(person2)} ".blue 