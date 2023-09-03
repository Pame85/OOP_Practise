# Assignment : 
# Build a class Dice with a method to roll the dice and simulate a random number from 1 to 6.

require 'colorize'

class Dice
  def initialize
    @num = nil
  end

  def roll
    @num = 1 + rand(6)
  end
end

dice = Dice.new
puts "The dice rolled and the result is: #{dice.roll}".blue
