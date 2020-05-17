require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

#name, location
bronx_zoo = Zoo.new("Bronx Zoo", "Bronx")
si_zoo = Zoo.new("Staten Island Zoo", "Staten Island")

#species, weight, nickname, zoo
dog1 = Animal.new("Dog", 20, "doggy1", bronx_zoo)
dog2 = Animal.new("Dog", 10, "doggy2", bronx_zoo)
dog3 = Animal.new("Dog", 15, "doggy3", bronx_zoo)
bird1 = Animal.new("Bird", 5, "birdy1", bronx_zoo)
bird2 = Animal.new("Bird", 4, "birdy2", bronx_zoo)
bird3 = Animal.new("Bird", 6, "birdy3", bronx_zoo)

dog4 = Animal.new("Dog", 20, "doggy4", si_zoo)
dog5 = Animal.new("Dog", 22, "doggy5", si_zoo)
bird4 = Animal.new("Bird", 8, "birdy4", si_zoo)
bird5 = Animal.new("Bird", 7, "birdy5", si_zoo)



binding.pry
puts "done"
