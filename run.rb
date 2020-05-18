require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
#  def initialize(name, location)
z1 = Zoo.new("Brnx Zoo", "NYC")
z2 = Zoo.new("Prospect Zoo", "NYC")
z3 = Zoo.new("IDK", "Chicago")

# def initialize(species, weight, nickname, zoo)
a1 = Animal.new("tiger", 100, "tig", z1)
a2 = Animal.new("turtle", 5, "jill", z2)
a3 = Animal.new("fish", 1, "nemo", z2)
a3 = Animal.new("tiger", 500, "misha", z3)

binding.pry
puts "done"
