class Animal

    attr_reader :species, :nickname
    attr_accessor :weight

    @@all = []

    def initialize(zoo, species, weight, nickname)
        @zoo = zoo
        @species = species
        @weight = weight
        @nickname = nickname
        @all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        Animal.all.select {|animal| animal.species == species}
    end




end
