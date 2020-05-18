class Animal

    attr_reader :species, :nickname
    attr_accessor :weight, :zoo

    @@all = []

    #an animal can only be in one zoo at a time, and it makes sense that when we create our animal we'd put it in a zoo upon initialization
    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
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
