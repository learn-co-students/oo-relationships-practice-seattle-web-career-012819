class User

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pledges
    Pledge.all.select {|pledge| pledge.user == self}
  end


  def self.multi_pledger
    @@all.select {|user| user.pledges.size > 1}
  end

  def self.highest_pledge
    Pledge.all.sort_by {|pledge| pledge.amount}.last.user
  end

  def self.project_creator
    @@all.select {|user| user.projects.size > 0}
  end

  def projects
    Project.all.select {|project| project.user == self}
  end

end
