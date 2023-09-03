# Assignment : 
# Implement a class Employee with attributes name, position, and salary. 
# 1. Add a method to give a raise to the employee's salary.

require 'colorize'

class Employee
  attr_accessor :name, :position, :salary

  def initialize(name, position, salary)
    @name = name
    @position = position
    @salary = salary
  end

  def give_raise(amount)
    @salary += amount
  end
end

employee = Employee.new("Pamella", "Software Engineer", 50000)
puts "Employee: #{employee.name}".blue
puts "Position: #{employee.position}".blue
puts "Salary: #{employee.salary}".blue

employee.give_raise(5000)
puts "New Salary: #{employee.salary}".green