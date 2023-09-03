# Assignment : 
# Write a Ruby program that takes a sentence as input and outputs the number of words in it.

require 'colorize'

def number_of_words(str)
    count = 1
    for i in 1..str.length
	    if (str[i] == ' ')
	    count += 1
	    end
    end
    count
end

puts "Enter the String:".blue
str1=gets.chomp
count = number_of_words(str1)
puts "Number of words are #{count}".blue