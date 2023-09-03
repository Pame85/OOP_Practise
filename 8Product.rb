# Assignment : 
# Build a Product class with attributes name, price, and quantity. 
# 1. Add methods to calculate the total price for a given quantity of products.

require 'colorize'

class Product
  attr_accessor :name, :price, :quantity

  def initialize(name, price, quantity)
    @name = name
    @price = price
    @quantity = quantity
  end

  def total_price
    @price * @quantity
  end
end

product1 = Product.new("Book", 10.99, 5)
puts "Product 1: #{product1.name}".blue

product2 = Product.new("Pen", 1.99, 3)
puts "Product 2: #{product2.name}".blue

total_price = product1.total_price + product2.total_price
puts "Total Price: $#{total_price}".green