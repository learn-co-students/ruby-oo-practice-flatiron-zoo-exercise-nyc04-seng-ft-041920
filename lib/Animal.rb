# ANIMAL BELONGS TO A ZOO

class Animal
  attr_reader :species, :nickname
  attr_accessor :weight, :zoo

  @@all = []

  def initialize(species, nickname, weight, zoo)
    @species = species
    @nickname = nickname
    @weight = weight
    @zoo = zoo
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(spec)
    self.all.select {|animal| animal.species == spec}
  end
end
