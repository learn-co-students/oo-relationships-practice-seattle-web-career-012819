class User
  attr_accessor :name

  @@all = []

  def initialize(name)
    @user_name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.highest_pledge
    Pledge.all.max_by{|x| x.pledge_amount}.user
  end

  def self.multi_pledger
    user_array = Pledge.all.map{|x| x.user}
    tally = Hash.new(0)
    user_array.each{|user| tally[user] += 1}
    tally.select{|k,v| v > 1}
  end

  def self.project_creator
    Project.all.map{|project| project.creator}
  end

end
