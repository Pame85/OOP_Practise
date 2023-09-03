# Assignment : 
# Implement a class Rectangle with attributes width and height. 
# 1. Add methods to calculate the area and perimeter. 

require 'colorize'

class Rectangle
  
  attr_accessor :width, :height
  
    def area
      width * height
    end

    def perimeter
      (width + height) * 2
    end
  end
  
  rectangle = Rectangle.new
  rectangle.width = 2
  rectangle.height = 4
  puts "The area is : #{rectangle.area}".blue
  puts  "The parameter is : #{rectangle.perimeter}".green