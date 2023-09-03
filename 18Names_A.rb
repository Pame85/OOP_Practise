# Assignment : 
# Create an array of strings representing names.
# 1. Write code to filter and print the names that start with the letter "A".

require 'colorize'

names = ["Asa", "Bob", "Ava", "Ari", "Ceo", "Leo", "Zeo"] 

def names_selection(names)
    names_starting_with_A = names.select { |name| name.start_with?("A")}
    names_starting_with_A.each do |name|
    end
end

puts "Names start with letter A: #{names_selection(names)}".blue