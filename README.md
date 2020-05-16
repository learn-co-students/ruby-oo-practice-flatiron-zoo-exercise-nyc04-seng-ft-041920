# Zoo Lab

Welcome to your first day as a Flatiron Zookeeper!
Today, we are being asked to create two domain models - a `Zoo` model and an `Animal` model and build out their relationships! Keep in mind that an animal can only be in one location at a time!

Here are some questions to consider:

* What are your models?
* What does your domain look like?
* What are the relationships between your models?
* Which model should know about the other in its initialization?

## Here are some of our deliverables:

_Keep in mind that in order to properly build out the relationships between an `Animal` and a `Zoo` class, an instance of one need to know about the instance of the other. Consider where and how this dependency needs to be implemented._

![Flatiron Zoo](https://curriculum-content.s3.amazonaws.com/module-1/ruby-oo-relationships/flatiron-zoo-exercise/Image_124_ZooGraphic.png)

### Zoo Class
- [x] A `zoo` should be initialized with a name and a location, which should both be passed as strings.
- [x] `Zoo#location` should return the location of the zoo instance.
```ruby
bronx_zoo.location
=> "Bronx NY"
```
- [x] `Zoo#name` should return the name of the zoo instance.
```ruby
bronx_zoo.name
=> "Bronx Zoo"
```
- [x] `Zoo.all` should return an array of all the zoo instances.
```ruby
Zoo.all
=> [#<Zoo:0x00007fc6658888e8 @location="Bronx NY", @name="Bronx Zoo">,
   #<Zoo:0x00007fc665888870 @location="Brooklyn NY", @name="Coney Island NY Aquarium">,
   #<Zoo:0x00007fc6658887f8 @location="Berlin DE", @name="Zoo Berlin">,
   #<Zoo:0x00007fc665888780 @location="Bridgeport CT", @name="Beardsley Zoo">,
   #<Zoo:0x00007fc665888708 @location="Kotor, MNE", @name="Cat Park">]
```
- [x] `Zoo#animals` should return all the animals that a specific instance of a zoo has.
```ruby
bronx_zoo.animals # call it on the instance, not the class itself
=> [#<Animal:0x0000557cb5ec5310 @species="Lamb", @nickname="Janje", @weight=125, @zoo=
  #<Zoo:0x0000557cb5ec7a70 @name="Bronx Zoo", @location="Bronx NY">>,
  #<Animal:0x0000557cb5ec4f28 @species="Ostrich", @nickname="Birb", @weight=20, @zoo=
  #<Zoo:0x0000557cb5ec7a70 @name="Bronx Zoo", @location="Bronx NY">>,
  #<Animal:0x0000557cb5ec4960 @species="Cockatoo", @nickname="Izet", @weight=3, @zoo=
  #<Zoo:0x0000557cb5ec7a70 @name="Bronx Zoo", @location="Bronx NY">>]
```
- [x] `Zoo#animal_species` should return an array of all the species (as strings) of the animals in the zoo. However, if you have two dogs, it should only return one "Dog" string (aka an **unique** array).
```ruby
home.animal_species
=> ["Dog", "Cat", "Cat-Dog"]
```
- [x] `Zoo#find_by_species` should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.
```ruby
home.find_by_species("Dog")
=> [#<Animal:0x0000562e73d3a480 @species="Dog", @nickname="Nelly", @weight=17, @zoo=#<Zoo:0x0000562e73d3a4f8 @name="Deljanin Family Zoo", @location="Queens, NY">>]
```
- [x] `Zoo#animal_nicknames` should return an array of all the nicknames of animals that a specific instance of a zoo has.
```ruby
bronx_zoo.animal_nicknames
=> ["Janje", "Birb", "Izet"]
```
- [x] `Zoo.find_by_location` should take in a location as an argument and return an array of all the zoos within that location.
```ruby
Zoo.find_by_location("Queens NY") # remove queens and the bx to target
=> => [#<Zoo:0x00005617a1989fb8 @name="Deljanin Family Zoo", @location="Queens NY">]
```

### Animal Class
- [x] An `animal` should be instantiated with the species (e.g. "Cat", "Dog", "Rat"), a numerical weight and a nickname. Keep in mind that the animal's species and nickname should not be able to change, but its weight can.
- [x] `Animal#nickname` should return the nickname of the animal.
```ruby
nelly.nickname
=> "Nelly"
```
- [x] `Animal#weight` should return the weight of the animal.
```ruby
nelly.weight
=> 17
```
- [x] `Animal#species` should return the species of the animal.
```ruby
nelly.species
=> "Dog"
```
- [x] `Animal.all` should return an array of all the animal instances.
```ruby
Animal.all
=> [#<Animal:0x00007fb0130dce68 @nickname="Nelly", @species="Dog", @weight=17>,
  #<Animal:0x00007fb0130dcdf0 @nickname="Mahlke", @species="Cat", @weight=12>,
  #<Animal:0x00007fb0130dcd78 @nickname="Sleepy", @species="Cat-Dog", @weight=14>,
  #<Animal:0x00007fb0130dcd00 @nickname="Koza", @species="Goat", @weight=250>,
  #<Animal:0x00007fb0130dcc88 @nickname="Janje", @species="Lamb", @weight=125>,
  #<Animal:0x00007fb0130dcc10 @nickname="Majmun", @species="Monkey", @weight=20>,
  #<Animal:0x00007fb0130dcb98 @nickname="Pferd", @species="Ostpreußisches Warmblut", @weight=1000>,
  #<Animal:0x00007fb0130dcb20 @nickname="Izet", @species="Cockatoo", @weight=3>]
```
- [x] `Animal#zoo` should return the zoo instance that the instance belongs to.
```ruby
nelly.zoo
# no method needed for this?
=> #<Zoo:0x0000562035e79900 @name="Deljanin Family Zoo", @location="Queens NY">
```
- [x] `Animal.find_by_species` should take in an animal's species as an argument and return an array of all the animals, which are of that species.
```ruby
Animal.find_by_species("Dog")
=> [#<Animal:0x00005649c626d8b8 @species="Dog", @nickname="Nelly", @weight=17, @zoo=#<Zoo:0x00005649c626d930 @name="Deljanin Family Zoo", @location="Queens NY">>]
# also try
Animal.find_by_species("Cat")
=> => [#<Animal:0x00005588a839d830 @species="Cat", @nickname="Mahlke", @weight=12, @zoo=#<Zoo:0x00005588a839d920 @name="Deljanin Family Zoo", @location="Queens NY">>, #<Animal:0x00005588a839d740 @species="Cat", @nickname="Kiki", @weight=6, @zoo=#<Zoo:0x00005588a839d920 @name="Deljanin Family Zoo", @location="Queens NY">>]
```

There are no `rspec` files, so it's up to you to test your code within the `run.rb` file.
