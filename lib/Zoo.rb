class Zoo
    attr_reader :location, :name, :animals
    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select{|animal|
            animal.zoo == self
        }.compact
    end

    def animal_species
        animals.map(&:species).uniq
    end

    def find_by_species(species)
        animals.select{|animal|
            animal.species == species
        }.compact
    end

    def animal_nicknames
        animals.map(&:nickname)
    end

    def self.find_by_location(location)
        self.all.collect{|zoo|
            zoo if zoo.location == location
        }.compact
    end

end
