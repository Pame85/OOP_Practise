# Assignment : 
# Given a hash fruit_prices with fruit names as keys and their prices as values,
# 1. write code to print the names of fruits that are priced less than $1.

require 'colorize'

fruits_prices = { "Papaya" => 0.88, "Banana" => 0.69, "Durian" => 6.99, "Melon" => 0.99, "Coconut" => 1.57 }

def fruit_price(fruits_prices)
    fruits_prices.each do |fruit, price|
        if price < 1
        puts fruit.blue
       end
    end
end

fruit_price(fruits_prices)