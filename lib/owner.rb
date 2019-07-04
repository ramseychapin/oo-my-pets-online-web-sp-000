class Owner

  attr_accessor :dogs, :cats
  attr_reader :species, :name
  @@all = []

  def initialize(species, name = "Victoria")
    @species = species
    @name = name
    @@all << self
    @cats = []
    @dogs = []
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
    self.cats << cat
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
    self.dogs << dog
  end

  def walk_dogs
    self.dogs.map { |dog| self.dog.mood = "happy" }
  end


  def feed_cats
    self.cats.map { |cat| cat.mood = "happy" }
  end

  def sell_pets

  end

  def list_pets
    "I have " + "#{@dogs.length} dog(s), " + "and " + "#{@cats.length} cat(s)."
  end

end
