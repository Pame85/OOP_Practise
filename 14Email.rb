# Assignment : 
# Write a class Email with attributes sender, receiver, and content. 
# 1. Implement a method to check if the content contains any offensive words.

require 'colorize'

class Email
    attr_accessor :sender, :receiver, :content
  
    OFFENSIVE_WORDS = ["offensive_word1", "offensive_word2", "offensive_word3"]
  
    def initialize(sender, receiver, content)
      @sender = sender
      @receiver = receiver
      @content = content
    end
 
    def contains_offensive_words?
        OFFENSIVE_WORDS.any? { |word| content.split.include?(word) }
    end
end

def main 
    puts "Enter sender name".blue
    sender_name = gets.chomp

    puts "Hello #{sender_name}, Enter receiver name".blue
    receiver_name = gets.chomp

    puts "Enter content for #{receiver_name}".blue
    content = gets.chomp

    email = Email.new(sender_name, receiver_name, content)
    if email.contains_offensive_words?
        puts "Email contains offensive words".red
    else
        puts "Email does not contains offensive words".green
    end
end

main