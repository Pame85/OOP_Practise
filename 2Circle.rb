# Assignment : 
# Develop a class Circle with attributes radius and methods to calculate the area and circumference.

require 'colorize'

class Circle
    attr_accessor :radius, :area, :circumference

    def initialize 
        puts "Enter the radius of the circle: ".blue
        @radius = gets.to_f
        @circumference = 2 * 3.141592653 * @radius
        @area = 3.141592653 * @radius * @radius
        puts "The perimeter is : #{circumference} ".green
        puts "The area is : #{area}".green
    end
end

circle = Circle.new