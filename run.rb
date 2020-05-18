require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
prospect_park_zoo = Zoo.new("Prospect Park Zoo", "Brooklyn")
bronx_zoo = Zoo.new("Bronx Zoo", "Bronx")

seal1 = Animal.new("Seal", 20, "floppy", prospect_park_zoo)
seal2 = Animal.new("Seal", 10, "flippy", prospect_park_zoo)
seal3 = Animal.new("Seal", 15, "fluppy", prospect_park_zoo)
lion1 = Animal.new("Lion", 5, "Leo", bronx_zoo)
lion2 = Animal.new("Lion", 4, "Simba", bronx_zoo)


binding.pry
puts "done"
