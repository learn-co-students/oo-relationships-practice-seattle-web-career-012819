class Client
  attr_accessor :name, :trainer, :location
  @@all = []

  def initialize(name:, trainer: nil)
    @name = name
    @trainer = trainer
    @location = location
    @@all << self
  end

  def assign_trainer(trainer)
    self.trainer = trainer
  end

  def self.all
    @@all
  end


end
