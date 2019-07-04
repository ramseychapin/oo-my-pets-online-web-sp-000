class Dog
  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []

  def initialize(name, owner, mood = "nervous")
    @name = name
    @mood = mood
    @@all << self
    self.owner = owner
    owner.dogs << self
  end

  def self.all
    @@all
  end
end
