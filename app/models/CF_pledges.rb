class Pledge
  attr_accessor :project, :user, :pledge_amount

  @@all = []

  def initialize(project, user, pledge_amount)
    @project = project
    @user = user
    @pledge_amount = pledge_amount
    project.amount_remaining -= pledge_amount
    @@all << self
  end

  def self.all
    @@all
  end
  
end
