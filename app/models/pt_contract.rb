class Contract

  attr_accessor :client, :trainer

  @@all = []

  def initialize(client, trainer)
    @client = client
    @trainer = trainer
    

    @@all << self
  end

  def self.all
    @@all
  end

end
