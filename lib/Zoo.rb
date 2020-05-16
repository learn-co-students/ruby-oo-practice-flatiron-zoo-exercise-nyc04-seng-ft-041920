# ZOO CAN HAVE MANY ANIMALS

class Zoo
  attr_accessor :name, :location

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select {|animal| animal.zoo == self}
  end

  def animal_species
    animals.collect {|animal| animal.species}
  end

  def find_by_species(str)
    animals.select {|animal| animal.species == str }
  end

  def animal_nicknames
    animals.collect {|animal| animal.nickname}
  end

  def self.find_by_location(place)
    # ran out of ways to say location
    self.all.select {|mjesto| mjesto.location == place}
    # also at this point, you should remove the borough and have the location just be NY
  end

end
