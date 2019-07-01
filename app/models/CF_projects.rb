class Project
  attr_accessor :title, :goal, :amount_remaining, :creator

  @@all = []

  def initialize(title, goal, creator)
    @title = title
    @goal = goal
    @creator = creator
    @amount_remaining = goal
    @@all << self
  end

  def self.all
    @@all
  end

  def self.no_pledges
  projects = Project.all.map{|project| project.title}
  pledges = Pledge.all.map{|pledge| pledge.project.title}

  projects.reject{|x| pledges.include? x}
  end

  def self.above_goal
    self.all.select{|project| project.amount_remaining < 0}.map{|p| p.title}
  end

  def self.most_backers
    tally =Hash.new(0)
    Pledge.all.each{|pledge| tally[pledge.project.title] +=1}
    most_backs = tally.max_by{|k,v| v}[1]
    tally.select{|k,v| v == most_backs}
  end


end
