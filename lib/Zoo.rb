class Zoo
  attr_reader :name, :location

  @@all_zoos = []

  def initialize zoo_name, zoo_location
    @name = zoo_name
    @location = zoo_location

    @@all_zoos << self
  end

  def self.all
    @@all_zoos
  end

  def animals
    Animal.all.select do |animal_ins|
      # binding.pry
      animal_ins.zoo == self
    end
  end

  def animal_species
    species_array = self.animals.collect { |animal_ins| animal_ins.species }
    species_array.uniq
  end

  def find_by_species species_str
    self.animals.select { |animal_ins| animal_ins.species == species_str}
  end

  def animal_nicknames
    self.animals.collect { |animal_ins| animal_ins.nickname }
  end

  def self.find_by_location location
    @@all_zoos.select { |zoo_ins| zoo_ins.location == location}
  end

end

# - A `zoo` should be initialized with a name and a location, which should both be passed as strings.
# - `Zoo#location` should return the location of the zoo instance.
# - `Zoo#name` should return the name of the zoo instance.
# - `Zoo.all` should return an array of all the zoo instances.
# - `Zoo#animals` should return all the animals that a specific instance of a zoo has.
# - `Zoo#animal_species` should return an array of all the species (as strings) of the animals in the zoo. However, if you have two dogs, it should only return one "Dog" string (aka an **unique** array).
# - `Zoo#find_by_species` should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.
# - `Zoo#animal_nicknames` should return an array of all the nicknames of animals that a specific instance of a zoo has.
# - `Zoo.find_by_location` should take in a location as an argument and return an array of all the zoos within that location.
