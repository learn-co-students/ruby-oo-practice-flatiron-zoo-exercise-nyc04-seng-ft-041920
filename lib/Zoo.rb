require_relative 'Animal.rb'

class Zoo
    attr_accessor :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location

        @@all << self
    end

    def self.all 
        @@all
    end

    # def new_animal(species, weight, nickname)
    #     Animal.new(species, weight, nickname, self)
    # end

    def animals 
        Animal.all.find_all {|animal| animal.zoo == self}
    end

    def animal_species
        self.animals.collect {|animal| animal.species}.uniq
    end

    def find_by_species(species)
        self.animals.find_all {|animal| animal.species == species}
    end

    def animal_nicknames
        self.animals.collect {|animal| animal.nickname}
    end

    def self.find_by_location(location)
        Zoo.all.find_all {|zoo| zoo.location == location}
    end

end

# bronx = Zoo.new("Bronx Zoo", "New York")
# brooklyn = Zoo.new("Brooklyn Zoo", "New York")
# sanfran = Zoo.new("San Francisco Zoo", "San Francisco")

# chester = Animal.new("Cheetah", 100, "Chester", bronx)
# oreo = Animal.new("Panda", 200, "Oreo", bronx)
# marble = Animal.new("Panda", 250, "Marble", bronx)
