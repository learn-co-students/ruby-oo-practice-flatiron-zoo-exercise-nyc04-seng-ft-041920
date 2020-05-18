require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
## Zoo
bronx = Zoo.new("Bronx Zoo", "Bronx, NY")
bronx2 = Zoo.new("Bronx Zoo Lower", "Bronx, NY")
la = Zoo.new("Los Angeles Zoo", "Los Angeles, CA")
albany = Zoo.new("Albany Zoo", "Albany, NY")

## Animals
panda = Animal.new("Great Panda", 500, "Panda", la) #Ailuropoda melanoleuca
seal = Animal.new("Hawaiian Monk Seal", 700, "Seal", bronx) # Monachus schauinslandi
goose = Animal.new("Canadian Goose", 10, "Goose", albany) # Branta canadensis
otter = Animal.new("North American River Otter", 15, "Otter", la) # Lontra canadensis
red_panda = Animal.new("Large Red Panda", 30, "Panda", bronx) # Ailurus fulgens styani
girrafe = Animal.new("Northern Girrafe", 600, "Giraffe", albany) # Giraffa camelopardalis
grey_wolf = Animal.new("Grey Wolf", 400, "Wolf", la) #C anis lupus
deer = Animal.new("Virginia Deer", 100, "Deer", bronx) # Odocoileus virginianus
moose = Animal.new("Alaskan Moose", 900, "Moose", albany) # Alces alces gigas
brown_bear = Animal.new("Brown Bear", 1000, "Bear", la) # Ursus arctos horribilis
black_bear = Animal.new("Black Bear", 500, "Bear", bronx) # Ursus americanus

panda_2 = Animal.new("Great Panda", 500, "Panda", albany) #Ailuropoda melanoleuca
seal_2 = Animal.new("Hawaiian Monk Seal", 700, "Seal", la) # Monachus schauinslandi
goose_2 = Animal.new("Canadian Goose", 10, "Goose", bronx) # Branta canadensis
otter_2 = Animal.new("North American River Otter", 15, "Otter", albany) # Lontra canadensis
red_panda_2 = Animal.new("Large Red Panda", 30, "Panda", la) # Ailurus fulgens styani
girrafe_2 = Animal.new("Northern Girrafe", 600, "Giraffe", bronx) # Giraffa camelopardalis
grey_wolf_2 = Animal.new("Grey Wolf", 400, "Wolf", albany) #C anis lupus
deer_2 = Animal.new("Virginia Deer", 100, "Deer", la) # Odocoileus virginianus
moose_2 = Animal.new("Alaskan Moose", 900, "Moose", bronx) # Alces alces gigas
brown_bear_2 = Animal.new("Brown Bear", 1000, "Bear", albany) # Ursus arctos horribilis
black_bear_2 = Animal.new("Black Bear", 500, "Bear", la) # Ursus americanus

binding.pry
puts "done"
