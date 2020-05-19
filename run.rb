require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
# ZOO INSTANCES!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
bronx_zoo = Zoo.new("Bronx Zoo", "Bronx")
bronxie_zoo = Zoo.new("Bronxie Zoo", "Bronx")
queens_zoo = Zoo.new("Queens Zoo", "Corona, Queens")
cp_zoo = Zoo.new("Central Park Zoo", "Manhattan")
cp2_zoo = Zoo.new("Central Park Zoo Jr", "Manhattan")


# ANIMAL INSTANCES!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
monkey1 = Animal.new("Monkey", 20, "boots", bronx_zoo)
monkey2 = Animal.new("Monkey", 24, "Rafiki", cp_zoo)
zebra1 = Animal.new("Zebra", 170, "Marty", cp_zoo)
seal1 = Animal.new("Seal", 130, "Sammy", bronx_zoo)
seal2 = Animal.new("Seal", 120, "Julio", bronx_zoo)
lion1 = Animal.new("Lion", 160, "Alex", queens_zoo)


binding.pry
puts "done"
