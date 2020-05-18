class Zoo

    attr_reader :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        self.class.all << self
    end

    def animals
        Animals.all.select{|animal| animal.zoo == self}
    end

    def animal_species
        animals.map{|animal| animal.species}.uniq
    end

    def find_by_species(species)
        animals.select{|animal| animal.species == species}
    end

    def animal_nickname
        animals.select{|animal| animal.nickname}
    end

    def self.all
        @@all
    end

    def self.find_by_location(location)
        self.all.select{|zoo| zoo.location == location}
    end
end
