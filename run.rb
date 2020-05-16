require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
# Zoos
bronx_zoo = Zoo.new("Bronx Zoo", "Bronx NY")
zoo_berlin = Zoo.new("Zoo Berlin", "Berlin DE")
cat_park = Zoo.new("Cat Park", "Kotor, MNE")
home = Zoo.new("Deljanin Family Zoo", "Queens, NY")

bronx_zoo.name
cat_park.location
Zoo.all

# Animals
nelly = Animal.new("Dog", "Nelly", 17, home)
mahlke = Animal.new("Cat", "Mahlke", 12, home)
sleepy = Animal.new("Cat-Dog", "Sleepy", 14, home)
goat = Animal.new("Goat", "Koza", 250, cat_park)
lamb = Animal.new("Lamb", "Janje", 125, bronx_zoo)
ostrich = Animal.new("Ostrich", "Birb", 20, bronx_zoo)
horse = Animal.new("Ostpreußisches Warmblut", "Pferd", 1000, zoo_berlin)
cockatoo = Animal.new("Cockatoo", "Izet", 3, bronx_zoo) # bc crazy

# nelly.nickname
# nelly.weight
# nelly.species

# home.find_by_species("Dog")
# bronx_zoo.animal_nicknames
# Zoo.find_by_location("Queens NY")

# nelly.zoo

# Animal.find_by_species("Dog")
Animal.find_by_species("Cat")

binding.pry
puts "done"
