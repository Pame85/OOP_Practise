# Assignment: 
# Build a class Library that holds a collection of books. 
# 1. Implement methods to add, remove, and list books.

require 'colorize'

class Library
    def initialize
        @book =[]
    end

    def add_book(book)
        @book << book
    end

    def remove_book(book)
        @book.delete(book)
    end

    def list_books
        puts "Book collection:".blue
        @book.each do |book|
            puts "- #{book}".green
        end
    end
end

library = Library.new
library.add_book("Ruby Coding")
library.add_book("HTML Coding")
library.add_book("CSS Coding")
library.list_books
library.remove_book("CSS Coding")
library.list_books