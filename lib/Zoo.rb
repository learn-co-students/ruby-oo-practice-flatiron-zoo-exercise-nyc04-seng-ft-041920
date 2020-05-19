class Zoo

    
    attr_reader :name, :location, :animals

    @all = []

    def initialize(name, location)
        @name = name
        @location = location
        @all << self
    end

    def self.all
        @@all
    end

    def animals
        Animals.all.select {|animal| animal.zoo == self}
    end

    def animal_species
        animals.map(&:species).uniq
    end

    def find_by_species(species)
        animals.select{|animal| animal.species == species}
    end

    def animal_nickname
        animals.map(&:animal.nickname)
    end

    def self.find_by_location(location)
        Zoo.all.select {|zoo| zoo.location == location}
    end








    
    
    

end
