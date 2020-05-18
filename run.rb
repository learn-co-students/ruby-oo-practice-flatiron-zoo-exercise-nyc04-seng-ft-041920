require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
z1 = Zoo.new("Bronx Zoo", "Bronx, NY")
z11 = Zoo.new("Other Bronx Zoo", "Bronx, NY")

z2 = Zoo.new("Turtle Back Zoo", "West Orange, NJ")
z3 = Zoo.new("San Diego Zoo", "San Diego, CA")

a1 = Animal.new("frog", 0.3, "Jeremiah", z1)
a2 = Animal.new("giraffe", 1000, "Jeffrey", z2)
a3 = Animal.new("cow", 700, "Bessie", z2)
a4 = Animal.new("horse", 500, "Nellie", z3)
a5 = Animal.new("pig", 200, "Wilbur", z3)
a6 = Animal.new("cow", 750, "Bertha", z2)
a7 = Animal.new("pig", 250, "Snuffles", z1)





binding.pry
puts "done"
