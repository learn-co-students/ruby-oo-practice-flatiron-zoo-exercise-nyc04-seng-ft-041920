class Animal
    
    attr_reader :nickname, :species, :zoo
    attr_accessor :weight
    @@all = []

    def initialize(nickname, weight, species, zoo)
        @nickname = nickname
        @weight = weight
        @species = species
        @zoo = zoo
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        self.all.select do |animal|
            animal.species == species
        end
    end

end
