class Show

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all <<  self
  end

  def self.all
    @@all
  end

  def showcards
    ShowCard.all.select { |showcard| showcard.show == self }
  end

  def actors
    self.showcards.map { |showcard| showcard.actor }
  end

  def characters
    self.showcards.map { |showcard| showcard.character }
  end

   #on_the_big_screen
    #- should return TV shows that share the same name as a movie

  def self.on_the_big_screen
    show_names = @@all.map { |show| show.name }
    movie_names = Movie.all.map { |movie| movie.name }
    (show_names & movie_names)
  end

end
