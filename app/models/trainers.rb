class Trainer
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_clients
    tally = Hash.new(0)
    Contract.all.map{|contract| contract.trainer}.each do
      |trainer| tally[trainer] +=1
    end
    max_value = tally.values.max_by{|i| i}
    tally.keys.select{|key| tally[key] == max_value}
  end
end
