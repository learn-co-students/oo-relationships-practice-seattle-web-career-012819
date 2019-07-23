class Project
  attr_accessor :user, :goal

  @@all = []

  def initialize(user, goal)
    @user = user
    @goal = goal
    @@all << self
  end

  def self.all
    @@all
  end

  def pledges
    Pledge.all.select {|pledge| pledge.project == self}
  end

  def backers
    pledges.map {|pledge| pledge.user}.uniq
  end

  def self.no_pledges
    @@all.select {|project| project.pledges.size == 0}
  end

  def self.most_backers
    @@all.sort_by {|project| project.backers.size}.last
  end

  def totalpledged
    pledges.map {|pledge| pledge.amount}.inject(:+)
  end

  def self.above_goal
    @@all.select {|project| project.totalpledged.to_i >= project.goal}
  end

end
