# Assignemnt : 
# Create an array of strings representing words. 
# 1. Write code to join the words in the array into a single sentence.

require 'colorize'

words = ["This", "is", "words", "join", "into", "a", "sentence", "assignment!"] 

def sentence_maker(words)
    words.join(' ')
end

puts sentence_maker(words).blue