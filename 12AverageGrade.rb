#Assignment: 
# Create a class Student with attributes name and grades as an array. 
# 1. Implement a method in the Student class to calculate the average grade.

require 'colorize'

class Student
    attr_accessor :name, :grades
  
    def initialize(name, grades)
      @name = name
      @grades = grades
    end
  
    def average_grade
      total_grades = grades.inject(0) { |sum, grade| sum + grade }
      total_grades / grades.length
    end
  end

  student = Student.new("Siapa Bin Anu", [85, 90, 92, 88, 95])
  puts "Student: #{student.name}".green
  puts "Grades: #{student.grades.join(', ')}".blue
  puts "Average Grade: #{student.average_grade}".red