require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

#Zoo properties: name, location
zoo1 = Zoo.new("Smithsonian", "DC")
zoo2 = Zoo.new("Bronx", "NYC")

#Animal initialization properties: species, weight, nickname, zoo
a1 = Animal.new("Gorilla", 400, "Guy", zoo1)
a2 = Animal.new("Eagle", 20, "Goldie", zoo2)
a3 = Animal.new("Bear", 600, "Winnie", zoo2)
a4 = Animal.new("Elephent", 8000, "Larry", zoo1)
a5 = Animal.new("Leopard", 110, "Marcy", zoo2)
a6 = Animal.new("Tiger", 243, "Ozzy", zoo1)


binding.pry
puts "done"
