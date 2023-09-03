# Assignment : 
# Create a class Time with attributes hours and minutes. 
# 1. Add a method to add two Time objects together.

require 'colorize'

class Time
    attr_accessor :hours, :minutes

    def initialize(hours,minutes)
        @hours = hours
        @minutes = minutes
    end

    def +(other_time)
        total_minutes = self.minutes + other_time.minutes
        extra_hours = total_minutes / 60
        final_minutes = total_minutes % 60
        final_hours = self.hours + other_time.hours + extra_hours

        Time.new(final_hours, final_minutes)
    end
end

time1 = Time.new(2, 30)
time2 = Time.new(1, 45)
sum = time1 + time2

puts "Time 1: #{time1.hours} hours #{time1.minutes} minutes".blue
puts "Time 2: #{time2.hours} hours #{time2.minutes} minutes".blue
puts "Sum: #{sum.hours} hours #{sum.minutes} minutes".green