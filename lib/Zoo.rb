class Zoo

    attr_reader :name, :location
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
        Animal.all.select do |animal_instance|
        #binding.pry
            animal_instance.zoo.name == self.name
        end
    end

    def animals_species
        Animal.all.map do |animal_instance|
            animal_instance.species
        end
    end

    def find_by_species(species)
        Animal.all.select do |animal_instance|
            animal_instance.species == species
        end 
    end

    def animal_nicknames
        Animal.all.select{ |animal_instance|
            #binding.pry
            
            animal_instance.zoo == self   
        }.map{ |animal_instance| 
            animal_instance.nickname
        }
    end

    def self.find_by_location(location)
        Animal.all.select do |animal_instance|
        #binding.pry
            animal_instance.zoo.location == location
        end
    end


end
