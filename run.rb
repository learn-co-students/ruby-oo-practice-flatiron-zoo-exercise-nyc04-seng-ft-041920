require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("name1", "location1")
zoo2 = Zoo.new("name2", "location2")
zoo3 = Zoo.new("name3", "location3")

animal1 = Animal.new("species1", 50, "nickname1", zoo1)
animal2 = Animal.new("species2", 55, "nickname2", zoo2)
animal3 = Animal.new("species3", 45, "nickname3", zoo3)

animal4 = Animal.new("species1", 58, "nickname4", zoo1)

binding.pry
puts "done"
