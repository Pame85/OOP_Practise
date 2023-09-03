# Assignment : 
# Implement a class hierarchy: Vehicle and Car. Implement their constructors.
# 1. Add a method to the Car class to start the engine.
# 2. Demonstrate method overriding by creating a method in both the Vehicle and Car classes with the same name.

require 'colorize'

class Vehicle
    def initialize(factory, model)
      @factory = factory
      @model = model
    end
  
    def start_engine
      puts "Starting the vehicle engine.".blue
    end
  end
  
  class Car < Vehicle
    def initialize(factory, model)
      super(factory, model)
    end
  
    def start_engine
      puts "Starting the car engine.".green
    end
  end

vehicle = Vehicle.new("BMW", "Series1")
vehicle.start_engine
# Output: Starting the vehicle engine.

car = Car.new("Toyota", "Camry")
car.start_engine
# Output: Starting the car engine.