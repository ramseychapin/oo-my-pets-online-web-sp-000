class Cat
  attr_accessor :mood
  attr_reader :name
  @@all = []

  def initialize(name, owner, mood = "nervous")
    @name = name
    @mood = mood
    @@all << self
    self.owner = owner
  end

  def self.all
    @@all
  end
end
